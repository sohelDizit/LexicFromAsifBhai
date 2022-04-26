<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" MasterPageFile="Masters/BasicTemplate.Master" Inherits="ASC.Web.Sample.Help" %>

<%@ MasterType TypeName="ASC.Web.Sample.Masters.BasicTemplate" %>

<asp:Content ID="CommonContainer" ContentPlaceHolderID="BTPageContent" runat="server">


        <link rel="stylesheet" href="/Products/Sample/App_Themes/default/css/style.less">
            <div class="fild_container-main fISDPX fileds">
                <div class="title" style="font-size: 20px;text-align: center;margin: 15px 0;font-family: monospace;">Tag User</div>
                <div class="case_name">
                             <div class="case_title">
                                <select id="custom_user" class="custom_user">
                                    <option>Select User</option>
                                </select>


                <%--                 <input id="custom_name" type="text" class="custom_name">--%>
                             </div>           
                         </div>
                <div class="custom_holder">
                        <select id="allCustom">
                            <option>Select Your Frame</option>
                        </select>
                    </div>
            </div>    
    <div class="fild_container-main fISDPX fileds">
        <div class="title" style="font-size: 20px;text-align: center;margin: 15px 0;font-family: monospace;">Set User auto tag date </div>
        <div class="custom_holder  ">
            <input id="tagDay" name="tagDay"/>
        </div>
        <div class="custom_holder">
            <select id="tagDayType">
                <option>Select a Type</option>
                <option value="1">Days From Now</option>
                <option value="2">Date Of The Month</option>
            </select>
        </div>
    </div>
    <div class="fild_container"></div>
    <div class="panel">
        <button color="white" id="save_btn" font-size="0.875rem" type="button" class="kzldZA" style="float: right; ">Save and apply</button>
    </div>
    

    <style>
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
    select#allCustom, #tagDay, #tagDayType {
        width: 50%;
        margin: auto;
        display: block;
        font-size: 14px;
        height: 35px;
        border-radius: 5px;
    }

    select#custom_user {
        width: 98%;
        margin: auto;
        display: block;
        font-size: 14px;
        height: 35px;
        border-radius: 5px;
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
</style>



    <script type="text/javascript">
        var cus_field_drwn = $("#allCustom");
        var user_field_drwn = $("#custom_user");
        var tagDay_drwn = $("#tagDay");

        var response = [];
        $(document).ready(function () {
            $.get("/api/2.0/sample/GetAllQuestion", function (data, status) {
                response = data['response'];
                console.log(response);
                $.each(response, function (index, value) {
                    cus_field_drwn.append('<option fieldType="' + value.questionType + '" mask="' + value.mask + '" value="' + value.id + '">' + value.name + '</option>')

                });
            });




            $.get("/api/2.0/people", function (data, status) {
                $.each(data['response'], function (index, value) {
                    user_field_drwn.append('<option  value="' + value.id + '">' + value.firstName + " " + value.lastName + '</option>')
                });
            });




            $("#allCustom").change(function () {
                //$("#allCustom option:selected").attr('disabled', 'disabled');
                var selected_value = $(this).val();
                $.each(response, function (index, value) {
                    if (value.id == selected_value) {
                        var questionType = '<input class="hbnjWE customfield" custom_id="' + value.id + '"  id="custom_field_' + value.id + '" name="customField_' + value.id + '"  type="text" class="textEdit"  value="' + value.questionType + '">';
                        if (value.questionType == 2) {
                            var mask = value.mask;
                            mask = JSON.parse(mask);
                            questionType = '<Select class="hbnjWE customfield" custom_id="' + value.id + '" id="custom_field_' + value.id + '" name="customField_' + value.id + '">';
                            $.each(mask, function (index, value) {
                                questionType = questionType + '<option>' + mask[index] + '</option>';
                            })
                            questionType = questionType + '</select>';
                        }
                        else if (response[index].questionType == 3) {
                            questionType = '<input class="hbnjWE customfield" custom_id="' + value.id + '" id="custom_field_' + value.id + '" name="customField_' + value.id + '"  type="checkbox">';
                        }
                        else if (response[index].questionType == 4) {
                            questionType = "Heading";
                        }
                        else if (response[index].questionType == 5) {
                            questionType = '<input  custom_id="' + value.id + '" class="hbnjWE customfield" type="datetime-local" id="custom_field_' + value.id + '" name="customField_' + value.id + '" class="textEdit textEditCalendar hasDatepicker" value="" autocomplete="off" >';
                        }
                        var html = $("#hiddenField").html();

                        html = html.replace("##input", questionType);
                        html = html.replace("##Title", value.name);

                        $(".fild_container").append(html);
                    }
                });

                $("#allCustom option:selected").attr('disabled', 'disabled');


            })





            $("button#save_btn").click(function () {
                //var list = []
                //var dst = {};
                debugger;
                var user_id = $("select#custom_user").val();
                if (user_id == "") {
                    return;
                }
                var tag_day = $("input#tagDay").val();
                if (tag_day == "") {
                    tag_day = "";
                }
                var tag_DayType = $("#tagDayType").val();
                if (tag_DayType == "Select a Type") {
                    tag_DayType = "";
                }
                $(".customfield").each(function (index) {
                    var custom_id = $(this).attr("custom_id");
                    //dst[custom_id] = $(this).val();
                    debugger;
                    $.ajax(
                        {
                            url: "/api/2.0/sample/CreateUserQuestion",
                            type: "post",
                            data: { 'UserId': user_id, "QuestionId": custom_id, "tagDay": tag_day, "tagDayType": tag_DayType, "Answer": $(this).val() },
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
                //list.push(dst)
                //console.log(dst);



                //data =
                //{
                //    title: $(".custom_user").val(),
                //    isPrivate: false,
                //    customFieldList: []
                //}

                //$.ajax({
                //    url: "/api/2.0/crm/case",
                //    type: "POST",
                //    data: data,
                //    async: false,
                //    success: function (response)
                //    {
                //        debugger;
                //        console.log(response);
                //        $(".customfield").each(function (index)
                //        {
                //            var custom_id = $(this).attr("custom_id");
                //            var custom_value = $(this).val();
                //            debugger;
                //            var url = '/api/2.0/crm/Case/' + response.response.id + '/customfield/' + custom_id;
                //            $.ajax({
                //                url: url,
                //                type: "POST",
                //                data: { "fieldValue": custom_value },
                //                async: false,
                //                success: function (response)
                //                {
                //                    debugger;
                //                },
                //                error: function (jqXHR, textStatus, errorThrown)
                //                {
                //                    debugger;
                //                    console.log(jqXHR);
                //                    console.log(textStatus);
                //                    console.log(errorThrown);
                //                }
                //            });
                //        });
                //    },
                //    error: function (jqXHR, textStatus, errorThrown)
                //    {
                //        debugger;
                //        console.log(jqXHR);
                //        console.log(textStatus);
                //        console.log(errorThrown);
                //    }
                //});
            });
        });




        //$.get("/api/2.0/crm/Case/customfield/definitions", function (data, status)
            //{
            //    var response = data['response'];
            //    $.each(response, function (index, value)
            //    {               
            //        var fieldType = '<input class="customfield" custom_id="' + response[index].id +'"  id="custom_field_' + response[index].id + '" name="customField_' + response[index].id + '"  type="text" class="textEdit"  value="' + response[index].fieldValue + '">';
            //        if (response[index].fieldType == 2)
            //        {
            //            var mask = response[index].mask;
            //            mask=JSON.parse(mask);
            //            fieldType = '<Select class="customfield" custom_id="' + response[index].id+'" id="custom_field_' + response[index].id + '" name="customField_' + response[index].id + '">';
            //            $.each(mask, function (index, value)
            //            {
            //                fieldType = fieldType + '<option>' + mask[index] + '</option>';
            //            })
            //            fieldType = fieldType + '</select>';
            //        }
            //        else if (response[index].fieldType == 3)
            //        {
            //            fieldType = '<input class="customfield" custom_id="' + response[index].id +'" id="custom_field_' + response[index].id + '" name="customField_' + response[index].id + '"  type="checkbox">';
            //        }
            //        else if (response[index].fieldType == 4) {
            //            fieldType = "Heading";
            //        }
            //        else if (response[index].fieldType == 5) {
            //            fieldType = '<input  custom_id="' + response[index].id +'" class="customfield" type="text" id="custom_field_' + response[index].id + '" name="customField_' + response[index].id + '" class="textEdit textEditCalendar hasDatepicker" value="' + response[index].fieldValue + '" autocomplete="off" maxlength="10">';
            //        }
            //        $(".customTable").append('<tr><td>' + response[index].label + '</td><td><div class="ftype">' + fieldType + '</div></td></tr>')
            //    });
            //});




    </script>
    <div id="hiddenField">
        <div class="fileds " >
            <div class=" fISDPX">
                <div class="QuestionInnerContainer">
                    <div class=" ftreQv">
                        <div class=" isVlyc"><span class=" gQAyzg">##Title</span></div>
                        <button type="button" data-testid="paperclip-icon" class=" cQdRlC  cHytly">
                            <svg width="18" height="18" viewbox="0 0 14 14" focusable="false">
                        <path
                            d="M6.75 12.997C4.638 12.924 3 11.261 3 9.312V3.676c0-1.399 1.162-2.604 2.675-2.673C7.292.93 8.633 2.123 8.633 3.6v5.343c0 .852-.694 1.596-1.614 1.653-1.01.063-1.852-.678-1.852-1.596V3.6c0-.11.097-.2.216-.2h.434c.12 0 .216.09.216.2v5.365c0 .417.33.79.78.831.517.046.954-.328.954-.796V3.663c0-.957-.782-1.795-1.817-1.859-1.135-.07-2.083.763-2.083 1.796v5.719c0 1.506 1.25 2.803 2.88 2.878 1.742.079 3.186-1.206 3.186-2.797V3.6c0-.11.097-.2.217-.2h.433c.12 0 .217.09.217.2v5.8c0 2.031-1.832 3.675-4.05 3.597z"
                            fill="#707070"
                            fill-rule="nonzero"
                        ></path>
                    </svg>
                        </button>
                    </div>
                    ##input
                </div>
                <%--<div class="attachment-bar-styled__AttachmentContainer-gaVQyy dWYPHk" style="display:none">
                    <div class="sc-ifAKCX frEgiA transition-enter-done">
                        <div class="attachment-bar-styled__ItemGroup-kpzhlr cIVYnQ">
                            <button color="#707070" font-size="0.8rem" type="button" class="button__StyledButton-bftYPm iaOzFa" style="margin-top: 0.5rem;">
                                <svg width="16" height="16" viewbox="0 0 14 14" class="button_icon" focusable="false">
                            <g fill="#707070" fill-rule="nonzero"><path d="M1 1.5h12V3H1zM1 4.5h12V6H1zM1 7.5h12V9H1zM1 11h7.68v1.5H1z"></path></g>
                        </svg>
                                Note
                            </button>
                            <div class="attachment-bar__StyledInlineFileInput-eRVbbT jMXMfx inline-file-input__Container-evIJpU irMaic">
                                <button color="#707070" font-size="0.8rem" type="button" class="button__StyledButton-bftYPm iaOzFa" style="margin-top: 0.5rem;">
                                    <svg width="16" height="16" viewbox="0 0 12 14" class="button_icon" focusable="false">
                                <path
                                    d="M2.84478 8.03959V2.87573H2.0537C1.46894 2.87573 0.998047 3.35394 0.998047 3.93817V10.9198C0.998047 11.5048 1.46894 11.9778 2.0537 11.9778H9.03557C9.62006 11.9778 10.1001 11.5048 10.1001 10.9198V10.1572H4.96235C3.80119 10.1574 2.84478 9.20102 2.84478 8.03959Z"
                                    fill="#707070"
                                ></path>
                                <path
                                    d="M11.9444 0H4.96231C4.37781 0 3.90039 0.473502 3.90039 1.058V8.03987C3.90039 8.62515 4.37807 9.10205 4.96231 9.10205H11.9444C12.5287 9.10205 13.0024 8.62515 13.0024 8.03987V1.05826C13.0024 0.473241 12.5287 0 11.9444 0ZM11.8008 7.45354C11.7426 7.56115 11.6305 7.62487 11.5083 7.62487H5.52565C5.4204 7.62487 5.32142 7.57786 5.25874 7.49376C5.19606 7.40914 5.17699 7.30154 5.20729 7.20047L6.06314 4.36964C6.11955 4.18343 6.27678 4.04579 6.469 4.01419C6.66122 3.98285 6.85449 4.06381 6.96731 4.22234L8.164 5.9035C8.32514 6.12993 8.63724 6.18608 8.86628 6.0299L9.96816 5.28165C10.0815 5.2046 10.2207 5.17666 10.3547 5.20356C10.4892 5.2302 10.607 5.31012 10.6819 5.42503L11.7864 7.11533C11.8533 7.21797 11.8588 7.34646 11.8008 7.45354Z"
                                    fill="#707070"
                                ></path>
                            </svg>
                                    Media
                                </button>
                                <input type="file" accept="image/*,.pdf" tabindex="-1" multiple="" class="inline-file-input__HiddenFileInput-MOknw isTfEq" />
                            </div>
                            <button color="#707070" font-size="0.8rem" type="button" class="button__StyledButton-bftYPm iaOzFa" style="margin-top: 0.5rem;">
                                <svg width="16" height="16" viewbox="0 0 24 24" class="button_icon">
                            <g id="icons/nav/actions" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round">
                                <path
                                    d="M19.5272727,10.3952381 C19.6909091,11.0428571 19.7727273,11.7714286 19.7727273,12.5 C19.7727273,16.952381 16.0909091,20.5952381 11.5909091,20.5952381 C7.09090909,20.5952381 3.40909091,16.952381 3.40909091,12.5 C3.40909091,8.04761905 7.09090909,4.4047619 11.5909091,4.4047619 C13.1454545,4.4047619 14.6181818,4.80952381 15.9272727,5.61904762"
                                    id="Path"
                                    stroke="#707070"
                                    stroke-width="1.5"
                                ></path>
                                <polyline id="Path" stroke="#707070" stroke-width="1.5" points="8.31818182 10.8809524 11.5909091 14.1190476 20.5909091 5.21428571"></polyline>
                            </g>
                        </svg>
                                Action
                            </button>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>

    </div>

   























 <%--   <div>
        <h1>Help page</h1>

        <p>If you have any questions, visit the links below:</p>

        <ul class="help">
            <li>
                <a href="http://helpcenter.onlyoffice.com/" target="_blank" class="link underline">Help Center</a>
            </li>
            <li>
                <a href="http://cloud.onlyoffice.org/" target="_blank" class="link underline">SaaS Forum</a>
            </li>
            <li>
                <a href="http://dev.onlyoffice.org/" target="_blank" class="link underline">Server Forum</a>
            </li>
            <li>
                <a href="http://support.onlyoffice.com/" target="_blank" class="link underline">Support Contact Form</a>
            </li>
        </ul>
    </div>--%>
</asp:Content>
