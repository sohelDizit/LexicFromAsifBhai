<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Database.aspx.cs" MasterPageFile="Masters/BasicTemplate.Master" Inherits="ASC.Web.Sample.Database" %>

<%@ MasterType TypeName="ASC.Web.Sample.Masters.BasicTemplate" %>

<asp:Content ID="CommonContainer" ContentPlaceHolderID="BTPageContent" runat="server">


    <div class="fild_container">
        <div class="fileds ">
            <div class=" fISDPX">
                <div class="QuestionInnerContainer">
                    <div class="ftreQv">
                        <div class="isVlyc">
                            <div id="questionName" class="gQAyzg"></div>
                            <div id="questionDescriptions" class="gQAyzg"></div>
                        </div>

                        <button type="button" data-testid="paperclip-icon" class=" cQdRlC  cHytly">
                            <svg width="18" height="18" viewBox="0 0 14 14" focusable="false">
                                <path d="M6.75 12.997C4.638 12.924 3 11.261 3 9.312V3.676c0-1.399 1.162-2.604 2.675-2.673C7.292.93 8.633 2.123 8.633 3.6v5.343c0 .852-.694 1.596-1.614 1.653-1.01.063-1.852-.678-1.852-1.596V3.6c0-.11.097-.2.216-.2h.434c.12 0 .216.09.216.2v5.365c0 .417.33.79.78.831.517.046.954-.328.954-.796V3.663c0-.957-.782-1.795-1.817-1.859-1.135-.07-2.083.763-2.083 1.796v5.719c0 1.506 1.25 2.803 2.88 2.878 1.742.079 3.186-1.206 3.186-2.797V3.6c0-.11.097-.2.217-.2h.433c.12 0 .217.09.217.2v5.8c0 2.031-1.832 3.675-4.05 3.597z" fill="#707070" fill-rule="nonzero"></path>
                            </svg>
                        </button>
                </div>   
                    
                            <div class="template-table-styled__NameColumn-eBrdwF xIjpZ" style="margin-top:15px;margin-bottom:15px">
                            <div class="template-item-styled__DragHandlePlaceholder-iptyvE dzbpnJ"></div>
                            <span class="mandatory-annotation__MandatoryAnnotation-bZHell cNaSwL" style="padding-left: 0.3rem;"></span>
                            <div data-anchor="question-item-label" tabindex="-1" class="template-item-styled__TextareaWrapper-dcWTgK fmhWZw" style="height:100px">
                                <div class="selection-mask-styled__Anchor-eSxwyE selection-mask-styled__LeftAnchor-gFcpxY cBkyAT"></div>
                                <div class="selection-mask-styled__Border-iaeYTc selection-mask-styled__HorizontalBorder-gVMBcz eYmpZa"></div>
                                <div class="selection-mask-styled__Border-iaeYTc selection-mask-styled__HorizontalBorder-gVMBcz selection-mask-styled__BottomBorder-jxCEYk foznfr"></div>
                                <div class="selection-mask-styled__Anchor-eSxwyE selection-mask-styled__RightAnchor-hSZNZp krNgJI"></div>
                                    <div class="selection-mask-styled__Background-cUwgzq gvoYEZ"><grammarly-extension style="position: absolute; top: 0px; left: 0px; pointer-events: none;" class="_1KJtL"></grammarly-extension><grammarly-extension style="position: absolute; top: 0px; left: 0px; pointer-events: none;" class="_1KJtL"></grammarly-extension>
                                        <textarea rows="4" cols="50" id="remarks" style="height: 100px;" spellcheck="false"></textarea></div>
                                    <div style="display: flex; align-items: center;">
                                        <div itemtype="question" tabindex="0" class="template-item-styled__LabelDisplay-UgAqo ktsnOT"><span class="template-item-styled__Placeholder-QwmwY iUEnuH"></span></div>
                                        <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo" style="z-index: 1;">
                                        <button type="button" class="icon-button__StyledButton-dEvHnb bMrlJq">
                                            <svg viewBox="0 0 24 24" width="24" height="24" class="template-item-styled__StyledCheckSvg-iEZZgC fbhGge" focusable="false">
                                                <path fill="#707070" fill-rule="nonzero" d="M8.364 16.075L3.59 11.687 2 13.149 8.364 19 22 6.463 20.41 5z"></path>
                                            </svg>
                                        </button>
                                        </div>
                                        <div class="sc-media-query__NoAboveTablet-dJeBeU gHrpYo" style="z-index: 1;"></div>
                                    </div>
                                </div>
                            </div>
            </div>
			<input custom_id="4" class="hbnjWE customfield" type="date" id="custom_date" name="custom_date" value="" autocomplete="off" hidden>
        </div>
    </div>
    <div class="panel">
        <button color="white" id="save_btn" font-size="0.875rem" type="button" class="kzldZA" style="float: right;     margin-left: 10px;">Save and apply</button>
        <button color="white" id="save_and_close" font-size="0.875rem" type="button" class="kzldZA" style="float: right; ">Save and Close</button>
    </div>

    <script type="text/javascript">

        var response = null;
        $.urlParam = function (name) {
            var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (results == null) {
                return null;
            }
            return decodeURI(results[1]) || 0;
        }


        $.ajax(
            {
                url: "/api/2.0/sample/GetUserQuestionId?id=" + $.urlParam('id'),
                type: "get",
                async: false,
                success: function (data) {
                    response = data['response'];
                    var question = response.questions;
                    console.log(data)
                    $("div#questionName").html(question.name);
                    debugger;
                    $("div#questionDescriptions").html(question.discription);
                    if (response.remarks != null) {
                        $("textarea#remarks").val(response.remarks);
                    }
                    if (response.completeTime != undefined && response.completeTime != null)
                    {
                        //$("input#custom_date").value = (new Date(response.completeTime).toLocaleDateString())
                        var date = new Date(response.completeTime);
                        //var fulldate = date.getDay() + "/" + date.getMonth() + "/" + date.getYear()

                        var currentDate = date.toISOString().slice(0, 10);
                        document.getElementById('custom_date').value = currentDate;
                    }

                    if (question.notApplicable == true)
                    {
                        $(".template-table-styled__NameColumn-eBrdwF.xIjpZ,.customfield,button#save_and_close,button#save_btn").hide();
                        document.getElementById('custom_field_5').style.display = "none";
                    }



                    var ans = response.answer;
                    var questionType = '<input class="hbnjWE customfield" custom_id="' + question.id + '"  id="custom_field_' + question.id + '" name="customField_' + question.id + '"  type="text" class="textEdit"  value="' + ans + '">';
                    if (question.questionType == 2) {
                        var mask = question.mask;
                        mask = JSON.parse(mask);
                        questionType = '<Select  class="hbnjWE customfield" custom_id="' + question.id + '" id="custom_field_' + question.id + '" name="customField_' + question.id + '">';
                        $.each(mask, function (index, question) {
                            if (mask[index] == ans) {
                                questionType = questionType + '<option selected="selected">' + mask[index] + '</option>';
                            }
                            else {
                                questionType = questionType + '<option>' + mask[index] + '</option>';
                            }
                        })
                        questionType = questionType + '</select>';
                    }
                    else if (question.questionType == 3) {
                        questionType = '<input class="hbnjWE customfield" custom_id="' + question.id + '" id="custom_field_' + question.id + '" name="customField_' + question.id + '"  type="checkbox">';
                    }
                    else if (question.questionType == 4) {
                        questionType = "Heading";
                    }
                    else if (question.questionType == 5) {
                        debugger;
                        questionType = '<input  custom_id="' + question.id + '" class="hbnjWE customfield" type="datetime-local" id="custom_field_' + question.id + '" name="customField_' + question.id + '" class="textEdit textEditCalendar hasDatepicker" value="' + ans + '" autocomplete="off" >';
                    }
                    $(".QuestionInnerContainer").append(questionType);
                },
                error: function () {
                    connectionError();
                }
            });
        $("button#save_and_close").click(function () {
            $.ajax(
                {
                    url: "/api/2.0/sample/UpdateUserAnswer",
                    type: "PUT",
                    data: { 'id': response.id, "answer": $(".customfield").val(), "isClose": true, "remarks": $("textarea#remarks").val(), "completeTime": $("#custom_date").val() },
                    success: function (response) {
                        window.location.href = "/Products/Compliance/FunctionalInputs.aspx";
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        debugger;
                        console.log(jqXHR);
                        console.log(textStatus);
                        console.log(errorThrown);
                    }
                });
        })


        $("button#save_btn").click(function () {
            debugger;
            var cDate = $("#custom_date").val();
            var data = { 'id': response.id, "answer": $(".customfield").val(), "isClose": false, "remarks": $("textarea#remarks").val(), "completeTime": cDate };

            if (cDate== "") {
               data = { 'id': response.id, "answer": $(".customfield").val(), "isClose": false, "remarks": $("textarea#remarks").val() };
            }
             
            $.ajax(
                {
                    url: "/api/2.0/sample/UpdateUserAnswer",
                    type: "PUT",
                    data: data,
                    success: function (response) {
                        window.location.href = "/Products/Compliance/FunctionalInputs.aspx";
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        debugger;
                        console.log(jqXHR);
                        console.log(textStatus);
                        console.log(errorThrown);
                    }
                });
        });





        $(document).ready(function ()
        {
            if ($("select.customfield option:selected").text() == "Non-Compliant") 
            {
                $('#custom_date').show();
            }
            else {
                $('#custom_date').hide();
            }
        });
        $('select.customfield').on('change', function ()
        {
            if (this.value == "Non-Compliant") {
                $('#custom_date').show();
            }
            else
            {
                $('#custom_date').hide();
            }
        });











    </script>
   
