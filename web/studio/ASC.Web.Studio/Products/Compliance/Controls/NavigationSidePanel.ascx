<%@ Import Namespace="ASC.Web.Compliance.Resources" %>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavigationSidePanel.ascx.cs" Inherits="ASC.Web.Compliance.Controls.NavigationSidePanel" %>





<div class="page-menu">
    <ul class="menu-actions">
        <li id="menuCreateNewButton" class="menu-main-button without-separator middle" title="<%= ComplianceResource.NavigateTo %>">
            <span class="main-button-text"><%= ComplianceResource.NavigateTo %></span>
            <span class="white-combobox"></span>
        </li>
        <li id="menuOtherActionsButton" class="menu-gray-button" title="<%= ComplianceResource.MoreActions %>">
            <span class="btn_other-actions">...</span>
        </li>
    </ul>
    <style>
        li#menuOtherActionsButton, li#menuCreateNewButton
        {
            display: none !important;
        }

        li.only_admin 
        {
            display: none !important;
        }
    </style>


    <ul class="menu-list">
        <li class="menu-item  none-sub-list">
            <a class="menu-item-label outer-text text-overflow" href="Default.aspx" title="Home">
                <span class="menu-item-icon sample"></span>
                <span class="menu-item-label inner-text">Home</span>
            </a>
            <span id="feed-new" class="feed-new-count"></span>
        </li>
        <li class="menu-item  none-sub-list">
            <a class="menu-item-label outer-text text-overflow" href="UserControls.aspx" title="Compliance Report">
                <span class="menu-item-icon sample"></span>
                <span class="menu-item-label inner-text">Compliance Report</span>
            </a>
        </li>
        <li class="menu-item  none-sub-list<% if (CurrentPage == "FunctionalInputs") { %> active<% } %>">
            <a class="menu-item-label outer-text text-overflow" href="FunctionalInputs.aspx" title="Compliance List">
                <span class="menu-item-icon sample"></span>
                <span class="menu-item-label inner-text">Compliance List</span>
            </a>
            <span id="feed-new-cases-count" class="feed-new-count"></span>
        </li>

        <li class="menu-item  none-sub-list only_admin <% if (CurrentPage == "api") { %> active <% } %>">
            <a class="menu-item-label outer-text text-overflow" href="api.aspx" title="Compliance Creation">
                <span class="menu-item-icon sample"></span>
                <span class="menu-item-label inner-text">Compliance Creation</span>
            </a>
        </li>
        <li class="menu-item  none-sub-list only_admin <% if (CurrentPage == "help") { %> active <% } %>">
            <a class="menu-item-label outer-text text-overflow" href="help.aspx" title="User Tag">
                <span class="menu-item-icon sample"></span>
                <span class="menu-item-label inner-text">User Tag</span>
            </a>
        </li>
    </ul>
    
    <% if(!string.IsNullOrEmpty(ExceptionMessage)) { %>
    <div class="red-text"><%= ExceptionMessage %></div>
    <% } %>





    <script>
        $.get("/api/2.0/people/@self", function (data, status) {
            debugger;
            user_id = data['response'].id;
            is_admin = data['response'].isAdmin;
            if (is_admin == true) {
                $('li.only_admin').attr("style", "display: block !important");
                //$("li.only_admin").css({ "display":"block !important"});
            }
        });
    </script>
</div>


