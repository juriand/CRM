<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.crm.service.DictionService"%>
<%@page import="com.crm.vo.Dictionary"%>
<%@page import="com.crm.vo.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>客户关系管理后台</title>

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
</head>
<%
  HttpSession serSession = request.getSession();
  List serTypeList = (List)serSession.getAttribute("serviceType");
  List clientManagerList = (List)serSession.getAttribute("clientManagers");
%>
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
                <a class="navbar-brand" href="index.html">客户关系管理后台</a>
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
                        <a  href="index.jsp"><i class="fa fa-dashboard "></i>主页</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>营销管理 <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="saleManage/oppor!listAll"><i class="fa fa-toggle-on"></i>销售机会管理</a>
                            </li>
                            <li>
                                <a href="saleManage/oppor!plan"><i class="fa fa-bell "></i>客户开发计划</a>
                            </li>                         
                        </ul>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-yelp "></i>客户管理 <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="clientInfoManage/client!listAll"><i class="fa fa-coffee"></i>客户信息管理</a>
                            </li>
                            <li>
                                <a href="clientLoseManage/client!listAll"><i class="fa fa-flash "></i>客户流失管理</a>
                            </li>                 
                        </ul>
                    </li>
                    <li>
                        <a class="active-menu-top" href="#"><i class="fa fa-bicycle "></i>服务管理<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level collapse in">
                           
                             <li>
                                <a href="<%=basePath%>serviceManage/service!loadAllToSerAdd"><i class="fa fa-desktop "></i>服务创建</a>
                            </li>
                             <li>
                                <a class="active-menu" href="<%=basePath%>serviceManage/service!loadAllToSerAssign"><i class="fa fa-code "></i>服务分配</a>
                            </li>
							<li>
                                <a href="<%=basePath%>serviceManage/service!loadAllToServiceDeal"><i class="fa fa-code "></i>服务处理</a>
                            </li>
							<li>
                                <a href="<%=basePath%>serviceManage/service!loadAllToServiceFeed"><i class="fa fa-code "></i>服务反馈</a>
                            </li>
							<li>
                                <a href="<%=basePath%>serviceManage/service!loadAllToServiceArchived"><i class="fa fa-code "></i>服务归档</a>
                            </li>
                             
                           
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bicycle "></i>统计报表<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                            <li>
                                <a href="analysisManage/analysis!contribution"><i class="fa fa-desktop "></i>客户贡献分析</a>
                            </li>
                             <li>
                                <a href="analysisManage/analysis!composition?search_type=0"><i class="fa fa-code "></i>客户构成分析</a>
                            </li>
							<li>
                                <a href="analysisManage/analysis!service"><i class="fa fa-code "></i>客户服务分析</a>
                            </li>
                             <li>
                                <a href="analysisManage/analysis!lose"><i class="fa fa-code "></i>客户流失分析</a>
                            </li>
                           
                        </ul>
                    </li>
					
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i>基础数据<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="data_datamanage.html"><i class="fa fa-desktop "></i>数据字典管理</a>
                            </li>
                             <li>
                                <a href="data_inquiry.html"><i class="fa fa-code "></i>查询产品信息</a>
                            </li>
							<li>
                                <a href="data_stock.html"><i class="fa fa-code "></i>查询库存</a>
                            </li>
                             
                           
                        </ul>
                    </li>
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i>权限管理<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="authorityManage/user!listAll"><i class="fa fa-desktop "></i>管理用户</a>
                            </li>
                             <li>
                                <a href="authorityManage/author!listAll"><i class="fa fa-code "></i>管理权限</a>
                            </li>
							<li>
                                <a href="authorityManage/role!listAll"><i class="fa fa-code "></i>管理角色</a>
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
                        <h1 class="page-head-line">客户服务管理</h1>
						<ol class="breadcrumb">
                        <li><a href="#">服务管理</a></li>
						<li class="active">服务分配</li>
                        </ol>
                    </div>
                </div>
                <!-- /. ROW  -->
            <s:if test="#request.haveAssignAuthor == true">
            <div class="row">
            <div class="col-xs-12">
               <div class="panel panel-default">
                        <div class="panel-body">
                            <form role="form" action="serviceManage/service!listNewCreate" method="post">
                                        <div class="form-group col-md-4">
                                            <label>客户名称</label>
                                            <input name="service_client" class="form-control" type="text">
                                        </div>
										<div class="form-group col-md-4">
                                            <label>概要</label>
                                            <input name="service_outline" class="form-control" type="text">
                                        </div>
										<div class="form-group col-md-4">
                                            <label>服务类型</label>
                                            <select name="service_type.dictionary_id" class="form-control">
                                            <option value="unknown">请选择</option>
                                               <%for (int i =0;i < serTypeList.size();i++){ 
                                            	Dictionary dic = (Dictionary)serTypeList.get(i);
                                            %>
                                            	   <option value="<%=dic.getDictionary_id()%>"><%=dic.getDictionary_value()%></option>
                                            <% }%>                                         
                                            </select>
                                        </div>
										<div class="form-group col-md-5">
                                            <label>创建日期</label>
                                            <input name="service_create_date" class="form-control" type="date">
                                        </div>
                                        <div class="form-group col-md-10">
                                        <button class="btn btn-default" type="submit" >查询</button>
                                        </div>
										
                                    </form>
                            </div>
                        </div>
          </div>
</div>
			 <!--    Hover Rows  -->
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>客户</th>
                                            <th>概要</th>
                                            <th>服务类型</th>
											<th>创建人</th>
											<th>创建日期</th>
											<th>分配给</th>
											<th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:if test="services.size()==0">
                                       		<tr><td>暂无数据</td></tr>
                                        </s:if>
                                        <s:if test="services.size()!=0">
                                    		<s:iterator value="services" status="s">
                                        	<tr class="tablelink">
                                            	<td><s:property value="service_id"/></td>
                                            	<td><s:property value="service_client"/></td>
                                            	<td><s:property value="service_outline"/></td>
                                            	<td><s:property value="service_type.dictionary_value"/></td>
												<td><s:property value="service_creator.user_id"/></td>
												<td><s:property value="service_create_date"/></td>
												<td>
												<form role="form" action="serviceManage/service!allocate?service_id=${service_id}" method="post">
												<div class="form-group col-md-7">
													<select name="service_clientManager.user_id" class="form-control" id="clientManager">
												     <%for (int i =0;i < clientManagerList.size();i++){ 
                                            	         User clientManager = (User)clientManagerList.get(i);
                                                      %>
                                            	         <option value="<%=clientManager.getUser_id()%>"><%=clientManager.getUser_id()%></option>
                                                      <% }%>
													</select>
												</div>
												<div class="form-group col-md-1">
													<button type="submit" class="btn btn-info">分配</button>
												</div>
												</form>
											</td>
											<td><a href="serviceManage/service!deleteNewCreate?service_id=${service_id}"> <button type="button" class="btn btn-danger">删除</button></a></td>
                                        	</tr>
                                        	</s:iterator>
                                        </s:if>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- End  Hover Rows  -->
           </s:if>
           <s:else>
           <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                     <!--    Hover Rows  -->
                    <div class="panel panel-default">
                        <div class="panel-body">							
							  此账号没有权限访问该页面！
                        </div>
						
                    </div>
                </div>
            </div>
                <!-- /. ROW  -->
            </s:else>
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