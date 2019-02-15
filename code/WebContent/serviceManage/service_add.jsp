<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.crm.service.DictionService"%>
<%@page import="com.crm.vo.Dictionary"%>
<%@page import="com.crm.vo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<%SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd"); 
  HttpSession serSession = request.getSession();
  List serTypeList = (List)serSession.getAttribute("serviceType");
  User user = (User)serSession.getAttribute("user");
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
                                <a class="active-menu"  href="<%=basePath%>serviceManage/service!loadAllToSerAdd"><i class="fa fa-desktop "></i>服务创建</a>
                            </li>
                             <li>
                                <a href="<%=basePath%>serviceManage/service!loadAllToSerAssign"><i class="fa fa-code "></i>服务分配</a>
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
						<li class="active">服务创建</li>
                        </ol>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
         <s:if test="#request.haveAddAuthor == true">
          <div class="row">
            <div class="col-xs-12">
               <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="<%=request.getContextPath() %>/serviceManage/service!add" method="post" role="form">
                                       <div class="form-group col-md-5">
                                            <label>服务状态</label>
                                            <input name="service_status" class="form-control" type="text" value="新创建" readonly>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label>服务类型</label><span style="color:red;">  *</span>
                                            <select name="service_type.dictionary_id" class="form-control">
                                            
                                            <%for (int i =0;i < serTypeList.size();i++){ 
                                            	Dictionary dic = (Dictionary)serTypeList.get(i);
                                            %>
                                            	   <option value="<%=dic.getDictionary_id()%>"><%=dic.getDictionary_value()%></option>
                                            <% }%>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-10">
                                            <label>概要</label><span style="color:red;">  *</span>
                                            <input name="service_outline" class="form-control" required maxlength="20" id="service_outline"></input>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label>客户名称</label><span style="color:red;">  *</span>
                                            <input name="service_client" class="form-control" type="text" required maxlength="20" id="service_client">
                                        </div>
										<div class="form-group col-md-10">
                                            <label>服务请求</label><span style="color:red;">  *</span>
                                            <textarea name="service_request" class="form-control" required maxlength="20" id="service_request"></textarea>
                                        </div>
										<div class="form-group col-md-5">
                                            <label>创建人</label><span style="color:red;">  *</span>
                                            <input name="service_creator.user_id" class="form-control" type="text" value="<%=user.getUser_id()%>" readonly>
                                        </div>
										<div class="form-group col-md-5">
                                            <label>创建时间</label><span style="color:red;">  *</span>
                                            <input name="service_create_date" class="form-control" type="text" value="<%= df.format(new Date()) %>" readonly>
                                        </div>
                                        <div class="form-group col-md-10">
											<button type="submit" class="btn btn-info" onclick="return check();">保存</button>
                                        </div>
										
                                    </form>
                            </div>
                        </div>
                            </div>

        </div>
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
    <script type="text/javascript">
    function check(){
    	var outline = document.getElementById("service_outline").value;
    	var clientName = document.getElementById("service_client").value;
    	var request = document.getElementById("service_request").value;
    	if (outline.length == 0){
    		alert("请填写概要！");
    		return false;
    	}
    	if (clientName.length == 0){
    		alert("请填写用户名称！");
    		return false;
    	}
    	if (request.length == 0){
    		alert("请填写服务请求！");
    		return false;
    	}
    	return true;
    	
    }
    </script>

</body>
</html>