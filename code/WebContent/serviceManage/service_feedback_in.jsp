<%@page import="java.text.SimpleDateFormat"%>
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
<%
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd"); 
  HttpSession serSession = request.getSession();
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
                <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>


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
                                <a href="<%=basePath%>serviceManage/service!loadAllToSerAssign"><i class="fa fa-code "></i>服务分配</a>
                            </li>
							<li>
                                <a href="<%=basePath%>serviceManage/service!loadAllToServiceDeal"><i class="fa fa-code "></i>服务处理</a>
                            </li>
							<li>
                                <a class="active-menu" href="<%=basePath%>serviceManage/service!loadAllToServiceFeed"><i class="fa fa-code "></i>服务反馈</a>
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
                        <h1 class="page-head-line">客户服务管理</h1>
						<ol class="breadcrumb">
                        <li><a href="#">服务管理</a></li>
						<li class="active">服务反馈</li>
                        </ol>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
            <div class="row">
            <div class="col-xs-12">
               <div class="panel panel-default">
                        <div class="panel-body">
                         <s:if test="ser==null">
                             <h2>暂无数据</h2> 
                        </s:if>
                         <s:if test="ser!=null">
                            <form role="form" action="serviceManage/service!updateFeedBackedService" method="post">
                                        <div class="form-group col-md-5">
                                            <label>服务编号</label>
                                            <input class="form-control" type="text" disabled="" value="${ser.service_id}">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label>服务类型</label>
                                            <input class="form-control" type="text" value="${ser.service_type.dictionary_value}" disabled="">
                                        </div>
                                        <div class="form-group col-md-10">
                                            <label>概要</label>
                                            <input class="form-control" rows="3" disabled="" value="${ser.service_outline}">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label>客户名称</label>
                                            <input class="form-control" type="text" value="${ser.service_client}" disabled="">
                                        </div>
										<div class="form-group col-md-5">
                                            <label>服务状态</label>
                                            <input class="form-control" type="text" value="${ser.service_status}" disabled="">
                                        </div>
										<div class="form-group col-md-10">
                                            <label>服务请求</label>
                                            <textarea class="form-control" rows="3" disabled="">${ser.service_request}</textarea>
                                        </div>
										<div class="form-group col-md-5">
                                            <label>创建人</label>
                                            <input class="form-control" type="text" value="${ser.service_creator.user_id}" disabled="">
                                        </div>
										<div class="form-group col-md-5">
                                            <label>创建时间</label>
                                            <input class="form-control" type="text" value="${ser.service_create_date}" disabled="">
                                        </div>
										<div class="form-group col-md-5">
                                            <label>分配给</label>
                                            <input class="form-control" type="text" value="${ser.service_clientManager.user_id}" disabled="">
                                        </div>
										<div class="form-group col-md-5">
                                            <label>分配时间</label>
                                            <input class="form-control" type="text" value="${ser.service_assign_date}" disabled="">
                                        </div>
										<div class="form-group col-md-10">
                                            <label>服务处理</label>
                                            <textarea class="form-control" rows="3" disabled="">${ser.service_handling}</textarea>
                                        </div>
										<div class="form-group col-md-5">
                                            <label>处理人</label>
                                            <input class="form-control" type="text" value="${ser.service_conductor.user_id}" disabled="">
                                        </div>
										<div class="form-group col-md-5">
                                            <label>处理时间</label>
                                            <input class="form-control" type="text" value="${ser.service_handling_date}" disabled="">
                                        </div>
										<div class="form-group col-md-5">
                                            <label>处理结果</label><span style="color:red;">  *</span>
                                            <input name="service_handling_result" class="form-control" id="handling_result" type="text" value="${ser.service_handling_result}" disabled="">
										</div>
										<div class="form-group col-md-6">
                                            <label>满意度</label><span style="color:red;">  *</span>
                                             <select name="service_satis_degree" id="satis_degree" class="form-control" disabled="" >
                                             <option value="0">请选择</option>
                                             <s:if test="ser.service_satis_degree == null">
                                                <option value="1">☆</option>
                                                <option value="2">☆☆</option>
                                                <option value="3">☆☆☆</option>
                                                <option value="4">☆☆☆☆</option>
                                                <option value="5">☆☆☆☆☆</option>
                                             </s:if>
                                              <s:else>
                                              <s:if test="ser.service_satis_degree == 1">
                                                <option value="1" selected="selected">☆</option>
                                               </s:if>
                                              <s:if test="ser.service_satis_degree == 2">
                                               <option value="2" selected="selected">☆☆</option>
                                              </s:if>
                                              <s:if test="ser.service_satis_degree == 3">
                                               <option value="3" selected="selected">☆☆☆</option>
                                              </s:if>
                                              <s:if test="ser.service_satis_degree == 4">
                                               <option value="4" selected="selected">☆☆☆☆</option>
                                              </s:if>
                                              <s:if test="ser.service_satis_degree == 5">
                                                <option value="5" selected="selected">☆☆☆☆☆</option>
                                              </s:if>  
                                              </s:else>                                                                                     
                                            </select>
                                        </div>
                                       
                                        <div class="form-group col-md-10">
                                        <button id="chagBT" type="button" class="btn btn-info" onclick="return changeEditable();">修改</button>
                                        <button id="saveBT" type="submit" class="btn btn-info" onclick="return check();" style="display:none">保存</button>
										<a href="serviceManage/service!loadAllToServiceFeed"><button type="button" class="btn btn-danger">返回</button></a>
                                        </div>
										
                                    </form>
                                 </s:if>
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
    <script type="text/javascript">
    function check(){
    	var handling_result = document.getElementById("handling_result").value;
    	var satis_degree = document.getElementById("satis_degree").value;
    	if (handling_result.length == 0){
    		alert("请填写服务处理结果！");
    		return false;
    	}
    	if (satis_degree == 0){
    		alert("请选择满意度！");
    		return false;
    	}
    	return true;	
    }
    
    function changeEditable(){
	    document.getElementById("handling_result").disabled=false;
	    document.getElementById("satis_degree").disabled=false;
		document.getElementById("chagBT").style.display="none";
		document.getElementById("saveBT").style.display="inline";
	}
    </script>

</body>
</html>