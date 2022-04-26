/*
 *
 * (c) Copyright Ascensio System Limited 2010-2020
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/


using System;
using System.Collections.Generic;
using System.Data;
using ASC.Common.Data;
using ASC.Common.Data.Sql;
using ASC.Common.Data.Sql.Expressions;
using ASC.Core.Users;
using ASC.Core;
using System;
using ASC.Web.Studio.Core.Notify;
using ASC.Notify.Model;
using ASC.Notify.Recipients;
using System.Threading;


namespace ASC.Web.Sample.Classes
{
    public static class SampleDao
    {
        private const string DbId = "core";
        private const string Table = "sample_table";
        private const string ComplianceQuestionTable = "ComplianceQuestions";
        private const string UserAnswerTable = "ComplianceUserAnswer";


        private static bool _tableExist;
        private static DbManager GetDb()
        {
            return new DbManager(DbId);
        }


        public static void CheckTable()
        {
            if (_tableExist) return;

            _tableExist = CheckTableExist();

            if (_tableExist) return;

            CreateTable();

            _tableExist = true;
        }

        private static bool CheckTableExist()
        {
            using (var db = GetDb())
            {
                var query = string.Format(
                    "select count(*) from information_schema.tables where table_schema = '{0}' and table_name = '{1}' limit 1",
                    db.Connection.Database,
                    Table);

                var count = db.ExecuteScalar<int>(query);

                return count > 0;
            }
        }

        private static void CreateTable()
        {
            using (var db = GetDb())
            {
                var query = new SqlCreate.Table(Table, true)
                .AddColumn(new SqlCreate.Column("id", DbType.Int32).NotNull(true).Autoincrement(true).PrimaryKey(true))
                .AddColumn("value", DbType.String, 255, true);

                db.ExecuteNonQuery(query);
            }
        }


        public static SampleClass Create(string value)
        {
            var result = new SampleClass
            {
                Value = value
            };

            using (var db = GetDb())
            {
                var query = new SqlInsert(Table, true)
                    .InColumnValue("id", 0)
                    .InColumnValue("value", value)
                    .Identity(0, 0, true);

                result.Id = db.ExecuteScalar<int>(query);
            }

            return result;
        }

        public static SampleClass Read(int id)
        {
            using (var db = GetDb())
            {
                var query = new SqlQuery(Table)
                    .Select("id", "value")
                    .Where(Exp.Eq("id", id));

                var result = db.ExecuteList(query).ConvertAll(x => new SampleClass
                {
                    Id = Convert.ToInt32(x[0]),
                    Value = Convert.ToString(x[1])
                });

                return result.Count > 0 ? result[0] : null;
            }
        }

        public static List<SampleClass> Read()
        {
            using (var db = GetDb())
            {
                var query = new SqlQuery(Table)
                    .Select("id", "value");

                return db.ExecuteList(query).ConvertAll(x => new SampleClass
                {
                    Id = Convert.ToInt32(x[0]),
                    Value = Convert.ToString(x[1])
                });
            }
        }

        public static void Update(int id, string value)
        {
            using (var db = GetDb())
            {
                var existQuery = new SqlQuery(Table).SelectCount().Where(Exp.Eq("id", id));

                if (db.ExecuteScalar<int>(existQuery) == 0)
                    throw new Exception("item not found");

                var updateQuery = new SqlUpdate(Table)
                    .Set("value", value)
                    .Where(Exp.Eq("id", id));

                db.ExecuteNonQuery(updateQuery);
            }
        }

        public static void Delete(int id)
        {
            using (var db = GetDb())
            {
                var query = new SqlDelete(Table).Where("id", id);

                db.ExecuteNonQuery(query);
            }
        }



        public static ComplianceQuestions CreateQuestion(string name, int questionType, bool mandatory, bool? notApplicable, string Mask, string description)
        {
            var result = new ComplianceQuestions
            {
                Name = name,
                Mandatory = mandatory,
                NotApplicable = (bool)notApplicable,
                QuestionType = questionType,
                Mask = Mask,
                Discription = description
            };
            using (var db = GetDb())
            {
                var query = new SqlInsert(ComplianceQuestionTable, true)
                    .InColumnValue("id", 0)
                    .InColumnValue("Name", name)
                    .InColumnValue("Mandatory", mandatory)
                    .InColumnValue("NotApplicable", notApplicable)
                    .InColumnValue("QuestionType", questionType)
                    .InColumnValue("Mask", Mask)
                    .InColumnValue("Discription", description)
                    .Identity(0, 0, true);
                result.Id = db.ExecuteScalar<int>(query);
            }
            return result;
        }

        public static List<ComplianceQuestions> GetAllQuestion()
        {
            using (var db = GetDb())
            {
                var query = new SqlQuery(ComplianceQuestionTable)
                    .Select("id", "Name", "Mandatory", "QuestionType", "CreateOn", "Mask", "NotApplicable");

                return db.ExecuteList(query).ConvertAll(x => new ComplianceQuestions
                {
                    Id = Convert.ToInt32(x[0]),
                    Name = Convert.ToString(x[1]),
                    Mandatory = x[2] != DBNull.Value ? Convert.ToBoolean(x[2]) : false,

                    QuestionType = x[3] != DBNull.Value ? Convert.ToInt32(x[3]) : 0,
                    CreateOn = Convert.ToDateTime(x[4]),
                    Mask = x[5].ToString(),
                    NotApplicable = x[6] != DBNull.Value ? Convert.ToBoolean(x[2]) : false,
                });
            }
        }



        public static List<ComplianceUserAnswer> NotifyComplitTime()
        {

            using (var db = GetDb())
            {
                var mgday = DateTime.Now.AddDays(2);
                var query = new SqlQuery(UserAnswerTable);
                query = query.Select("id", "UserId", "QuestionId", "Answer", "CreateOn", "IsClose", "Remarks", "CompleteTime", "TagDay", "IsNotified")
                    .Where(!Exp.Eq("CompleteTime", null) & Exp.Eq("IsNotified", null));
                var result = db.ExecuteList(query).ConvertAll(x => new ComplianceUserAnswer
                {
                    Id = Convert.ToInt32(x[0]),
                    UserId = Convert.ToString(x[1]),
                    QuestionId = x[2] != DBNull.Value ? Convert.ToInt32(x[2]) : 0,
                    Answer = Convert.ToString(x[3]),
                    CreateOn = Convert.ToDateTime(x[4]),
                    UserName = GetUserNameFromUser(Convert.ToString(x[1])),
                    Questions = GetComplianceQuestions(Convert.ToInt32(x[2])),
                    IsClose = x[5] != DBNull.Value ? Convert.ToBoolean(x[5]) : false,
                    Remarks = Convert.ToString(x[6]),
                    CompleteTime = Convert.ToDateTime(x[7]),
                    TagDay = Convert.ToInt32(x[8]),
                    IsNotified = x[9] != DBNull.Value ? Convert.ToBoolean(x[9]) : false
                });
                foreach (var r in result)
                {
                    var CurrentUser = CoreContext.UserManager.GetUsers(new Guid(r.UserId));
                    //notify
                    //StudioNotifyService.Instance.SendRemiderMsg(CurrentUser, "msg");
                    UpdateUserAnswerAfterNotify(r.Id, true);
                }
                return result;
            }


        }

        public static List<ComplianceUserAnswer> TagUsersByDate()
        {

            using (var db = GetDb())
            {
                var query = new SqlQuery(UserAnswerTable);
                query = query.Select("id", "UserId", "QuestionId", "Answer", "CreateOn", "IsClose", "Remarks", "CompleteTime", "TagDay", "TagDayType", "IsNotified", "IsExpierd")
                     .Where(!Exp.Eq("TagDay", null) & !Exp.Eq("TagDayType", null) & Exp.Eq("IsExpierd", null));
                var result = db.ExecuteList(query).ConvertAll(x => new ComplianceUserAnswer
                {
                    Id = Convert.ToInt32(x[0]),
                    UserId = Convert.ToString(x[1]),
                    QuestionId = x[2] != DBNull.Value ? Convert.ToInt32(x[2]) : 0,
                    Answer = Convert.ToString(x[3]),
                    CreateOn = Convert.ToDateTime(x[4]),
                    UserName = GetUserNameFromUser(Convert.ToString(x[1])),
                    Questions = GetComplianceQuestions(Convert.ToInt32(x[2])),
                    IsClose = x[5] != DBNull.Value ? Convert.ToBoolean(x[5]) : false,
                    Remarks = Convert.ToString(x[6]),
                    CompleteTime = Convert.ToDateTime(x[7]),
                    TagDay = Convert.ToInt32(x[8]),
                    TagDayType = Convert.ToInt32(x[9]),
                    IsNotified = x[10] != DBNull.Value ? Convert.ToBoolean(x[10]) : false,
                    IsExpierd = x[11] != DBNull.Value ? Convert.ToBoolean(x[11]) : false
                });
                foreach (var r in result)
                {
                    if (r.TagDayType == 1)
                    {
                        //if(r.CreateOn.AddDays(Convert.ToDouble(r.TagDay)) == DateTime.Now){
                        CreateUserQuestion(r.UserId, r.QuestionId, "", "", null, r.TagDay, r.TagDayType);
                        UpdateUserAnswerAfterTag(r.Id, true);
                        //}

                    }
                    else if (r.TagDayType == 2)
                    {
                        //if(r.CreateOn.ToString("dd") == r.TagDay.ToString()){
                        CreateUserQuestion(r.UserId, r.QuestionId, "", "", null, r.TagDay, r.TagDayType);
                        UpdateUserAnswerAfterTag(r.Id, true);
                        //}
                    }

                }
                return result;
                //notify
            }

        }
        public static void UpdateUserAnswerAfterTag(int id, bool IsExpierd)
        {
            using (var db = GetDb())
            {
                var existQuery = new SqlQuery(UserAnswerTable).SelectCount().Where(Exp.Eq("id", id));
                if (db.ExecuteScalar<int>(existQuery) == 0)
                    throw new Exception("item not found");
                var updateQuery = new SqlUpdate(UserAnswerTable)
                    .Set("IsExpierd", IsExpierd);
                updateQuery = updateQuery.Where(Exp.Eq("id", id));
                db.ExecuteNonQuery(updateQuery);
            }
        }
        public static void UpdateUserAnswerAfterNotify(int id, bool IsNotified)
        {
            using (var db = GetDb())
            {
                var existQuery = new SqlQuery(UserAnswerTable).SelectCount().Where(Exp.Eq("id", id));
                if (db.ExecuteScalar<int>(existQuery) == 0)
                    throw new Exception("item not found");
                var updateQuery = new SqlUpdate(UserAnswerTable)
                    .Set("IsNotified", IsNotified);
                updateQuery = updateQuery.Where(Exp.Eq("id", id));
                db.ExecuteNonQuery(updateQuery);
            }
        }



        public static ComplianceUserAnswer CreateUserQuestion(string UserId, int QuestionId, string Answer, string remarks, DateTime? completeTime, int? tagDay, int? tagDayType)
        {
            var result = new ComplianceUserAnswer
            {
                UserId = UserId,
                QuestionId = QuestionId,
                Answer = Answer,
                CompleteTime = completeTime,
                TagDay = tagDay,
                TagDayType = tagDayType,
            };
            using (var db = GetDb())
            {
                var query = new SqlInsert(UserAnswerTable, true)
                    .InColumnValue("id", 0)
                    .InColumnValue("UserId", UserId)
                    .InColumnValue("QuestionId", QuestionId)
                    .InColumnValue("Answer", Answer)
                    .InColumnValue("CompleteTime", completeTime)
                    .InColumnValue("Remarks", remarks)
                    .InColumnValue("TagDay", tagDay)
                    .InColumnValue("TagDayType", tagDayType)
                    .Identity(0, 0, true);
                result.Id = db.ExecuteScalar<int>(query);
            }
            return result;
        }
        public static List<ComplianceUserAnswer> GetAllUserQuestion()
        {
            //var user = CoreContext.UserManager.GetUserByUserName(UserId);
            using (var db = GetDb())
            {
                var query = new SqlQuery(UserAnswerTable);
                query = query.Select("id", "UserId", "QuestionId", "Answer", "CreateOn", "IsClose", "Remarks", "CompleteTime", "TagDay", "TagDayType");
                //.Where(Exp.Eq("UserId", user.ID.ToString()));
                var result = db.ExecuteList(query).ConvertAll(x => new ComplianceUserAnswer
                {
                    Id = Convert.ToInt32(x[0]),
                    UserId = Convert.ToString(x[1]),
                    QuestionId = x[2] != DBNull.Value ? Convert.ToInt32(x[2]) : 0,
                    Answer = Convert.ToString(x[3]),
                    CreateOn = Convert.ToDateTime(x[4]),
                    UserName = GetUserNameFromUser(Convert.ToString(x[1])),
                    Questions = GetComplianceQuestions(Convert.ToInt32(x[2])),
                    IsClose = x[5] != DBNull.Value ? Convert.ToBoolean(x[5]) : false,
                    Remarks = Convert.ToString(x[6]),
                    CompleteTime = Convert.ToDateTime(x[7]),
                    TagDay = Convert.ToInt32(x[8]),
                    TagDayType = Convert.ToInt32(x[9]),
                });
                return result;



                //if (user.IsAdmin())
                //{
                //    query = query.Select("id", "UserId", "QuestionId", "Answer", "CreateOn");
                //    //.Where(Exp.Eq("UserId", UserId));
                //    var result = db.ExecuteList(query).ConvertAll(x => new ComplianceUserAnswer
                //    {
                //        Id = Convert.ToInt32(x[0]),
                //        UserId = Convert.ToString(x[1]),
                //        QuestionId = x[2] != DBNull.Value ? Convert.ToInt32(x[2]) : 0,
                //        Answer = Convert.ToString(x[3]),
                //        CreateOn = Convert.ToDateTime(x[4]),
                //        UserName = GetUserNameFromUser(Convert.ToString(x[1]))                       
                //    });
                //    return result;
                //}
                //else 
                //{
                //    query = query.Select("id", "UserId", "QuestionId", "Answer", "CreateOn")
                //                .Where(Exp.Eq("UserId", user.ID.ToString()));
                //    var result = db.ExecuteList(query).ConvertAll(x => new ComplianceUserAnswer
                //    {
                //        Id = Convert.ToInt32(x[0]),
                //        UserId = Convert.ToString(x[1]),
                //        QuestionId = x[2] != DBNull.Value ? Convert.ToInt32(x[2]) : 0,
                //        Answer = Convert.ToString(x[3]),
                //        CreateOn = Convert.ToDateTime(x[4]),
                //        UserName = user.UserName
                //    });
                //    return result;
                //}
            }
        }
        public static UserInfo GetUserById(string UserId)
        {
            return CoreContext.UserManager.GetUserByUserName(UserId);
        }
        public static string GetUserNameFromUser(string userId)
        {
            string userName = "";
            var user = CoreContext.UserManager.GetUserByUserName(userId);
            if (user != null)
            {
                return user.UserName;
            }
            return userName;
        }

        public static ComplianceQuestions GetComplianceQuestions(int id)
        {
            using (var db = GetDb())
            {
                var query = new SqlQuery(ComplianceQuestionTable)
                    .Select("id", "Name", "Mandatory", "QuestionType", "CreateOn", "Mask", "Discription", "NotApplicable")
                    .Where(Exp.Eq("id", id));

                var result = db.ExecuteList(query).ConvertAll(x => new ComplianceQuestions
                {
                    Id = Convert.ToInt32(x[0]),
                    Name = Convert.ToString(x[1]),
                    Mandatory = x[2] != DBNull.Value ? Convert.ToBoolean(x[2]) : false,
                    QuestionType = x[3] != DBNull.Value ? Convert.ToInt32(x[3]) : 0,
                    CreateOn = Convert.ToDateTime(x[4]),
                    Mask = x[5].ToString(),
                    Discription = x[6].ToString(),
                    NotApplicable = x[7] != DBNull.Value ? Convert.ToBoolean(x[7]) : false
                });
                return result.Count > 0 ? result[0] : null;
            }

        }



        public static ComplianceUserAnswer GetUserQuestionId(int id)
        {
            using (var db = GetDb())
            {
                var query = new SqlQuery(UserAnswerTable);
                query = query.Select("Id", "UserId", "QuestionId", "Answer", "CreateOn", "IsClose", "Remarks", "CompleteTime", "TagDay", "TagDayType")
                .Where(Exp.Eq("id", id));
                var result = db.ExecuteList(query).ConvertAll(x => new ComplianceUserAnswer
                {
                    Id = Convert.ToInt32(x[0]),
                    UserId = Convert.ToString(x[1]),
                    QuestionId = x[2] != DBNull.Value ? Convert.ToInt32(x[2]) : 0,
                    Answer = Convert.ToString(x[3]),
                    CreateOn = Convert.ToDateTime(x[4]),
                    UserName = GetUserNameFromUser(Convert.ToString(x[1])),
                    Questions = GetComplianceQuestions(Convert.ToInt32(x[2])),
                    IsClose = x[5] != DBNull.Value ? Convert.ToBoolean(x[5]) : false,
                    Remarks = Convert.ToString(x[6]),
                    CompleteTime = x[7] != DBNull.Value ? Convert.ToDateTime(x[7]) : (DateTime?)null,
                    TagDay = Convert.ToInt32(x[8]),
                    TagDayType = Convert.ToInt32(x[9]),
                });
                return result.Count > 0 ? result[0] : null;
            }
        }

        public static void UpdateUserAnswer(int id, string answer, string remarks, DateTime? completeTime, bool isClose = false)
        {
            using (var db = GetDb())
            {
                var existQuery = new SqlQuery(UserAnswerTable).SelectCount().Where(Exp.Eq("id", id));
                if (db.ExecuteScalar<int>(existQuery) == 0)
                    throw new Exception("item not found");

                var updateQuery = new SqlUpdate(UserAnswerTable)
                    .Set("Answer", answer)
                    .Set("IsClose", isClose)
                    .Set("Remarks", remarks);
                if (completeTime.HasValue)
                {
                    updateQuery = updateQuery.Set("CompleteTime", completeTime);
                }
                updateQuery = updateQuery.Where(Exp.Eq("id", id));
                db.ExecuteNonQuery(updateQuery);
            }
        }
    }
}