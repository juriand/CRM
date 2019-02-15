<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                        <a href="index.jsp"><i class="fa fa-dashboard "></i>主页</a>
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
                        <a class="active-menu-top" href="#"><i class="fa fa-yelp "></i>客户管理 <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level collapse in">
                            <li>
                                <a class="active-menu" href="clientInfoManage/client!listAll"><i class="fa fa-coffee"></i>客户信息管理</a>
                            </li>
                            <li>
                                <a href="clientLoseManage/client!listAll"><i class="fa fa-flash "></i>客户流失管理</a>
                            </li>                 
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bicycle "></i>服务管理<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="serviceManage/service!loadAllToSerAdd"><i class="fa fa-desktop "></i>服务创建</a>
                            </li>
                             <li>
                                <a href="serviceManage/service!loadAllToSerAssign"><i class="fa fa-code "></i>服务分配</a>
                            </li>
							<li>
                                <a href="serviceManage/service!loadAllToServiceDeal"><i class="fa fa-code "></i>服务处理</a>
                            </li>
							<li>
                                <a href="serviceManage/service!loadAllToServiceFeed"><i class="fa fa-code "></i>服务反馈</a>
                            </li>
							<li>
                                <a href="serviceManage/service!loadAllToServiceArchived"><i class="fa fa-code "></i>服务归档</a>
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
                                <a href="dictionManage/diction!list"><i class="fa fa-desktop "></i>数据字典管理</a>
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
                                <a href="authorityManage/user!listAll"><i class="fa fa-desktop "></i>用户管理</a>
                            </li>
                             <li>
                                <a href="authorityManage/author!listAll"><i class="fa fa-code "></i>权限管理</a>
                            </li>
							<li>
                                <a href="authorityManage/role!listAll"><i class="fa fa-code "></i>角色管理</a>
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
                        <h1 class="page-head-line">客户信息管理</h1>
						<ol class="breadcrumb">
							<li><a href="">客户管理</a></li>
							<li class="active">客户信息管理</li>
						</ol>
                        <h1 class="page-subhead-line"> </h1>

                    </div>
                </div>
                <!-- /. ROW  -->
				
                <div class="row">
				    <div class="col-md-12">
                     <!--    Hover Rows  -->
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                         <s:if test="clients.size==0">
                              <h3>没有客户！</h3>
                         </s:if>
                         
                         <s:else>
                              <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>客户编号</th>
                                            <th>客户名称</th>
                                            <th>客户等级</th>
											<th>客户地区</th>
                                            <th>客户经理</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="clients" >
	        	                            <tr class="tablelink" onclick="doLink(<s:property value="client_id"/>);">
	                                            <td><s:property value="client_id"/></td>
												<td><s:property value="client_name"/></td>
												<td><s:property value="client_level.dictionary_entry"/></td>
												<td><s:property value="client_area.dictionary_entry"/></td>
												<td><s:property value="client_clientmanage.user_nickname"/></td>
	                                        </tr>
										</s:iterator>
                                    </tbody>
                                </table>
                            </div>
                         </s:else>
                        </div>
                    </div>
					<div class="pagechange">
							<ul class="pagination">
							  <li><a href="#">&laquo;</a></li>
							  <li><a href="#">1</a></li>
							  <li><a href="#">2</a></li>
							  <li><a href="#">3</a></li>
							  <li><a href="#">4</a></li>
							  <li><a href="#">5</a></li>
							  <li><a href="#">&raquo;</a></li>
							</ul>
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