<style>


        div#questionDescriptions {
            border-radius: 5px;
            border: 1px solid #eee;
            padding: 5px 10px 5px 10px;
            margin-top: 10px;
            background-color: lightgoldenrodyellow;
        }
        textarea#remarks {
            padding: 10px;
        }

        input, textarea, button,div,span {
            font-family: "Roboto", sans-serif;
        }
        .customfield {
            padding: 5px;
            border-radius: 5px;
            min-width: 250px;
            height: 50px;
            border: 1px solid #200000;
        }
        /*button#save_btn {
            width: 100px;
            height: 100px;
            border-radius: 100%;
            background-color: yellow;
            color: black;
            border: none;
            font-weight: 700;
            margin: auto;
            display: block;
            margin-top: 10px;
            box-shadow: 1px 2px 2px 2px #eee;
            cursor:pointer;
        }*/
        button#save_btn:hover {
            box-shadow: 1px 2px 3px 4px #eee;
        }

    #custom_user {
        width: 98%;
        border: 2px solid #d9cbcb;
    }

    /*.case_title {
        display: inline-block;
        width: 75%;
    }*/

    .bQGrva {
        background-color: rgb(250, 250, 250);
        color: rgb(66, 66, 66);
        display: flex;
        flex: 1 0 auto;
        flex-direction: column;
        word-break: break-word;
        overflow-wrap: break-word;
        min-height: 100%;
    }
    .cQAcoJ {
        padding-bottom: 10rem;
        background-color: rgb(250, 250, 250);
        max-width: 48rem;
        margin: auto;
        white-space: pre-wrap;
    }

    .fISDPX {
        margin-bottom: 0.5rem;
        border-top: 1px solid rgb(224, 224, 224);
        border-bottom: 1px solid rgb(224, 224, 224);
        transition: opacity 0.3s ease 0s;
        position: relative;
        background: white;
        padding: 1rem 0px;
    }
    .fISDPX {
        border-radius: 0.3rem;
        border-left: 1px solid rgb(224, 224, 224);
        border-right: 1px solid rgb(224, 224, 224);
    }
    .fISDPX::before {
        content: "";
        transition: all 0.3s ease 0s;
        position: absolute;
        height: calc(100% - 0.5rem);
        top: 0.25rem;
        left: -0.05rem;
    }

    .fISDPX::before {
        height: 100%;
        top: 0px;
        border-top-left-radius: 0.2rem;
        border-bottom-left-radius: 0.2rem;
    }
    .fISDPX::before {
        border-left: 0px solid rgb(220, 0, 37);
    }

    .fISDPX > .QuestionInnerContainer {
        padding: 0rem 2.5rem;
    }
    .dWYPHk {
        width: 100%;
    }
    .cIVYnQ {
        padding: 0px 2rem;
    }

    .iaOzFa {
        margin: 0px;
        padding: 0.5rem 0.8rem;
        background-color: transparent;
        border: none;
        border-radius: 0.2rem;
        color: rgb(112, 112, 112);
        font-size: 0.8rem;
        cursor: pointer;
        opacity: 1;
        font-weight: 500;
        outline: 0px;
        text-align: center;
        text-overflow: ellipsis;
        transition: all 200ms ease 0s;
        user-select: none;
        word-break: normal;
        display: inline-flex;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;
    }

    .iaOzFa > .button_icon {
        margin-left: 0px;
        margin-right: 0.5rem;
    }
    .irMaic {
        position: relative;
        display: inline-block;
    }

    .isTfEq {
        position: absolute;
        top: 0px;
        left: 0px;
        right: 0px;
        height: 100%;
        width: 100%;
        z-index: 1;
        opacity: 0;
        cursor: pointer;
        text-indent: -999px;
    }
    .ftreQv {
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
        padding-bottom: 0.5rem;
        position: relative;
    }
    .isVlyc {
        font-family: Roboto, sans-serif;
        font-size: 1rem;
        color: rgb(33, 33, 33);
        line-height: 1.5rem;
        display: block;
        width: 100%;
        font-weight: 500;
    }
    .hbnjWE {
        font-size: 1rem;
        font-family: Roboto, sans-serif;
        line-height: 1.5rem;
        width: inherit;
        padding: 0.5em 1em;
        border-radius: 0.3rem;
        border: 1px solid rgb(205, 205, 205);
        width:80%;
    }

    .cQdRlC {
        flex-shrink: 0;
        position: relative;
        top: -0.25rem;
    }
    .jCPIyv {
        flex-shrink: 0;
        position: relative;
        top: -0.25rem;
    }
    .cHytly {
        outline: 0px;
        user-select: none;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        background: transparent;
        border: none;
        padding: 0px;
        border-radius: 50%;
        height: 2rem;
        width: 2rem;
        flex-shrink: 0;
        cursor: pointer;
    }

    .fild_container {
        margin-top: 30px;
    }
    .fileds {
        margin: 20px 0;
        width: 80%;
        margin: auto;
        box-shadow: 3px 2px 3px 1px #eee;
        border-radius: 5px;
    }
    #hiddenField 
    {        
        display:none;
    }

    .custom_holder {
        display: block;
        width: 100%;
        margin-top: 20px;
    }
    select#allCustom {
        width: 50%;
        margin: auto;
        display: block;
        font-size: 14px;
        height: 35px;
        border-radius: 5px;
        box-shadow: 0px 1px 2px 1px #e78a8a;
    }

    select#custom_user {
        width: 98%;
        margin: auto;
        display: block;
        font-size: 14px;
        height: 35px;
        border-radius: 5px;
        box-shadow: 0px 1px 2px 1px #e78a8a;
    }


    .case_name {
        width: 51%;
        margin: auto;
        display: block;
    }
    .kzldZA {
    margin: 0px;
    padding: 0.75rem 1.25rem;
    background-color: rgb(0, 110, 213);
    border: none;
    border-radius: 0.25rem;
    color: white;
    font-size: 0.875rem;
    cursor: pointer;
    opacity: 1;
    font-weight: 500;
    outline: 0px;
    text-align: center;
    text-overflow: ellipsis;
    transition: all 200ms ease 0s;
    user-select: none;
    word-break: normal;
    display: inline-flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
}
.panel {
    width: 90%;
    min-height: 50px;
    margin-top: 30px;
}

