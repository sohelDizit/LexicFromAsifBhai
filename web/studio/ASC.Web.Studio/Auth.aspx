<%@ Page Language="C#" MasterPageFile="~/Masters/BaseTemplate.master" AutoEventWireup="true" EnableViewState="false" CodeBehind="Auth.aspx.cs" Inherits="ASC.Web.Studio.Auth" %>
<%@ Import Namespace="ASC.Core.Billing" %>
<%@ Import Namespace="ASC.Web.Studio.Core" %>
<%@ MasterType TypeName="ASC.Web.Studio.Masters.BaseTemplate" %>
<%@ Import Namespace="ASC.Core" %>

<asp:Content ContentPlaceHolderID="PageContent" runat="server">

    <style>
        nav.pcoded-navbar, header, .paging-content {
            display: none;
        }
        main {
            margin-left:0px;
            padding-top: 0;
            padding-bottom: 0;
            
        }
        .pcoded-main-container {
            margin-left: 0px;
        }
        .pcoded-content {
            position: relative;
            display: block;
            padding: 0px !important;
            overflow: hidden;
        }
        .card .card-block, .card .card-body {
            padding: 0px !important;
            margin:0px !important;
        }
        .card{
            margin: 0px !important;
        }
    </style>
    <% if (CoreContext.Configuration.Standalone)
       { %>
    <input type="hidden" id="customerId" value="<%= HttpUtility.HtmlEncode(LicenseReader.CustomerId ?? "") %>" />
    <% } %>

    <% if (CoreContext.Configuration.Personal)
       { %>
    <asp:PlaceHolder runat="server" ID="AutorizeDocuments"/>
    <% }
       else
       { %>
            <div class="auth-form-page">
                <div id="GreetingBlock" class="authForm <%= withHelpBlock ? "" : "help-block-none" %>">
                    <%--header and logo--%>
                    <div class="inner_auth_form_page d-flex auth-wrapper">
                         <div class="auth-bg">
                            <span class="r"></span>
                            <span class="r s"></span>
                            <span class="r s"></span>
                            <span class="r"></span>
                        </div>
                        <div class="form_pages">
                            <div class="header">
                                <img class="logo" src="<%= LogoPath %>" alt="<%= TenantName.HtmlEncode() %>" />
                                <h1 class="header-base big blue-text"><%= TenantName.HtmlEncode() %></h1>
                            </div>
                            <asp:PlaceHolder runat="server" ID="AuthorizeHolder"/>
                            <div class="help-block-signin">
                                <asp:PlaceHolder runat="server" ID="CommunitationsHolder"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <% } %>
    <% if (!string.IsNullOrEmpty(SetupInfo.UserVoiceURL))
       { %>
    <script type="text/javascript" src="<%= SetupInfo.UserVoiceURL %>"></script>
    <% } %>
</asp:Content>

<%--<asp:Content ContentPlaceHolderID="FooterContent" runat="server">
    <% if (!CoreContext.Configuration.Personal)
       { %>
    <div class="footerAuth">
        <%= Resource.PoweredBy %>
        <a href="http://www.onlyoffice.com/" title="www.onlyoffice.com" class="link underline" target="_blank">www.onlyoffice.com</a>
    </div>
    <% } %>
</asp:Content>--%>
