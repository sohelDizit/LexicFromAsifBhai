<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" MasterPageFile="Masters/BasicTemplate.Master" Inherits="ASC.Web.Sample.Help" %>

<%@ MasterType TypeName="ASC.Web.Sample.Masters.BasicTemplate" %>

<asp:Content ID="CommonContainer" ContentPlaceHolderID="BTPageContent" runat="server">
    <link rel="stylesheet" href="/Products/Sample/App_Themes/default/css/style.less">
    <script type="text/javascript">
        function fnExcelReport() {
            var tab_text = "<table border='2px'><tr>";
            var textRange; var j = 0;
            tab = document.getElementById('MsoNormalTable'); // id of table

            for (j = 0; j < tab.rows.length; j++) {
                tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
                //tab_text=tab_text+"</tr>";
            }

            tab_text = tab_text + "</table>";
            tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
            tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
            tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

            var ua = window.navigator.userAgent;
            var msie = ua.indexOf("MSIE ");

            if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
            {
                txtArea1.document.open("txt/html", "replace");
                txtArea1.document.write(tab_text);
                txtArea1.document.close();
                txtArea1.focus();
                sa = txtArea1.document.execCommand("SaveAs", true, "Say Thanks to Sumit.xls");
            }
            else                 //other browser not tested on IE 11
                sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

            return (sa);
        }
    </script>
    <iframe id="txtArea1" style="display:none"></iframe>
            <div class="case case_none" style="cursor:pointer;width:100%; height:50px;">
                <button id="btnExport" onclick="fnExcelReport();"> EXPORT </button>
            </div>
<%--            <div class="case" id="msgNew" style="cursor:pointer;width:100%; height:50px;color: #856404;background-color: #fff3cd;border-color: #ffeeba;display:none;">
                
            </div>--%>


    <div id="case_container" >
        <div class="case" id="create_new" style="cursor:pointer;display:none" >
            <a href="/Products/Compliance/Help.aspx">
                <img alt="" class="create_new" src="/Products/Compliance/App_Themes/default/images/create_new.png" style="width: 200px;">
            </a>     
        </div>
        <div>
            
        </div>
    </div>
    
<table id="MsoNormalTable" border=1 cellspacing=0 cellpadding=0 width="100%" hidden="hidden">
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
   <td rowspan=2>
	<p class=MsoNormal><b><span>Not Applicable</span></b></p>
   
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
    
<style>
    .case_container {
        width: 100%;
        display: block;
        min-height: 500px;
    }

    .case 
    {
        width: 29%;
        height: 250px;
        border: 1px solid #eee;
        display: inline-block;
        margin-right: 11px;
        border-radius: 5px;
        margin-bottom: 30px;
        box-shadow: 1px 2px 3px 1px #eee;
        padding: 10px;
        float: left;
            position: relative;
    }

    .created_by, .created_time,.open_close,.pub_privet ,.score,.document_no
    {
        display: inline-block;
        padding: 5px;
        color: white;
        border-radius: 9px;
        font-weight: bolder;
        font-size: 10px;
        font-family: monospace;
        margin-right: 10px;

    }

    .pub_privet {
        background-color: deeppink;
    }

    .open_close {
        background-color: green;
    }

    .created_time {
        background-color: #116d9d;
    }
    .created_by {
        background-color: #ED1C24;
    }

    .title {
        font-size: 20px;
        text-align: center;
        margin: 15px 0;
        font-family: monospace;
    }
    .create_new {
        width: 200px;
        display: block;
        margin: auto;
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
    }

    .score {
        position: absolute;
        right: 15px;
        bottom: 10px;
        background-color: #692bae;
        font-size: 12px;
    }

    .document_no {
        position: absolute;
        bottom: 10px;
        left: 15px;
        background-color: #4d8912;
        font-size: 12px;
    }

</style>


    <script type="text/javascript">
        var user_id = ""
        var is_admin = false;


        $.get("/api/2.0/people/@self", function (data, status) {
            debugger;
            user_id = data['response'].id;
            is_admin = data['response'].isAdmin;
            if (is_admin == true) {
                $("#create_new").show();
            }
            else {
                get_notifi();
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
                    var htmltbl = "";
                    var case_container = $("#case_container");
                    var case_container_table = $("#MsoNormalTable");
                    $.each(response, function (index, value) {
                        if (is_admin == true || (value.userId == user_id && value.isClose != true)) {
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
                                    connectionError();
                                }
                            });

                            html += '<div class="case">'
                                + '<a href="/Products/Compliance/database.aspx?id=' + id + '">'
                                //< div class="created_by" > ' + createBy + '</div > '
                                + '<div class="created_time">' + created_time + '</div>'
                                //+ '<div class="pub_privet">' + isPrivate + '</div>'
                                + '<div class="open_close"' + closedBg + '>' + isClosed + '</div>'
                                + '<div class="title">' + title + '</div>'
                                + nAppli
                                //+ '<div class="score">' + '0%' + '</div>'
                                + '</a></div> ';
                            htmltbl += '<tr><td>' + id + '</td><td>' + title + '</td><td>' + discription + '</td><td>' + applicable + '</td><td></td><td></td><td>' + remarks + '</td></tr>';
                        }
                    });
                    debugger;
                    case_container.append(html);
                    case_container_table.append(htmltbl);
                },
                error: function () {
                    connectionError();
                }
            });
        };


        function get_notifi() {
            $.ajax({
                url: "/api/2.0/sample/NotifyComplitTime",
                type: "get",
                async: false,
                success: function (data) {
                    var response = data['response'];

                    $.each(response, function (index, value) {
                        $("#msgNew").show();
                        var date = new Date(value.completeTime);
                        var question = value.questions.name;
                        var text = "You have an deadline at " + date + " for " + question;
                        $("#msgNew").append(text);
                    });
                    debugger;
                },
                error: function () {
                    connectionError();
                }
            });
        };
    </script>
   

</asp:Content>
