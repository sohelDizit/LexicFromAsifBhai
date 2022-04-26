<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="Masters/BasicTemplate.Master" Inherits="ASC.Web.Sample.DefaultPage" %>


<%@ MasterType TypeName="ASC.Web.Sample.Masters.BasicTemplate" %>

<asp:Content ID="CommonContainer" ContentPlaceHolderID="BTPageContent" runat="server">
    <link rel="stylesheet" href="/Products/Sample/App_Themes/default/css/style.less">
    <div id="case_container" style="
    display: flex;
    justify-content: center;
">
        <div class="case" style="
    border: 1px solid #eee;
    display: inline-block;
    margin-right: 11px;
    border-radius: 5px;
    margin-bottom: 30px;
    box-shadow: 1px 2px 3px 1px #eee;
    padding: 10px;
    float: left;
    position: relative;width: 70%;    height: 500px;
">
            <div class="title" style="font-size: 20px;text-align: center;margin: 15px 0;font-family: monospace;">Compliance Status</div>
            <canvas id="myChart"></canvas>
        </div>
    </div>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
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


            get_and_set_user_questions();
        });




        function get_and_set_user_questions() {
            var htmltbl = 0;
            var htmltbl2 = 0;
            $.ajax({
                url: "/api/2.0/sample/GetAllUserQuestion",
                type: "get",
                async: false,
                success: function (data) {
                    var response = data['response'];
                    var case_container = $("#case_container");
                    var case_container_table = $("#MsoNormalTable");
                    $.each(response, function (index, value) {
                        if (is_admin == true || (value.userId == user_id && value.isClose != true)) {
                            debugger;
                            var id = value.id;
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
                                    if (ans == "Compliant") {
                                        htmltbl++;
                                    }
                                    else {
                                        htmltbl2++;
                                    }


                                },
                                error: function () {
                                }
                            });

                        }
                    });
                    debugger;
                    case_container.append(html);
                    case_container_table.append(htmltbl);
                },
                error: function () {
                }
            });
            var compliant = 100;
            var noncompliant = 0;
            var ctx = document.getElementById('myChart').getContext('2d');
            var chart = new Chart(ctx, {
                // The type of chart we want to create
                type: 'pie',

                // The data for our dataset
                data: {
                    labels: ['Compliant (100%)', 'Non Compliant'],
                    datasets: [{
                        label: 'My First dataset',
                        backgroundColor: [
                            '#466637',
                            '#dc3545',

                        ],
                        borderColor: '#3f4d67',
                        data: [compliant, noncompliant]
                    }]
                },

                // Configuration options go here
                options: {}
            });
        };


</script>

</asp:Content>
