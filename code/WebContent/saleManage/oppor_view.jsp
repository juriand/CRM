<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd"); %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-sc ale=1.0" />
    <title><s:text name="title"/></title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    
 	<script language="javascript">
    function changeEditable(){
	    document.getElementById("source").disabled=false;
		document.getElementById("clientname").disabled=false;
		document.getElementById("probability").disabled=false;
		document.getElementById("outline").disabled=false;
		document.getElementById("contact").disabled=false;
		document.getElementById("phone").disabled=false;
		document.getElementById("content").disabled=false;
		
		document.getElementById("changeBtn").style.display="none";
		var assign = document.getElementById("assignBtn");
		if(assign != null){
			assign.style.display="none";
		}
		
		document.getElementById("submitBtn").style.display="inline";
	}
    
    function assign(){
    	document.getElementById("assign").disabled=false;
    	document.getElementById("assigndate").setAttribute("value", new Date().getFullYear()+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate());
    	
    	document.getElementById("changeBtn").style.display="none";
    	document.getElementById("assignBtn").style.display="none";
		document.getElementById("submitBtn").style.display="inline";
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
                         <ul class="nav nav-second-level  collapse in">
                            <li>
                                <a class="active-menu" href="saleManage/oppor!listAll"><i class="fa fa-toggle-on"></i><s:text name="saleOppor"/></a>
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
                        <h1 class="page-head-line"><s:text name="saleOppor"/></h1>
						<ol class="breadcrumb">
							<li><s:text name="saleManage"/></a></li>
							<li><a href="saleManage/oppor!listAll.action"><s:text name="saleOppor"/></a></li>
							<li class="active"><s:text name="viewOpportunity"/></li>
						</ol>
						
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
     
                <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                     <!--    Hover Rows  -->
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form id="opporForm" action="saleManage/oppor!update" method="post">
								<div class="form-group col-md-5">
									<label><s:text name="id"/></label>
                                    <input name="oppo_id" class="form-control" type="text" value="${requestScope.oppor.oppo_id}" disabled="">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="source"/></label>
                                    <input id="source" name="oppo_source" class="form-control" type="text" value="${requestScope.oppor.oppo_source}" disabled="">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="clientName"/></label><span style="color:red;">  *</span>
                                    <input id="clientname" name="oppo_clientName" class="form-control" type="text" value="${requestScope.oppor.oppo_clientName}" disabled="" required maxlength="20">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="probability"/>（%）</label><span style="color:red;">  *</span>
                                    <input id="probability" name="oppo_probability" class="form-control" type="text" value="${requestScope.oppor.oppo_probability}" disabled="" required pattern="[0-9]{1,2}" maxlength="3">
                                </div>
								<div class="form-group col-md-10">
									<label><s:text name="clientOutline"/></label><span style="color:red;">  *</span>
                                    <input id="outline" name="oppo_outline" class="form-control" type="text" value="${requestScope.oppor.oppo_outline}" disabled="" required maxlength="20">
                                </div>
								<div class="form-group col-md-4">
									<label><s:text name="clientContact"/></label>
                                    <input id="contact" name="oppo_contact" class="form-control" type="text" value="${requestScope.oppor.oppo_contact}" disabled="" maxlength="5">
                                </div>
								<div class="form-group col-md-4">
									<label><s:text name="clientConPhone"/></label>
                                    <input id="phone" name="oppo_contactPhone" class="form-control" type="phone" value="${requestScope.oppor.oppo_contactPhone}" disabled="" maxlength="11">
                                </div>
								<div class="form-group col-md-10">
									<label><s:text name="descrip"/></label><span style="color:red;">  *</span>
                                    <textarea id="content" name="oppo_content" class="form-control" rows="3" disabled="" required maxlength="100">${requestScope.oppor.oppo_content}</textarea>
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="creator"/></label><span style="color:red;">  *</span>
                                    <input name="oppo_creator" class="form-control" type="text" value="${requestScope.oppor.oppo_creator.user_id}" disabled="" maxlength="5">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="createTime"/></label><span style="color:red;">  *</span>
                                    <input name="oppo_createTime" class="form-control" type="text" value="${requestScope.oppor.oppo_createTime}" disabled="" >
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="assignTo"/></label><span style="color:red;">  *</span>
                                    <select id="assign" name="oppo_clientManage.user_id" class="form-control" disabled="">
                                    	<s:if test="oppor.oppo_status != \"0\"">
                                    		<option>${ requestScope.oppor.oppo_clientManage.user_id}</option>
                                    	</s:if>
                                    	<s:if test="oppor.oppo_status == \"0\"">
                                    	<option>请选择客户经理..</option>
                                    	<s:iterator value="clientManagers">
                                        	<option><s:property value="user_id"/></option>
                                        </s:iterator>
                                        </s:if>
                                    </select>
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="assignTime"/></label><span style="color:red;">  *</span>
                                    <input id="assigndate" name="oppo_assignDate" class="form-control" type="text" value="${requestScope.oppor.oppo_assignDate}" disabled="">
                                </div>
                          </form>
								<div class="form-group col-md-10">
									<s:if test="oppor.oppo_status == \"0\"">
										<s:if test="#request.haveModifyAuthor == true">
											<button id="changeBtn" class="btn btn-warning" onclick="changeEditable();"><s:text name="modify"/></button>
										</s:if>
										
										<s:if test="#request.haveAssignAuthor == true">
											<button id="assignBtn" class="btn btn-primary" onclick="assign();"><s:text name="assign"/></button>
										</s:if>	
									</s:if>
									<button type="submit" id="submitBtn" form="opporForm" class="btn btn-success" style="display:none"><s:text name="save"/></button>
									<button href="saleManage/oppor!listAll" class="btn btn-danger"><s:text name="back"/></button>
									
                                </div>

                        </div>
                    </div>
                    <!-- End  Hover Rows  -->
                </div>
            </div>
                <!-- /. ROW  -->

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
