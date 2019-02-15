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
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    function newPlan(){	
    	var foot = document.getElementById("newPlanItem");
    	if(foot.style.display=="inline"){
    		foot.style.display="none";
    	}else{
    		foot.style.display="inline";
    	}
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
                                <a href="saleManage/oppor!listAll"><i class="fa fa-toggle-on"></i><s:text name="saleOppor"/></a>
                            </li>
                            <li>
                                <a class="active-menu" href="saleManage/oppor!plan"><i class="fa fa-bell "></i><s:text name="salePlan"/></a>
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
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line"><s:text name="salePlan"/></h1>
						<ol class="breadcrumb">
							<li><s:text name="saleManage"/></a></li>
							<li><a href="saleManage/oppor!plan"><s:text name="salePlan"/></a></li>
							<li class="active"><s:text name="makePlan"/></li>
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
                            <form>
								<div class="form-group col-md-5">
									<label><s:text name="id"/></label>
                                    <input name="oppo_id" class="form-control" type="text" value="${oppor.oppo_id}" readonly="readonly" >
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="source"/></label>
                                    <input name="oppo_source" class="form-control" type="text" value="${oppor.oppo_source}" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="clientName"/></label>
                                    <input name="oppo_clientName" class="form-control" type="text" value="${oppor.oppo_clientName}" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="probability"/></label>
                                    <input name="oppo_probability" class="form-control" type="text" value="${oppor.oppo_probability}" readonly="readonly">
                                </div>
								<div class="form-group col-md-10">
									<label><s:text name="clientOutline"/></label>
                                    <input name="oppo_outline" class="form-control" type="text" value="${oppor.oppo_outline}" readonly="readonly">
                                </div>
								<div class="form-group col-md-4">
									<label><s:text name="clientContact"/></label>
                                    <input name="oppo_contact" class="form-control" type="text" value="${oppor.oppo_contact}" readonly="readonly">
                                </div>
								<div class="form-group col-md-4">
									<label><s:text name="clientConPhone"/></label>
                                    <input name="oppo_contactPhone" class="form-control" type="text" value="${oppor.oppo_contactPhone}" readonly="readonly">
                                </div>
								<div class="form-group col-md-10">
									<label><s:text name="descrip"/></label>
                                    <textarea name="oppo_content" class="form-control" rows="3" readonly="readonly">${oppor.oppo_content}</textarea>
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="creator"/></label>
                                    <input name="oppo_creator" class="form-control" type="text" value="${oppor.oppo_creator.user_id}" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="createTime"/></label>
                                    <input name="oppo_createTime" class="form-control" type="text" value="${oppor.oppo_createTime}" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="assignTo"/></label>
                                    <input name="oppo_clientManage" class="form-control" type="text" value="${oppor.oppo_clientManage.user_id}" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label><s:text name="assignTime"/></label>
                                    <input name="oppo_assignDate" class="form-control" type="text" value="${oppor.oppo_assignDate} " readonly="readonly">
                                </div>
								
							</form>
                        </div>
                    </div>
					
					<h1 class="page-subhead-line"></h1>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<s:text name="devPlan"/>
							<s:if test="oppor.oppo_status == \"1\"">
								<s:if test="#request.haveExecuteAuthor == true">
									<a href="saleManage/plan!execute?oppo_id=${oppor.oppo_id}"><button class="btn btn-danger"><s:text name="execute"/></button></a>
								</s:if>
								
								<s:if test="#request.havePlanAuthor == true">
									<button type="submit" class="btn btn-info" onclick="newPlan();"><s:text name="addPlan"/></button></a>
								</s:if>	
								
							</s:if>
							
							<s:if test="oppor.oppo_status == \"2\" && #request.haveExecuteAuthor == true">
								<a href="saleManage/plan!end?oppo_id=${oppor.oppo_id}"><button class="btn btn-danger"><s:text name="end"/></button></a>
								<a href="saleManage/plan!success?oppo_id=${oppor.oppo_id}"><button class="btn btn-info"><s:text name="success"/></button></a>
							</s:if>
                        </div>
                        <div class="panel-body">
                        	<!-- 已分配时的表 -->
                        	<s:if test="oppor.oppo_status == \"1\"">
							<table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th><s:text name="date"/></th>
                                            <th><s:text name="planItem"/></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<s:if test="planItem.size() == 0">
                                    	<tr><td><s:text name="haveNoData"/></td></tr>
                                    	</s:if>
                                    	
                                    	<s:if test="planItem.size() != 0">
                                    	<s:iterator value="planItem">
                                        	<tr>
                                        	<form action="saleManage/plan!update?item_id=${item_id }" method="post">
                                            	<td>
                                            		<input name="item_date" class="form-control" type="text" value="${ item_date}" disabled="disabled">
                                        		</td> 
                                        		
                                            	<td>
												<div class="form-group col-md-9">
													<input name="item_content" class="form-control" type="text" value="${ item_content}">
												</div>
												</td>
												
												<td>
												<button type="submit" class="btn btn-info"><s:text name="save"/></button></a>
											</form>
												<a href="saleManage/plan!delete?item_id=${item_id }"><button class="btn btn-danger"><s:text name="delete"/></button></a>
												</td>	
																			
                                        	</tr>
                                        </s:iterator>
                                        </s:if>                   
                                    </tbody>
                                </table>
                                </s:if>
                                
                                <!-- 已执行时的表 -->
                                <s:if test="oppor.oppo_status == \"2\"">
								<table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th><s:text name="date"/></th>
                                            <th><s:text name="planItem"/></th>
                                            <th><s:text name="executeResult"/></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<s:if test="planItem.size() == 0">
                                    	<tr><td><s:text name="haveNoData"/></td></tr>
                                    	</s:if>
                                    	
                                    	<s:if test="planItem.size() != 0">
                                    		<s:iterator value="planItem">
                                        	<tr>
                                       			<form action="saleManage/plan!update?item_id=${item_id }" method="post">
                                           		<td>
                                            		<input name="item_date" class="form-control" type="text" value="${ item_date}" disabled="disabled" size="8">
                                        		</td>
                                        	 
                                            	<td>
												<div class="form-group col-md-9">
													<input name="item_content" class="form-control" type="text" value="${ item_content}" readonly="readonly">
												</div>
												</td>
											
												<td>
												<div class="form-group col-md-9">
													<input name="item_result" class="form-control" type="text" value="${ item_result}" >
												</div>
													
												<button type="submit" class="btn btn-info"><s:text name="save"/></button></a>
												</td>
												</form>
											</tr>                   
                                        	</s:iterator>
                                        </s:if>    
                                    </tbody>
                                </table>
                                </s:if>
                                
                                 <!-- 已结束时的表 -->
                                <s:if test="oppor.oppo_status == \"3\" || oppor.oppo_status == \"4\"">
								<table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th><s:text name="date"/></th>
                                            <th><s:text name="planItem"/></th>
                                            <th><s:text name="executeResult"/></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<s:if test="planItem.size() == 0">
                                    	<tr><td><s:text name="haveNoData"/></td></tr>
                                    	</s:if>
                                    	
                                    	<s:if test="planItem.size() != 0">
                                    		<s:iterator value="planItem">
                                        	<tr>
                                           		<td>
                                            		<input name="item_date" class="form-control" type="text" value="${ item_date}" disabled="disabled" size="8">
                                        		</td>
                                        	 
                                            	<td>
												<div class="form-group col-md-9">
													<input name="item_content" class="form-control" type="text" value="${ item_content}" readonly="readonly">
												</div>
												</td>
											
												<td>
												<div class="form-group col-md-9">
													<input name="item_result" class="form-control" type="text" value="${ item_result}" readonly="readonly">
												</div>
												</td>
											</tr>                   
                                        	</s:iterator>
                                        </s:if>    
                                    </tbody>
                                </table>
                                </s:if>
								
								<div id="newPlanItem" class="panel-footer" style="display:none">
									<form action="saleManage/plan!add?oppo_id=${oppor.oppo_id }" method="post">
										<div class="form-group col-md-3">
											<label><s:text name="date"/></label><span style="color:red;">  *</span>
											<input id="item_date" name="item_date" class="form-control"  type="text" required="required">
										</div>
										
										<div class="form-group col-md-7">
											<label><s:text name="planItem"/></label><span style="color:red;">  *</span>
											<input name="item_content" class="form-control" type="text" value="" required="required">
										</div>
										
										<div class="form-group col-md-2">
											<label><s:text name="operation"/></label></br>
											<button type="submit" class="btn btn-info"><s:text name="add"/></button>
										</div>
									</form>
									
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
