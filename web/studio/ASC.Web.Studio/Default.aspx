<%@ Page Language="C#" MasterPageFile="~/Masters/BaseTemplate.master" AutoEventWireup="true" EnableViewState="false" CodeBehind="Default.aspx.cs" Inherits="ASC.Web.Studio._Default" %>

<%@ MasterType TypeName="ASC.Web.Studio.Masters.BaseTemplate" %>
<%@ Import Namespace="ASC.Web.Core" %>
<%@ Import Namespace="ASC.Web.Studio.Core" %>
<%@ Import Namespace="ASC.Web.Studio.Utility" %>
<%@ Import Namespace="Resources" %>


<asp:Content ContentPlaceHolderID="PageContent" runat="server">
    <link href="/skins/reports/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="/skins/reports/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        .main-body-card {
            background-color: transparent !important;
            border: none !important;
            box-shadow: none !important;
        }
    </style>
    <div class="page-wrapper">
        <%--    <div class="default-list-products">
            <% foreach (var product in defaultListProducts) %>
            <% {
                   var productStartUrl = VirtualPathUtility.ToAbsolute(product.StartURL);
                   var productLabel = HttpUtility.HtmlEncode(product.Name);
                %>
                <a class="link header product" href="<%= productStartUrl %>">
                    <img alt="<%= productLabel %>" src="<%= product.GetLargeIconAbsoluteURL() %>" />
                    <span class="title">
                        <%= productLabel %>
                    </span>
                </a>
            <% } %>
            <% if (TenantExtra.EnableControlPanel)
               { %>
                <a class="link header product" href="<%= SetupInfo.ControlPanelUrl %>" target="_blank">
                    <img alt="<%= Resource.ControlPanelLabel %>" src="<%= ASC.Web.Core.Utility.Skins.WebImageSupplier.GetAbsoluteWebPath("icon-controlpanel.svg") %>" />
                    <span class="title">
                        <%= Resource.ControlPanelLabel %>
                    </span>
                </a>
            <% } %>
            <% foreach (var item in CustomNavigationItems) { %>
                <a class="link header product" href="<%= item.Url.HtmlEncode() %>" target="_blank">
                    <img alt="<%= item.Label.HtmlEncode() %>" src="<%= item.BigImg %>" />
                    <span class="title">
                        <%= item.Label.HtmlEncode() %>
                    </span>
                </a>
            <% } %>
            </div>--%>
        <div class="row">
            <div class="col-md-6 col-xl-6">
                <a class="link" href="/Products/Projects/Projects.aspx#sortBy=create_on&sortOrder=ascending">

                    <div class="card table-card">
                        <div class="row-table">
                            <div class="col-auto theme-bg text-white p-t-50 p-b-50">
                                <i class="feather icon-package f-30"></i>
                            </div>
                            <div class="col text-center">
                                <span class="text-uppercase d-block m-b-10">Total Projects</span>
                                <h3 class="f-w-300" id="total-projects"></h3>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-6 col-xl-6">
                <a class="link" href="/Products/Projects/Projects.aspx#sortBy=create_on&sortOrder=ascending">

                    <div class="card table-card">
                        <div class="row-table">
                            <div class="col-auto theme-bg2 text-white p-t-50 p-b-50">
                                <i class="feather icon-calendar f-30"></i>
                            </div>
                            <div class="col text-center">
                                <span class="text-uppercase d-block m-b-10">Upcoming Event</span>
                                <h3 class="f-w-300" id="event-count"></h3>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <!-- [ Main Content ] start -->
        <div class="row">


            <!-- [ project-task section ] start -->
            <div class="col-md-6 col-xl-4">
                <a class="link" href="/Products/Projects/Tasks.aspx">
                    <div class="card project-task">
                        <div class="card-block">
                            <div class="row align-items-center justify-content-center">
                                <div class="col">
                                    <h5 class="m-0"><i class="far fa-edit m-r-10"></i>Project Task</h5>
                                </div>
                                <div class="col-auto">
                                    <label class="label theme-bg text-white f-14 f-w-400 float-right" id="total-done">23% Done</label>
                                </div>
                            </div>
                            <h6 class="text-muted mt-4 mb-4">Complete Task :
                                <samp id="task-close"></samp>
                                /<samp id="task-count"></samp></h6>
                            <div class="progress">
                                <div class="progress-bar progress-c-theme" role="progressbar" style="width: 0%; height: 6px;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <%--                                            <h6 class="mt-3 mb-0 text-center text-muted">Project Team : 28 Persons</h6>--%>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-12 col-xl-4">
                <a class="link" href="/Products/Projects/Tasks.aspx#sortBy=deadline&sortOrder=ascending&status=closed">
                    <div class="card card-event">
                        <div class="card-block">
                            <div class="row align-items-center justify-content-center my-2">
                                <div class="col">
                                    <h5 class="m-0">Close Tasks</h5>
                                </div>
                                <div class="col-auto">
                                    <label class="label theme-bg2 text-white f-14 f-w-400 float-right" id="close-pers">34%</label>
                                </div>
                            </div>
                            <h2 class="mt-4 " id="close-cont">45</h2>
                            <i class="feather icon-check-circle text-c-purple f-50"></i>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-12 col-xl-4">
                <a class="link" href="/Products/Projects/Tasks.aspx#sortBy=deadline&sortOrder=ascending&status=open">
                    <div class="card card-event">
                        <div class="card-block">
                            <div class="row align-items-center justify-content-center my-2">
                                <div class="col">
                                    <h5 class="m-0">Open Tasks</h5>
                                </div>
                                <div class="col-auto">
                                    <label class="label theme-bg2 text-white f-14 f-w-400 float-right" id="open-pers">34%</label>
                                </div>
                            </div>
                            <h2 class="mt-4 " id="open-cont">45</h2>
                            <i class="feather icon-copy text-c-purple f-50"></i>
                        </div>
                    </div>
                </a>
            </div>
            <!-- [ project-task section ] end -->
            <div class="col-xl-4 col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Reply</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i>maximize</span><span style="display: none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i>collapse</span><span style="display: none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i>reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i>remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-block">
                        <div class="reply-price">
                            <h3 class="">2.43 h</h3>
                            <span class="text-uppercase">average time for first reply</span>
                        </div>
                        <div id="bar-chart1" class="ChartShadow BarChart barChart1" style="height: 270px;"></div>
                    </div>
                </div>
            </div>
            <!-- [ project-average section ] end -->

            <!-- [ statistic chart ] start -->
            <div class="col-xl-4 col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Project Statistics</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i>maximize</span><span style="display: none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i>collapse</span><span style="display: none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i>reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i>remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-block">
                        <div id="chart-percent" class="chart-percent" style="height: 245px;"></div>
                        <div class="row mb-2">
                            <div class="col-12">
                                <span class="mb-1 text-muted d-block" id="op"></span>
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar progress-c-green" role="progressbar" style="width: 35%;" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <span class="mb-1 text-muted d-block" id="pp"></span>
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar  progress-c-yellow" role="progressbar" style="width: 23%;" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="col">
                                <span class="mb-1 text-muted d-block" id="cp"></span>
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar progress-c-purple" role="progressbar" style="width: 14%;" aria-valuenow="14" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- [ statistic chart ] end -->

            <!-- [ user web-list ] start -->
            <div class="col-xl-4 col-md-12 m-b-30">
                <ul class="nav nav-tabs" id="myTab1" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="user-tab" data-toggle="tab" href="#user" role="tab">Today</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="designer-tab" data-toggle="tab" href="#designer" role="tab">This Week</a>
                    </li>
                </ul>
                <div class="tab-content User-Lists" id="myTabContent1">
                    <div class="tab-pane fade show active" id="user" role="tabpanel">
                    </div>
                    <div class="tab-pane fade" id="designer" role="tabpanel">
                    </div>
                </div>
            </div>
            <!-- [ user web-list ] end -->

            <!-- [ user Project list ] start -->


            <div class="col-md-12">



                <div class="row">

                    <div class="col-4">
                        <a class="link" href="/Products/Projects/Projects.aspx#sortBy=create_on&sortOrder=ascending&status=open">
                            <div class="card card-customer">
                                <div class="card-block">
                                    <div class="row align-items-center justify-content-center">
                                        <div class="col">
                                            <h2 class="mb-2 f-w-300" id="open-proj-total">0</h2>
                                            <h5 class="text-muted mb-0">Open Projects</h5>
                                        </div>
                                        <div class="col-auto">
                                            <i class="feather icon-play f-30 text-white theme-bg"></i>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-4">
                        <a class="link" href="/Products/Projects/Projects.aspx#sortBy=create_on&sortOrder=ascending&status=paused">
                            <div class="card card-customer">
                                <div class="card-block">
                                    <div class="row align-items-center justify-content-center">
                                        <div class="col">
                                            <h2 class="mb-2 f-w-300" id="pos-proj-total"></h2>
                                            <h5 class="text-muted mb-0">Paused Projects</h5>
                                        </div>
                                        <div class="col-auto">
                                            <i class="feather icon-pause f-30 text-white theme-bg2"></i>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-4">
                        <a class="link" href="/Products/Projects/Projects.aspx#sortBy=create_on&sortOrder=ascending&status=closed">

                            <div class="card card-customer">
                                <div class="card-block">
                                    <div class="row align-items-center justify-content-center">
                                        <div class="col">
                                            <h2 class="mb-2 f-w-300" id="closed-proj-total"></h2>
                                            <h5 class="text-muted mb-0">Closed Projects</h5>
                                        </div>
                                        <div class="col-auto">
                                            <i class="feather icon-check-square f-30 text-white theme-bg"></i>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="card user-list">
                    <div class="card-header">
                        <h5>User Project List</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i>maximize</span><span style="display: none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i>collapse</span><span style="display: none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i>reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i>remove</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="card-block pb-0">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>project</th>
                                        <th>Status</th>
                                </thead>
                                <tbody id="project-table-body">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [ user Project list ] end -->
        </div>
        <!-- [ Main Content ] end -->
        <div class="row report-div" hidden>
            <!-- [ sale-product ] start -->
            <div class="col-xl-4 col-md-6">
                <div class="card theme-bg">
                    <div class="card-block">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-12">
                                <img src="skins/lexic/assets/images/widget/shape6.png" alt="activity-user">
                            </div>
                            <div class="col-12">
                                <div class="h5 mb-0 font-weight-bold text-white-800 text-white" id="txtAllTotal"></div>
                                <div class="currencyLabel text-white" id="txtAllTotalm"></div>
                                <h5 class="text-white">AMOUNT IN DISPUTE</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6">
                <div class="card theme-bg2">
                    <div class="card-block">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-12">
                                <img src="skins/lexic/assets/images/widget/shape6.png" alt="activity-user">
                            </div>
                            <div class="col-12">
                                <div class="h5 mb-0 font-weight-bold text-white-800  text-white" id="txtMatTotalm"></div>
                                <div class="currencyLabel text-white" id="txtMatTotal"></div>
                                <h5 class="text-white">METERIAL LITIGATION</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-12">
                <div class="card theme-bg">
                    <div class="card-block">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-12">
                                <img src="skins/lexic/assets/images/widget/shape6.png" alt="activity-user">
                            </div>
                            <div class="col-12">
                                <div class="h5 mb-0 font-weight-bold text-white-800 text-white" id="txtContTotalm"></div>
                                <div class=" currencyLabel text-white" id="txtContTotal"></div>
                                <h5 class="text-white">CONTIGENT LIABILITIES</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [ sale-product ] end -->
            <!-- [ yearly summary chart ] start -->
            <div class="col-xl-12 col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Summary</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i>maximize</span><span style="display: none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i>collapse</span><span style="display: none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i>reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i>remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-block">
                        <!-- <div class="row pb-3">
                                                <div class="col-md-4 col-6 text-center m-b-15">
                                                    <h3 class="f-w-300">69088.1M</h3>
                                                    <span>AMOUNT IN DISPUTE</span>
                                                </div>
                                                <div class="col-md-4 col-6 text-center m-b-15">
                                                    <h3 class="f-w-300">1935.6M</h3>
                                                    <span>METERIAL LITIGATION</span>
                                                </div>
                                                <div class="col-md-4 col-12 text-center m-b-15">
                                                    <h3 class="f-w-300">468.9M</h3>
                                                    <span>CONTIGENT LIABILITIES</span>
                                                </div>
                                            </div>-->
                        <div class="chart-area">
                            <canvas id="myAreaChart"></canvas>
                        </div>
                        <div class="row">
                        </div>

                    </div>
                </div>
                <div class="card">
                    <div class="col-lg-12 mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Glossary</h6>
                            <br />
                            <p>
                                Probable: An entity must recognise a provision if, and only if: [IAS 37.14] a present obligation (legal or constructive) has arisen as a result of a past event (the obligating event), payment is probable ('more likely than not'), and. the amount can be estimated reliably.            
                            </p>
                            <p>
                                Possible: IAS 37 Provisions, Contingent Liabilities and Contingent Assets outlines the accounting for provisions (liabilities of uncertain timing or amount), together with contingent assets (possible assets) and contingent liabilities (possible obligations and present obligations that are not probable or not reliably measurable).
                            </p>
                            <p>
                                Possible means an event may or may not happen but is not probable, i.e. having a probability not exceeding 50 per cent. It therefore excludes events which are ‘more likely than not’ to happen.
                            </p>
                        </div>



                        <!-- Project Card Example -->
                        <div class="card shadow mb-4" style="display: none;">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Litigations by Type</h6>
                            </div>
                            <div id="litbytypeoverv" class="card-body">
                                <h4 class="small font-weight-bold">Customs and Excise <span class="float-right">20%</span></h4>
                                <div class="progress mb-4">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <h4 class="small font-weight-bold">VAT <span class="float-right">40%</span></h4>
                                <div class="progress mb-4">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <h4 class="small font-weight-bold">Income Tax <span class="float-right">60%</span></h4>
                                <div class="progress mb-4">
                                    <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <h4 class="small font-weight-bold">Writ Petition <span class="float-right">80%</span></h4>
                                <div class="progress mb-4">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <h4 class="small font-weight-bold">Criminal <span class="float-right">80%</span></h4>
                                <div class="progress mb-4">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <h4 class="small font-weight-bold">Intellectual Property Rights <span class="float-right">80%</span></h4>
                                <div class="progress mb-4">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <h4 class="small font-weight-bold">Environmental Directorate <span class="float-right">80%</span></h4>
                                <div class="progress mb-4">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <h4 class="small font-weight-bold">Others <span class="float-right">80%</span></h4>
                                <div class="progress">
                                    <!-- <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div> -->
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>



                    </div>

                </div>
            </div>
            <!-- [ yearly summary chart end ] -->
        </div>

    </div>






    <div id="GreetingBlock" class="<%= (7 <= ProductsCount && ProductsCount <= 10) ? "five-column-block" : "greating-block" %>" hidden>
        <div class="greating-modules-block">
            <% if (_showDocs != null)
                { %>
            <div class="docs-default-page clearFix">
                <a class="link docs-default-logo" href="<%= VirtualPathUtility.ToAbsolute(_showDocs.StartURL) %>">
                    <span class="inner">
                        <span class="title">
                            <%=_showDocs.Name %>
                        </span>
                        <span class="description">
                            <%= _showDocs.Description %>
                        </span>
                    </span>
                </a>
            </div>
            <% } %>

            <div class="default-list-products">
                <% foreach (var product in defaultListProducts) %>
                <% {
                        var productStartUrl = VirtualPathUtility.ToAbsolute(product.StartURL);
                        var productLabel = HttpUtility.HtmlEncode(product.Name);
                %>
                <a class="link header product" href="<%= productStartUrl %>">
                    <img alt="<%= productLabel %>" src="<%= product.GetLargeIconAbsoluteURL() %>" />
                    <span class="title">
                        <%= productLabel %>
                    </span>
                </a>
                <% } %>
                <% if (TenantExtra.EnableControlPanel)
                    { %>
                <a class="link header product" href="<%= SetupInfo.ControlPanelUrl %>" target="_blank">
                    <img alt="<%= Resource.ControlPanelLabel %>" src="<%= ASC.Web.Core.Utility.Skins.WebImageSupplier.GetAbsoluteWebPath("icon-controlpanel.svg") %>" />
                    <span class="title">
                        <%= Resource.ControlPanelLabel %>
                    </span>
                </a>
                <% } %>
                <% foreach (var item in CustomNavigationItems)
                    { %>
                <a class="link header product" href="<%= item.Url.HtmlEncode() %>" target="_blank">
                    <img alt="<%= item.Label.HtmlEncode() %>" src="<%= item.BigImg %>" />
                    <span class="title">
                        <%= item.Label.HtmlEncode() %>
                    </span>
                </a>
                <% } %>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script type="text/javascript">

        $.get("/api/2.0/project/task/@self", function (data, status) {
            var response = data['response'];
            var count = data['count'];
            $("#task-count").html(count);


            var open = 0;
            var close = 0;
            $.each(response, function (index, value) {
                //alert(value.status);
                if (value.status == 1) {
                    open++;
                }
                else if (value.status == 2) {
                    close++;
                }

            });
            percentage = (close / count) * 100;
            open_percentage = (open / count) * 100;
            $("#task-close").html(close);
            $("#close-cont").html(close);
            $("#close-pers").html(percentage + "%");
            $("#open-cont").html(open);
            $("#total-done").html(percentage + "%");
            $("#open-pers").html(open_percentage + "%");
            $(".progress-c-theme").attr("aria-valuenow", close);
            $(".progress-c-theme").attr("style", "width:" + percentage + "%;height:6px;");


            $.each(response, function (index, value) {
                var data = value;
                console.log('ser', data)
                for (item of data.responsibles) {
                    var user = item;
                    console.log('ser', user)
                    html = `
                        <div class="media friendlist-box align-items-center justify-content-center m-b-20">
                            <div class="m-r-10 photo-table">
                                <a href="#!">
                                    <img class="rounded-circle" style="width:40px;" src="${user.avatarSmall}" alt="activity-user">
                                </a>
                            </div>
                            <div class="media-body">
                                <h6 class="m-0 d-inline">${user.displayName}</h6>
                                <span class="float-right d-flex  align-items-center">
                                    <i class="fas fa-caret-up f-22 m-r-10 text-c-green"></i>
                                3784</span>
                            </div>
                        </div>
                    `;

                    $("#user").append(html);
                }

            })



        });

        $.get("/api/2.0/calendar/calendars/2008-04-10T06-30-00.000Z/2022-04-10T06-30-00.000Z", function (data, status) {
            var response = data['response'];
            $.each(response, function (index, value) {
                var events = value.events.length;
                if (events) {
                    $("#event-count").append(events);
                }
            });
        });


        $.get("/api/2.0/project", function (data, status) {
            debugger;
            var response = data['response'].sort().reverse();
            var total = data['count'];

            var open = 0;
            var close = 0;
            var posed = 0;
            $.each(response, function (index, value) {
                //total++;
                var status = "";
                if (value.status == 1) {
                    close++;
                    status = "Closed";
                }
                else if (value.status == 2) {
                    posed++;
                    status = "Paused";
                }
                else if (value.status == 0) {
                    open++;
                    status = "Open";
                }
                if (index < 5) {
                    html = '<tr><td><img class="rounded-circle" style="width:40px;" src="' + value.responsible.avatarSmall + '" alt="activity-user"></td><td><h6 class="mb-1">' + value.title + '</h6><p class="m-0">Responsible<span class="text-c-green"> <a href="#" target="_blank">' + value.responsible.displayName + '</a></span></p></td><td><h6 class="m-0">' + status + '</h6></td></tr>';
                    $("#project-table-body").append(html);
                }

            });


            $("#total-projects").html(total);
            $("#open-proj-total").html(open);
            $("#op").html(open);
            $("#pos-proj-total").html(posed);
            $("#pp").html(posed);
            $("#closed-proj-total").html(close);
            $("#cp").html(close);
            //$(".progress-c-theme").attr("aria-valuenow", close);
            $(".progress-c-green").attr("style", "width:" + (open / total) * 100 + "%;height:6px;");
            $(".progress-c-yellow").attr("style", "width:" + (posed / total) * 100 + "%;height:6px;");
            $(".progress-c-purple").attr("style", "width:" + (close / total) * 100 + "%;height:6px;");

            var token = sessionStorage.getItem("token");
            var form = new FormData();
            var settings = {
                "url": "/api/2.0/people/@self",
                "method": "GET",
                "timeout": 0,
                "headers": {
                    "Authorization": token,
                    "Content-Type": "application/json",
                    "Accept": "*/*"
                },
                "processData": false,
                "mimeType": "multipart/form-data",
                "contentType": false,
                "data": form
            };
            $.ajax(settings).done(function (response) {
                console.log("loadmydata" + response);
                sessionStorage.setItem("myprofile", response);
                var myprofileobj = jQuery.parseJSON(sessionStorage.getItem("myprofile"));
                console.log(myprofileobj.response);
                var dept = myprofileobj.response.department;
                console.log(myprofileobj.response.department);
                if (dept == "LEGAL, Report") {
                    debugger;
                    $(".report-div").hide();
                }
            });
        });
    </script>

    <% if (!string.IsNullOrEmpty(SetupInfo.UserVoiceURL))
        { %>
    <script type="text/javascript" src="<%= SetupInfo.UserVoiceURL %>"></script>
    <% } %>


    <script type="text/javascript">
        setTimeout(function () {
            //loadtoken();
            loaddata();
            //loaddataPay();
            //loaddataMat();
            //loadMatdata();
            //loadalldata();
            //loadPaydata();
            setTimeout(function () {
                //loadMatdata();
                //loadalldata();
                //loadPaydata();
                //$('.currencyLabel').formatCurrency({ colorize: true, region: 'bn-BD' });
            }, 3000);
        }, 300);
        function loadtoken() {
            var settings = {
                "url": "/api/2.0/authentication",
                "method": "POST",
                "timeout": 0,
                "headers": {
                    "Content-Type": "application/json"
                },
                "data": JSON.stringify({ "userName": "admin@ekt.ai", "password": "kt@iDvtp814" }),
            };

            $.ajax(settings).done(function (response) {
                //var myObj = JSON.parse(response);
                //sessionStorage.setItem("token", response.response.token);
                console.log(response.response.token);
                //loaddata();


            });
        }
        function loadmydata() {
            var token = sessionStorage.getItem("token");
            var form = new FormData();
            var settings = {
                "url": "/api/2.0/people/@self",
                "method": "GET",
                "timeout": 0,
                "headers": {
                    "Authorization": token,
                    "Content-Type": "application/json",
                    "Accept": "*/*"
                },
                "processData": false,
                "mimeType": "multipart/form-data",
                "contentType": false,
                "data": form
            };

            $.ajax(settings).done(function (response) {
                console.log("loadmydata" + response);
                sessionStorage.setItem("myprofile", response);
            });
        }
        function loaddata() {
            var token = sessionStorage.getItem("token");
            var form = new FormData();
            var settings = {
                "url": "/api/2.0/crm/opportunity/filter",
                "method": "GET",
                "timeout": 0,
                "headers": {
                    "Authorization": token,
                    "Content-Type": "application/json",
                    "Accept": "*/*"
                },
                "processData": false,
                "mimeType": "multipart/form-data",
                "contentType": false,
                "data": form
            };

            $.ajax(settings).done(function (response) {
                console.log(response);
                sessionStorage.setItem("allLiti", response);
                loadalldata();
                loaddataPay();
                loaddataMat();
            });



            //   var settingsAllLiti = {

            //     "url": "/api/2.0/crm/opportunity/filter",
            //     "method": "GET",
            //     "timeout": 0,
            //     "headers": {
            //       "Authorization": token,
            //       "Content-Type": "application/json; charset=utf-8",
            //       "User-Agent": "PostmanRuntime/7.22.0",
            //       "Accept": "*/*",
            //       "Cache-Control": "no-cache",
            //       "Postman-Token": "30c92dd3-13a7-4b64-9748-96cf54752d36",
            //       "Host": "lexic.robi.com.bd",
            //       "Accept-Encoding": "gzip, deflate, br",
            //       "Cookie": "asc_auth_key="+token,
            //       "Connection": "keep-alive"
            //     },
            //   };
            //   jq.ajax(settingsAllLiti).done(function (response) {
            //     sessionStorage.setItem("allLiti", JSON.stringify(response));
            //   console.log(response);
            // });

        }
        function loaddataPay() {
            var token = sessionStorage.getItem("token");
            var form = new FormData();
            var settings = {
                "url": "/api/2.0/crm/invoice/filter",
                "method": "GET",
                "timeout": 0,
                "headers": {
                    "Authorization": token,
                    "Content-Type": "application/json",
                    "Accept": "*/*"
                },
                "processData": false,
                "mimeType": "multipart/form-data",
                "contentType": false,
                "data": form
            };

            $.ajax(settings).done(function (response) {
                //console.log(response);
                sessionStorage.setItem("allPay", response);
                loadPaydata();
            });
            // var settingsAllpay = {
            //   "url": "/api/2.0/crm/invoice/filter",
            //   "method": "GET",
            //   "timeout": 0,
            //   "headers": {
            //     "Authorization": "DmuPMetmkPusldwnyHXicdsPAMopw93iBsG5ozjYShvL7rYxd7RZTFUE8Dwa7K7VKMTePJRWFDz2mJZKY4XH/c5xVUxliKeAGMrrllbcjmextA5ZK5pPFC+WM5WdYpZwTjDxF/OjCSvnEWS1wf2qhg==",
            //     "Content-Type": "application/json; charset=utf-8",
            //     "User-Agent": "PostmanRuntime/7.22.0",
            //     "Accept": "*/*",
            //     "Cache-Control": "no-cache",
            //     "Postman-Token": "30c92dd3-13a7-4b64-9748-96cf54752d36",
            //     "Host": "lexic.robi.com.bd",
            //     "Accept-Encoding": "gzip, deflate, br",
            //     "Cookie": "asc_auth_key=DmuPMetmkPusldwnyHXicdsPAMopw93iBsG5ozjYShvL7rYxd7RZTFUE8Dwa7K7VKMTePJRWFDz2mJZKY4XH/c5xVUxliKeAGMrrllbcjmextA5ZK5pPFC+WM5WdYpZwTjDxF/OjCSvnEWS1wf2qhg==",
            //     "Connection": "keep-alive"
            //   },
            // };
            // jq.ajax(settingsAllpay).done(function (response) {
            //   sessionStorage.setItem("allPay", JSON.stringify(response));
            ////console.log(response);
            // });

        }

        function loaddataMat() {
            var token = sessionStorage.getItem("token");
            var form = new FormData();
            var settings = {
                "url": "/api/2.0/crm/opportunity/filter?tags=Material Litigation",
                "method": "GET",
                "timeout": 0,
                "headers": {
                    "Authorization": token,
                    "Content-Type": "application/json",
                    "Accept": "*/*"
                },
                "processData": false,
                "mimeType": "multipart/form-data",
                "contentType": false,
                "data": form
            };

            $.ajax(settings).done(function (response) {
                //console.log(response);
                sessionStorage.setItem("allMat", response);
                loadMatdata();
            });
            // var settingsAllpay = {
            //   "url": "/api/2.0/crm/opportunity/filter?tags=Material Litigation",
            //   "method": "GET",
            //   "timeout": 0,
            //   "headers": {
            //     "Authorization": "DmuPMetmkPusldwnyHXicdsPAMopw93iBsG5ozjYShvL7rYxd7RZTFUE8Dwa7K7VKMTePJRWFDz2mJZKY4XH/c5xVUxliKeAGMrrllbcjmextA5ZK5pPFC+WM5WdYpZwTjDxF/OjCSvnEWS1wf2qhg==",
            //     "Content-Type": "application/json; charset=utf-8",
            //     "User-Agent": "PostmanRuntime/7.22.0",
            //     "Accept": "*/*",
            //     "Cache-Control": "no-cache",
            //     "Postman-Token": "30c92dd3-13a7-4b64-9748-96cf54752d36",
            //     "Host": "lexic.robi.com.bd",
            //     "Accept-Encoding": "gzip, deflate, br",
            //     "Cookie": "asc_auth_key=DmuPMetmkPusldwnyHXicdsPAMopw93iBsG5ozjYShvL7rYxd7RZTFUE8Dwa7K7VKMTePJRWFDz2mJZKY4XH/c5xVUxliKeAGMrrllbcjmextA5ZK5pPFC+WM5WdYpZwTjDxF/OjCSvnEWS1wf2qhg==",
            //     "Connection": "keep-alive"
            //   },
            // };
            // jq.ajax(settingsAllpay).done(function (response) {
            //   sessionStorage.setItem("allMat", JSON.stringify(response));
            // ////console.log(response);
            // });

        }

        // jq.ajax(settings).done(function (response) {
        //   //console.log(response);
        // });
        // $.ajax(settings).done(function (response) {
        //   //console.log(response);
        // });
        function loadMatdata() {
            var totalMatAmount = 0;
            var alldataobj = JSON.parse(sessionStorage.getItem("allMat"));
            console.log(alldataobj.response);
            $.each(alldataobj.response, function (i, val) {
                if (val.bidValue == "" || val.bidValue == undefined) {

                }
                else {
                    totalMatAmount += parseInt(val.bidValue);
                }
            });

            $('#txtMatTotal').html(totalMatAmount);
            $('#txtMatTotalm').html(nFormatter(totalMatAmount));
        }
        function loadalldata() {
            var getKeyByDinner = function (obj, dinner) {
                var returnKey = -1;

                $.each(obj, function (key, info) {
                    if (info.dinner == dinner) {
                        returnKey = key;
                        return false;
                    };
                });

                return returnKey;

            }
            var artyp = [], artyplbl = [], result = {}, typfresult = [];
            var totalContAmount = 28332001952.36;
            var totalMatAmount = 0;
            var alldataobj = jQuery.parseJSON(sessionStorage.getItem("allLiti"));
            ////console.log(alldataobj.response);
            $.each(alldataobj.response, function (i, val) {
                if (val.customFields[0]) {
                    artyp.push({
                        cnt: 1,
                        type: val.customFields[0].fieldValue,
                        amt: val.bidValue,
                    });
                    ////console.log(fatt);
                    var fatt = $.inArray(val.customFields[0].fieldValue, artyplbl);
                    //var fatt = getKeyByDinner(artyp, val.customFields[0]);
                    ////console.log(getKeyByDinner(artyp, val.customFields[0].fieldValue));
                    if (fatt != -1) {
                        // if(val.bidValue=="" || val.bidValue ==undefined){}else{
                        //   artyp.fatt.amt=parseInt(artyp[fatt][1])+parseInt(val.bidValue);
                        // }

                        // artyp[fatt][2]=parseInt(artyp[fatt][2])++;
                    }
                    else {
                        artyplbl.push(val.customFields[0].fieldValue);
                    }
                }

                if (val.bidValue == "" || val.bidValue == undefined) {

                }
                else {
                    totalMatAmount += parseInt(val.bidValue);
                    if (val.customFields[8]) {
                        if (val.customFields[8].fieldValue == "Possible") {
                            totalContAmount += parseInt(val.bidValue);
                        }

                    }
                }
            });
            $.each(artyp, function (i, val) {
                artyplbl.forEach(function (k) {
                    result[k] = result[k] || [];
                    if (val.type == k) {
                        result[k].push(val);
                    }
                });
            });
            //console.log(result);
            $.each(result, function (i, val) {
                var sum = 0, cnt = 0, pr = 0;
                $.each(val, function () { sum += parseFloat(this.amt) || 0; cnt++; });
                //pr = cnt*100; pr = pr / result.count;
                pr = Math.round(((cnt / jQuery.parseJSON(sessionStorage.getItem("allLiti")).count) * 100));
                typfresult.push({
                    type: val[0].type,
                    cnt: cnt,
                    amt: sum,
                    pr: pr,
                    rowdata: val
                });
            });
            ////console.log(result);
            //console.log(typfresult);
            sessionStorage.setItem("typfdata", JSON.stringify(typfresult));
            loadtypsumm();
            // $.each(artyp, function(key1, value1) {
            //   //console.log(key1)
            // });
            //sessionStorage.setItem("artyp", artyp);
            $('#txtAllTotal').html(nFormatter(totalMatAmount));
            $('#txtAllTotalm').html(totalMatAmount);
            $('#txtContTotal').html(totalContAmount);
            $('#txtContTotalm').html(nFormatter(totalContAmount));
        }
        function calTypeData(data) {
            for (var i = 0; i < data.lenth; i++) {
                //console.log(data[i]);
            }


        }
        function loadPaydata() {
            var totalMatAmount = 0;
            var alldataobj = jQuery.parseJSON(sessionStorage.getItem("allPay"));
            ////console.log(alldataobj.response);
            $.each(alldataobj.response, function (i, val) {
                if (val.cost == "" || val.cost == undefined) {

                }
                else {
                    totalMatAmount += parseInt(val.cost);
                }
            });

            $('#txtPayTotal').html(totalMatAmount);
        }
        function loadtypsumm() {
            var htdata = '';
            var alldataobj = jQuery.parseJSON(sessionStorage.getItem("typfdata"));
            ////console.log(alldataobj.response);
            $.each(alldataobj, function (i, val) {
                htdata += "<h4 class='small font-weight-bold'>" + val.type + " Total: <span class='currencyLabel'>" + val.amt + "</span> <span class='float-right'>" + val.pr + "%</span></h4>";
                htdata += "    <div class='progress mb-4'>";
                if (val.pr > 20) {
                    htdata += "      <div class='progress-bar bg-danger' role='progressbar' style='width: " + val.pr + "%' aria-valuenow='" + val.pr + "' aria-valuemin='0' aria-valuemax='100'></div>";
                }
                else if (val.pr > 15 || val.pr < 20) {
                    htdata += "      <div class='progress-bar bg-warning' role='progressbar' style='width: " + val.pr + "%' aria-valuenow='" + val.pr + "' aria-valuemin='0' aria-valuemax='100'></div>";
                }
                else {
                    htdata += "      <div class='progress-bar bg-info' role='progressbar' style='width: " + val.pr + "%' aria-valuenow='" + val.pr + "' aria-valuemin='0' aria-valuemax='100'></div>";
                }

                htdata += "   </div>";
            });

            $('#litbytypeoverv').html(htdata);
        }
        function nFormatter(num) {
            //if (num >= 1000000000) {
            //return (num / 1000000000).toFixed(1).replace(/\.0$/, '') + 'G';
            // }
            if (num >= 1000000) {
                return (num / 1000000).toFixed(1).replace(/\.0$/, '') + 'M';
            }
            if (num >= 1000) {
                return (num / 1000).toFixed(1).replace(/\.0$/, '') + 'K';
            }
            return num;
        }
    </script>


    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/amcharts.js"></script>
    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/gauge.js"></script>
    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/serial.js"></script>
    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/light.js"></script>
    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/pie.min.js"></script>
    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/ammap.min.js"></script>
    <%--    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/usaLow.js"></script>
    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/radar.js"></script>--%>
    <%--    <script type="text/javascript" src="skins/lexic/assets/plugins/amchart/js/worldLow.js"></script>--%>



    <!-- WaterBall js -->
    <%--    <script type="text/javascript" src="skins/lexic/assets/plugins/waterball/js/createWaterBall-jquery.js"></script>--%>


    <!-- dashboard-custom js -->
    <script type="text/javascript" src="skins/lexic/assets/js/pages/dashboard-project.js"></script>



    <!-- amchart js -->
    <%--        <script src="/skins/reports/vendor/jquery/jquery.min.js"></script>--%>
    <script src="/skins/reports/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="/skins/reports/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="/skins/reports/vendor/jquery-formatCurrency/jquery.formatCurrency-1.4.0.min.js"></script>
    <script type="text/javascript" src="/skins/reports/vendor/jquery-formatCurrency/i18n/jquery.formatCurrency.all.js"></script>
    <!-- <script type="text/javascript" src="/skins/reports/vendor/jquery-formatCurrency/i18n/jquery.formatCurrency.bn-BD.js"></script> -->
    <!-- Custom scripts for all pages-->
    <script src="/skins/reports/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/skins/reports/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/skins/reports/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="/skins/reports/js/sum.js"></script>

    <!-- Page level plugins -->
    <script src="/skins/reports/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <%--    <script src="/skins/reports/js/demo/chart-area-demo.js"></script>
    <script src="/skins/reports/js/demo/chart-pie-demo.js"></script> --%>
</asp:Content>
