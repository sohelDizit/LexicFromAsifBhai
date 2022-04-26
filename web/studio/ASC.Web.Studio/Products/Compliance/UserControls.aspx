<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserControls.aspx.cs" MasterPageFile="Masters/BasicTemplate.Master" Inherits="ASC.Web.Sample.UserControls" %>

<%@ MasterType TypeName="ASC.Web.Sample.Masters.BasicTemplate" %>

<asp:Content ID="CommonContainer" ContentPlaceHolderID="BTPageContent" runat="server">
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<div class="title" style="font-size: 20px;text-align: center;margin: 15px 0;font-family: monospace;">Compliance Report</div>
<table id="MsoNormalTable" class="display dataTable no-footer" role="grid" aria-describedby="MsoNormalTable_info" style="width: 975px;">
    <thead>
<tr role="row"><td class="sorting_asc" tabindex="0" aria-controls="MsoNormalTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="
   Sl No.
   : activate to sort column descending" style="width: 25px;">
   <p class="MsoNormal" align="center"><span class="SpellE"><b><span>Sl</span></b></span><b><span> No.<o:p></o:p></span></b></p>
   </td><td class="sorting" tabindex="0" aria-controls="MsoNormalTable" rowspan="1" colspan="1" aria-label="
   Section No.
   : activate to sort column ascending" style="width: 73px;">
   <p class="MsoNormal" align="center"><b><span>Section No.<o:p></o:p></span></b></p>
   </td><td class="sorting" tabindex="0" aria-controls="MsoNormalTable" rowspan="1" colspan="1" aria-label="
   
   Relevant Provisions Law
   : activate to sort column ascending" style="width: 424px;">
   <p class="MsoNormal" align="center"><b><span></span></b></p>
   <p class="MsoNormal" align="center"><b><span>Relevant Provisions Law<o:p></o:p></span></b></p>
   </td><td class="sorting" tabindex="0" aria-controls="MsoNormalTable" rowspan="1" colspan="1" aria-label="
	Not Applicable
   
   : activate to sort column ascending" style="width: 74px;">
	<p class="MsoNormal"><b><span>Not Applicable</span></b></p>
   
   </td><td class="sorting" tabindex="0" aria-controls="MsoNormalTable" rowspan="1" colspan="1" aria-label="
   Compliance Status
   : activate to sort column ascending" style="width: 85px;">
   <p class="MsoNormal" align="center"><b><span>Compliance Status<o:p></o:p></span></b></p>
   </td><td class="sorting" tabindex="0" aria-controls="MsoNormalTable" rowspan="1" colspan="1" aria-label="
   
   Remarks
   (If any)
   : activate to sort column ascending" style="width: 66px;">
   <p class="MsoNormal"><b></b></p>
   <p class="MsoNormal"><b><span>Remarks</span></b></p>
   <p class="MsoNormal"><b><span>(If any)</span></b></p>
   </td></tr>
    </thead>
    <tbody id="databody"></tbody>
</table>
    <script>
        $(document).ready(function () {
            $('#MsoNormalTable').DataTable({
            });
        });
        $.ajax({
            url: "/api/2.0/sample/GetAllUserQuestion",
            type: "get",
            async: false,
            success: function (data) {
                var response = data['response'];
                var htmltbl = "";
                var sl = 1;
                var case_container_table = $("#databody");
                $.each(response, function (index, value) {
                    debugger;
                    var id = value.id;

                    var title = value.questions.name;
                    var isClosed = "Closed";
                    var closedBg = "style='background-color: red;'";
                    var createBy = value.userName;
                    var isPrivate = "Private";
                    var created_time = new Date(value.createOn).toDateString();
                    var discription = value.questions.discription;
                    var notApplicable = value.questions.notApplicable;
                    var applicable = "Yes";

                    if (value.isClose != true) {
                        isClosed = 'Open';
                        closedBg = "";
                    }
                    var nAppli = "";
                    if (notApplicable) {
                        applicable = "No";
                        nAppli = '<div class="document_no" style="background-color: red;">Not Applicable</div>';
                    }
                    var remark = "";
                    var completeTime = "";
                    var mask = "";
                    var ans = "";
                    $.ajax({
                        url: "/api/2.0/sample/GetUserQuestionId?id=" + id,
                        type: "get",
                        async: false,
                        success: function (data) {
                            response = data['response'];
                            remarks = response.remarks;
                            completeTime = new Date(response.completeTime).toLocaleDateString()
                            ans = response.answer;
                        },
                        error: function () {
                        }
                    });

                    htmltbl += '<tr><td>' + sl + '</td><td>' + title + '</td><td>' + discription + '</td><td>' + applicable + '</td><td>' + ans + '</td><td>' + remarks + '</td></tr>';
                    sl++;
                });
                debugger;
                case_container_table.append(htmltbl);
            },
            error: function () {
            }
        });
    </script>
</asp:Content>
