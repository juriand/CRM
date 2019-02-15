<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- PAGE LEVEL STYLES -->
    <link href="assets/css/bootstrap-fileupload.min.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script language="javascript">
		function doLink(clientid){
		window.location.href = "clientManager/clientInfoManage/clientinfo_view.jsp?clientid=" + clientid;
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
                <a class="navbar-brand" href="index.html"><s:text name="title"/></a>
            </div>

            <div class="header-right">

              <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
                <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
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
                        <a href="index.jsp"><i class="fa fa-dashboard "></i><s:text name="index"/></a>
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
                         <ul class="nav nav-second-level  collapse in">
                            <li>
                                <a href="clientInfoManage/client!listAll"><i class="fa fa-coffee"></i><s:text name="clientInforManage"/></a>
                            </li>
                            <li>
                                <a  class="active-menu" href="clientLoseManage/client!listAll"><i class="fa fa-flash "></i><s:text name="clientLostManage"/></a>
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
                        <a  class="active-menu-top" href="#"><i class="fa fa-bicycle "></i><s:text name="dataAnalysis"/><span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="analysisManage/analysis!contribution"><i class="fa fa-desktop "></i><s:text name="clientContriAna"/></a>
                            </li>
                             <li>
                                <a href="analysisManage/analysis!composition"><i class="fa fa-code "></i><s:text name="clientCompoAna"/></a>
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
                                <a  href="authorityManage/role!listAll"><i class="fa fa-code "></i><s:text name="roleManagement"/></a>
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
                        <h1 class="page-head-line"><s:text name="clientLostManage"/></h1>
						<ol class="breadcrumb">
						<li><s:text name="clientManage"/></li>
                        <li><a href="clientLoseManage/client!listAll"><s:text name="clientLostManage"/></a></li>
						<li class="active"><s:text name="suspendLost"/></li>
                        </ol>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
            	<div class="col-xs-12">
                <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="clientLoseManage/client!postpone" method="post">
                                        <div class="form-group col-md-5">
                                            <label><s:text name="id"/></label>
                                            <input name="lose_id" class="form-control" type="text" value="${record.lose_id }" readonly>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label><s:text name="clientName"/></label>
                                            <input name="lose_client.client_name" class="form-control" type="text" value="${record.lose_client.client_name }" readonly>
                                        </div>
										<div class="form-group col-md-5">
                                            <label><s:text name="clientManager"/></label>
                                            <input name="lose_client.client_clientmanage.user_id" class="form-control" type="text" value="${ record.lose_client.client_clientmanage.user_id}" readonly>
                                        </div>
										<div class="form-group col-md-5">
                                            <label><s:text name="lastOrderDate"/></label>
                                            <input name="lose_lastorder_date" class="form-control" type="text" value="${ record.lose_lastorder_date}" readonly>
                                        </div>
                                        
                                        <s:if test="record.lose_measure != null">
										<div class="form-group col-md-10">
                                            <label><s:text name="suspensionMea"/></label><span style="color:red;">  *</span>
                                            <textarea name="lose_measure" class="form-control" rows="3" readonly>${record.lose_measure }</textarea>
                                        </div>
										<div class="form-group col-md-10">
                                            <label><s:text name="additionSuspensionMea"/></label><span style="color:red;">  *</span>
                                            <textarea name="addMeasure" class="form-control" rows="3" required="required"></textarea>
                                        </div>
                                        </s:if>
                                        <s:else>
                                        <div class="form-group col-md-10">
                                            <label><s:text name="suspensionMea"/></label><span style="color:red;">  *</span>
                                            <textarea name="lose_measure" class="form-control" rows="3">${record.lose_measure }</textarea>
                                        </div>
                                        </s:else>
                                        
                                        <div class="form-group col-md-10">
                                        <button type="submit" class="btn btn-danger"><s:text name="save"/></button>
										<button type="button" class="btn btn-info" onclick="window.location='clientLoseManage/client!listAll'"><s:text name="back"/></button>
                                        </div>
										
                             </form>
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
    <!-- PAGE LEVEL SCRIPTS -->
    <script src="assets/js/bootstrap-fileupload.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>
</html>
