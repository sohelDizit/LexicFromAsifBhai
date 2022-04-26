<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Styles.aspx.cs" MasterPageFile="Masters/BasicTemplate.Master" Inherits="ASC.Web.Sample.Styles" %>

<%@ MasterType TypeName="ASC.Web.Sample.Masters.BasicTemplate" %>

<asp:Content ID="CommonContainer" ContentPlaceHolderID="BTPageContent" runat="server">
    <div>
<style>
#MsoNormalTable table,#MsoNormalTable th,#MsoNormalTable td {
  border: 1px solid black !important;
  border-collapse: collapse !important;
}
#MsoNormalTable tr:nth-child(even) {
    background-color: #fff;
}
</style>
<div style="text-align: center;">
    <h5>The Competition Act, 2012</h5>
    <h5>(Act No. XXIII of 2012)</h5>
    <h5>[21 June, 2012/7Ashar, 1419]</h5>
    <h5>An Act to provide for the competition law</h5>
    <h5>In the context of gradual economic development of the country, it is expedient and necessary to
        make provisions to promote, ensure and sustain congenial atmosphere for the
        competition in trade, and to prevent, control and eradicate collusion, monopoly
        and oligopoly, combination or abuse of dominant position or activities adverse
        to the competition; [Therefore this law has been enacted]
        </h5>
</div>
    <h1>DATE</h1>
    <table id="MsoNormalTable" border=1 cellspacing=0 cellpadding=0 width="100%">
 <thead>
  <tr>
   <td rowspan=2>
   <p class=MsoNormal align=center><span class=SpellE><b><span>Sl</span></b></span><b><span> No.<o:p></o:p></span></b></p>
   </td>
   <td rowspan=2>
   <p class=MsoNormal align=center><b><span>Section No.<o:p></o:p></span></b></p>
   </td>
   <td rowspan=2>
   <p class=MsoNormal align=center><b><span></span></b></p>
   <p class=MsoNormal align=center><b><span>Relevant Provisions Law<o:p></o:p></span></b></p>
   </td>
   <td colspan=2>
   <p class=MsoNormal align=center><b><span>Compliance Status<o:p></o:p></span></b></p>
   </td>
   <td rowspan=2>
   <p class=MsoNormal><b></b></p>
   <p class=MsoNormal><b><span>Remarks</span></b></p>
   <p class=MsoNormal><b><span>(If any)</span></b></p>
   </td>
  </tr>
  <tr>
      <td>
        <p align=center><b><span>Complied<o:p></o:p></span></b></p>
      </td>
       <td>
        <p align=center><b><span>Not complied<o:p></o:p></span></b></p>
       </td>

  </tr>
 </thead>

</table>
    
</div>






    <script type="text/javascript">
        var user_id = ""
        var is_admin = false;

        $.get("/api/2.0/people/@self", function (data, status)
        {
            debugger;
            user_id = data['response'].id;
            is_admin = data['response'].isAdmin;
            if (is_admin == true)
            {
                $("#create_new").show();
            }


            get_and_set_user_questions();
        });




        function get_and_set_user_questions() {
            $.ajax({
                url: "/api/2.0/sample/GetAllUserQuestion",
                type: "get",
                async: false,
                success: function (data) {
                    var response = data['response'];
                    var html = "";
                    var case_container = $("#MsoNormalTable");
                    $.each(response, function (index, value) {
                        if (is_admin == true || (value.userId == user_id && value.isClose != true)) {
                            debugger;
                            var id = value.id;
                            var title = value.questions.name;
                            var discription = value.questions.discription;
                            var mask = value.questions.mask;
                            var notApplicable = value.questions.notApplicable;
                            var isClosed = "Closed";
                            var createBy = value.userName;
                            //var canEdit = value.canEdit;
                            var isPrivate = "Private";
                            var created_time = new Date(value.createOn).toDateString();

                            if (value.isClose != true) {
                                isClosed = 'Open';
                            }
                            //if (value.isPrivate == false)
                            //{
                            //    isPrivate = 'Public';
                            //}
                            html += "<tr>\n"+
                                     "  <td>" + id +"</td>\n"+
                                     "  <td>"+ title +"</td>\n"+
                                     "  <td>"+discription+"</td>\n"+
                                     "  <td></td>\n"+
                                     "  <td></td>\n"+
                                     "  <td></td>\n"+
                                     " </tr>";






                        }


                    });
                    debugger;
                    case_container.append(html);
                },
                error: function () {
                    connectionError();
                }
            });
        };
    </script>
   


</asp:Content>
