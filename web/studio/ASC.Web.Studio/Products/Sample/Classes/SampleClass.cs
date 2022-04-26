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

namespace ASC.Web.Sample.Classes
{
    public class SampleClass
    {
        public int Id { get; set; }
        public string Value { get; set; }
    }
    public class ComplianceQuestions
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int QuestionType { get; set; }
        public bool Mandatory { get; set; }
        public bool NotApplicable { get; set; }
        public string Mask { get; set; }
        public string Discription { get; set; }
        public DateTime CreateOn { get; set; }
    }


    public class ComplianceUserAnswer
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public int QuestionId { get; set; }
        public ComplianceQuestions Questions { get; set; }
        public string Answer { get; set; }
        public DateTime CreateOn { get; set; }
        public string UserName { get; set; }
        public bool IsClose { get; set; }
        public string Remarks { get; set; }
        public DateTime? CompleteTime { get; set; }
        public int? TagDay { get; set; }
        public int? TagDayType { get; set; }

        public bool IsExpierd { get; set; }
        public bool IsNotified { get; set; }
    }
}