div#questionName {
    border: 1px solid #eee;
    padding: 5px 10px 5px 10px;
    border-radius: 5px;
    display: inline-block;
    background-color: antiquewhite;
}
</style>



<%--    <div>
        <h1>How to use database</h1>
        
        <ol>
            <li>
                <p>Create a sample table in the database</p>
<pre><code>CREATE TABLE IF NOT EXISTS `sample_table` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `value` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;</code></pre>
                <p class="top">or add this code to the <span class="bg">..build\sql\onlyoffice.sql</span> script and run it.</p>
            </li>
            <li>
                <p>Create a data class</p>
<pre><code>public class SampleClass
{
    public int Id { get; set; }
    public string Value { get; set; }
}</code></pre>
            </li>
            <li>
                <p>Create a DAO class with the CRUD methods</p>
<pre><code>public static class SampleDao
{
    private const string DbId = "core";
    private const string Table = "sample_table";

    private static DbManager GetDb()
    {
        return new DbManager(DbId);
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
                    
            result.Id = db.ExecuteScalar&lt;int&gt;(query);
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

    public static List&lt;SampleClass&gt; Read()
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

            if (db.ExecuteScalar&lt;int&gt;(existQuery) == 0)
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
}</code></pre>
            </li>
            <li>
                <p class="none">Build the project</p>
            </li>
        </ol>
    </div>--%>

</asp:Content>
