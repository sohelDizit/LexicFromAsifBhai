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


using System.Runtime.Serialization;
using ASC.Api.Employee;
using ASC.Projects.Core.Domain.Reports;
using ASC.Specific;

namespace ASC.Api.Projects.Wrappers
{
    [DataContract(Name = "reportTemplate", Namespace = "")]
    public class ReportTemplateWrapper : ObjectWrapperFullBase
    {
        [DataMember]
        public bool AutoGenerated { get; set; }

        [DataMember]
        public string Cron { get; set; }

        [DataMember]
        public ReportType ReportType { get; set; }

        [DataMember]
        public string Filter { get; set; }

        private ReportTemplateWrapper()
        {
        }

        public ReportTemplateWrapper(ReportTemplate reportTemplate)
        {
            Id = reportTemplate.Id;
            Title = reportTemplate.Name;
            Created = (ApiDateTime)reportTemplate.CreateOn;
            CreatedBy = EmployeeWraper.Get(reportTemplate.CreateBy);
            AutoGenerated = reportTemplate.AutoGenerated;
            Cron = reportTemplate.Cron;
            ReportType = reportTemplate.ReportType;
            Filter = reportTemplate.Filter.ToUri();
        }


        public static ReportTemplateWrapper GetSample()
        {
            return new ReportTemplateWrapper
                {
                    Id = 1233,
                    Title = "Sample ReportTemplate",
                    Description = "Sample description",
                    Created = ApiDateTime.GetSample(),
                    CreatedBy = EmployeeWraper.GetSample(),
                };
        }
    }
}