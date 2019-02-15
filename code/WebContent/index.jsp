<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><s:text name="title"/></title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
	<!--PAGE LEVEL STYLES-->
    <link href="assets/css/pricing.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <script type="text/javascript">
    function langSelecter_onChanged() {
        document.langForm.submit();
    }
    </script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"><s:text name="title"/></a>
            </div>

            <div class="header-right">
            	<div class="col-md-9">
            	 <s:set name="SESSION_LOCALE" value="#session['WW_TRANS_I18N_LOCALE']"/>
            	 <s:bean id="locales" name="com.crm.util.Locales" />
            	 <form action="language!translate" name="langForm" >
            	 <s:text name="language"/>: 
            	 <s:select list="#locales.locales" listKey="value" listValue="key" 
            	 value="#SESSION_LOCALE == null ? locale : #SESSION_LOCALE"
            	  name="request_locale" id="langSelecter" 
            	  onchange="langSelecter_onChanged()" theme="simple"/>
            	  </form>
            	 </div>

                <a href="user!exit" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/user.png" class="img-thumbnail" />
                            <div class="inner-text">
                                <s:property value="#session.user.user_nickname"/>
                            <br />
								<small><s:property value="#session.user.user_role.role_name"/></small>
                            </div>
                        </div>

                    </li>


                    <li>
                        <a class="active-menu" href="index.jsp"><i class="fa fa-dashboard "></i><s:text name="index"/></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i><s:text name="saleManage"/> <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="saleManage/oppor!listAll"><i class="fa fa-toggle-on"></i><s:text name="saleOppor"/></a>
                            </li>
                            <li>
                                <a href="saleManage/oppor!plan"><i class="fa fa-bell "></i><s:text name="salePlan"/></a>
                            </li>                         
                        </ul>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-yelp "></i><s:text name="clientManage"/> <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="clientInfoManage/client!listAll"><i class="fa fa-coffee"></i><s:text name="clientInforManage"/></a>
                            </li>
                            <li>
                                <a href="clientLoseManage/client!listAll"><i class="fa fa-flash "></i><s:text name="clientLostManage"/></a>
                            </li>                 
                        </ul>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-bicycle "></i><s:text name="serviceManage"/><span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="serviceManage/service!loadAllToSerAdd"><i class="fa fa-desktop "></i><s:text name="serviceAdd"/></a>
                            </li>
                             <li>
                                <a href="serviceManage/service!loadAllToSerAssign"><i class="fa fa-code "></i><s:text name="serviceAssign"/></a>
                            </li>
							<li>
                                <a href="serviceManage/service!loadAllToServiceDeal"><i class="fa fa-code "></i><s:text name="serviceDeal"/></a>
                            </li>
							<li>
                                <a href="serviceManage/service!loadAllToServiceFeed"><i class="fa fa-code "></i><s:text name="serviceFeed"/></a>
                            </li>
							<li>
                                <a href="serviceManage/service!loadAllToServiceArchived"><i class="fa fa-code "></i><s:text name="serviceArchive"/></a>
                            </li>
                             
                           
                        </ul>
                    </li>
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i><s:text name="dataAnalysis"/><span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                            <li>
                                <a href="analysisManage/analysis!contribution"><i class="fa fa-desktop "></i><s:text name="clientContriAna"/></a>
                            </li>
                             <li>
                                <a href="analysisManage/analysis!composition?search_type=0"><i class="fa fa-code "></i><s:text name="clientCompoAna"/></a>
                            </li>
							<li>
                                <a href="analysisManage/analysis!service"><i class="fa fa-code "></i><s:text name="serAna"/></a>
                            </li>
                             <li>
                                <a href="analysisManage/analysis!lose"><i class="fa fa-code "></i><s:text name="clientLostAna"/></a>
                            </li>
                           
                        </ul>
                    </li>
					
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i><s:text name="basicData"/><span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="dictionManage/diction!list"><i class="fa fa-desktop "></i><s:text name="dataDicManagement"/></a>
                            </li>
                             <li>
                                <a href="data_inquiry.html"><i class="fa fa-code "></i><s:text name="proInforSearch"/></a>
                            </li>
							<li>
                                <a href="data_stock.html"><i class="fa fa-code "></i><s:text name="inventorySearch"/></a>
                            </li>
                             
                           
                        </ul>
                    </li>
					
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i><s:text name="authorityManagement"/><span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="authorityManage/user!listAll"><i class="fa fa-desktop "></i><s:text name="userManagement"/></a>
                            </li>
                             <li>
                                <a href="authorityManage/author!listAll"><i class="fa fa-code "></i><s:text name="authorityManagement"/></a>
                            </li>
							<li>
                                <a href="authorityManage/role!listAll"><i class="fa fa-code "></i><s:text name="roleManagement"/></a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">主页</h1>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="main-box mb-red">
                            <a href="#">
                                <i class="fa fa-bolt fa-5x"></i>
                                <h5>Zero Issues</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-dull">
                            <a href="#">
                                <i class="fa fa-plug fa-5x"></i>
                                <h5>40 Task In Check</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-pink">
                            <a href="#">
                                <i class="fa fa-dollar fa-5x"></i>
                                <h5>200K Pending</h5>
                            </a>
                        </div>
                    </div>

                </div>
                <!-- /. ROW  -->

                <div class="row">
    
   
                    <!--/.Chat Panel End-->
                </div>
  


                <!--/.Row-->
                <hr />
                <div class="row text-center pad-row">

                <div class="col-md-3">
                    <div class="panel normal-table panel-danger adjust-border-radius">
                        <div class="panel-heading adjust-border">
                            <h4>BASIC PLAN</h4>
                        </div>
                        <div class="panel-body">

                            <ul class="plan">
                                <li class="price"><strong>25</strong> <i class="fa fa-dollar"></i><small>/ month</small></li>
                                <li><i class="fa fa-paper-plane-o"></i><strong>1500 </strong>Emails Accounts</li>
                                <li><i class="fa fa-graduation-cap"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bolt"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bars"></i><strong>230 </strong>Support Queries </li>
                            </ul>
                        </div>
                        <div class="panel-footer">
                            <a href="#" class="btn btn-danger btn-block btn-lg adjust-border-radius">BUY NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel normal-table panel-primary adjust-border-radius">
                        <div class="panel-heading adjust-border">
                            <h4>MEDIUM PLAN</h4>
                        </div>
                        <div class="panel-body">

                            <ul class="plan">
                                <li class="price"><strong>45</strong> <i class="fa fa-dollar"></i><small>/ month</small></li>
                                <li><i class="fa fa-paper-plane-o"></i><strong>1500 </strong>Emails Accounts</li>
                                <li><i class="fa fa-graduation-cap"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bolt"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bars"></i><strong>230 </strong>Support Queries </li>
                            </ul>
                        </div>
                        <div class="panel-footer">
                            <a href="#" class="btn btn-primary btn-block btn-lg adjust-border-radius">BUY NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel normal-table panel-success adjust-border-radius">
                        <div class="panel-heading adjust-border">
                            <h4>ADVANCE PLAN</h4>
                        </div>
                        <div class="panel-body">

                            <ul class="plan">
                                <li class="price"><strong>95</strong> <i class="fa fa-dollar"></i><small>/ month</small></li>
                                <li><i class="fa fa-paper-plane-o"></i><strong>1500 </strong>Emails Accounts</li>
                                <li><i class="fa fa-graduation-cap"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bolt"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bars"></i><strong>230 </strong>Support Queries </li>
                            </ul>
                        </div>
                        <div class="panel-footer">
                            <a href="#" class="btn btn-success btn-block btn-lg adjust-border-radius">BUY NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel normal-table panel-warning adjust-border-radius">
                        <div class="panel-heading adjust-border">
                            <h4>ADVANCE PLAN</h4>
                        </div>
                        <div class="panel-body">

                            <ul class="plan">
                                <li class="price"><strong>195</strong> <i class="fa fa-dollar"></i><small>/ month</small></li>
                                <li><i class="fa fa-paper-plane-o"></i><strong>1500 </strong>Emails Accounts</li>
                                <li><i class="fa fa-graduation-cap"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bolt"></i><strong>5000 GB </strong>Cloud Space</li>
                                <li><i class="fa fa-bars"></i><strong>230 </strong>Support Queries </li>
                            </ul>
                        </div>
                        <div class="panel-footer">
                            <a href="#" class="btn btn-warning btn-block btn-lg adjust-border-radius">BUY NOW</a>
                        </div>
                    </div>
                </div>
            </div>
                <!--/.Row-->
                <hr />
                <div class="row" style="padding-bottom: 100px; `">
                    <div class="col-md-6">
                        <div id="comments-sec">
                            <h4><strong>Compose Support Ticket </strong></h4>
                            <hr />


                            <div class="form-group  ">
                                <label>Please Write a Subject Line</label>
                                <input type="text" class="form-control" required="required" placeholder="Enter Subject Of Ticket" />
                            </div>
                            <div class="form-group ">
                                <label>Please Enter Issue</label>
                                <textarea class="form-control" rows="8"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success">Compose &amp; Send Ticket</button>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-back noti-box">
                            <span class="icon-box bg-color-black">
                                <i class="fa fa-bicycle"></i>
                            </span>
                            <div class="text-box">
                                <p class="main-text">52 Important Issues to Fix </p>
                                <p>Please fix these issues to work smooth</p>
                                <p>Time Left: 30 mins</p>
                                <hr />
                                <p>
                                    <span class=" color-bottom-txt"><i class="fa fa-edit"></i>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                              Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                               Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn.
                             
                                    </span>


                                </p>
                                <hr />
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                               Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn.
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.ROW-->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->

    <div id="footer-sec">
        Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    


</body>
</html>
