<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
    <meta charset="gb2312" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>data-add</title>

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
    //修改页面状态
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
   
    //
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
                                Jhon Deo Alex
                            <br />
								<small>系统管理员</small>
                            </div>
                        </div>

                    </li>


                    <li>
                        <a href="index.html"><i class="fa fa-dashboard "></i>主页</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>营销管理 <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="salemanage.html"><i class="fa fa-toggle-on"></i>销售机会管理</a>
                            </li>
                            <li>
                                <a href="customerplan.html"><i class="fa fa-bell "></i>客户开发计划</a>
                            </li>                         
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-yelp "></i>客户管理 <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="client_clientlist.html"><i class="fa fa-coffee"></i>客户信息管理</a>
                            </li>
                            <li>
                                <a href="clientlosed_manage.html"><i class="fa fa-flash "></i>客户流失管理</a>
                            </li>                 
                        </ul>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-bicycle "></i>服务管理<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="service_add.html"><i class="fa fa-desktop "></i>服务创建</a>
                            </li>
                             <li>
                                <a href="service_assign.html"><i class="fa fa-code "></i>服务分配</a>
                            </li>
							<li>
                                <a href="service_deal.html"><i class="fa fa-code "></i>服务处理</a>
                            </li>
							<li>
                                <a href="service_feedback.html"><i class="fa fa-code "></i>服务反馈</a>
                            </li>
							<li>
                                <a href="service_archived.html"><i class="fa fa-code "></i>服务归档</a>
                            </li>
                             
                           
                        </ul>
                    </li>
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i>统计报表<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                            <li>
                                <a href="analysis_contribution.html"><i class="fa fa-desktop "></i>客户贡献分析</a>
                            </li>
                             <li>
                                <a href="analysis_composition.html"><i class="fa fa-code "></i>客户构成分析</a>
                            </li>
							<li>
                                <a href="analysis_service.html"><i class="fa fa-code "></i>客户服务分析</a>
                            </li>
                             <li>
                                <a href="analysis_lose.html"><i class="fa fa-code "></i>客户流失分析</a>
                            </li>
                           
                        </ul>
                    </li>
					
					<li>
                        <a href="#" class="active-menu-top"><i class="fa fa-bicycle "></i>基础数据<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level collapse in ">
                           
                             <li>
                                <a class="active-menu" href="data_datamanage.html"><i class="fa fa-desktop "></i>数据字典管理</a>
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
                                <a href="authoritymanage_user.html"><i class="fa fa-desktop "></i>管理用户</a>
                            </li>
                             <li>
                                <a href="authoritymanage_authority.html"><i class="fa fa-code "></i>管理权限</a>
                            </li>
							<li>
                                <a href="authoritymanage_role.html"><i class="fa fa-code "></i>管理角色</a>
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
                        <h1 class="page-head-line">数据字典管理  </i></a></h1>
						<ol class="breadcrumb">
							<li><a href="#">基础数据</a></li>
							<li><a href="data_datamanage.html">数据字典管理</a></li>
							<li class="active">新建数据字典条目</li>
						</ol>
						 
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
     
                <!-- /. ROW  -->
           <div class="row">
                <div class="col-md-66">
                     <!--    Hover Rows  -->
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form id="dictionForm" action="dataManage/data!update" method="post">
								<div class="form-group col-md-5">
									<label>编号</label>
                                    <input name="dictionary_id" class="form-control" type="text" value="${requestScope.data.data_id}" >
                                </div>
								<div class="form-group col-md-5">
									<label>类别</label><span style="color:red;">  *</span>
                                    <input name="dictionary_type" class="form-control" type="text" value="${requestScope.data.data_type}" required>
                                </div>
								<div class="form-group col-md-5">
									<label>条目</label><span style="color:red;">  *</span>
                                    <input name="dictionary_entry" class="form-control" type="text" value="${requestScope.data.data_entry}" required>
                                </div>
								
								<div class="form-group col-md-5">
									<label>值</label><span style="color:red;">  *</span>
                                    <input name="dictionary_value" class="form-control" type="text" value="${requestScope.data.data_value}" required>
                                </div>
								
								<div class="form-group col-md-4">
									        <label>是否可编辑</label>
                                            <input name="dictionary_editable" class="form-control" type="text" value="${requestScope.data.data_editable}">
                                               
                                               
                                 
                                </div>
                                
                                 
                                
                                           
                                           
                                       
                                 
                              
                                
								</form>
								<div class="form-group col-md-10">
									<s:if test="diction.editable == \"是\"">
										<s:if test="#request.haveModifyAuthor == true">
											<button id="changeBtn" class="btn btn-warning" onclick="changeEditable();">修改</button>
										</s:if>
										
									</s:if>
									<button type="submit" id="submitBtn" form="opporForm" class="btn btn-success" style="display:none">保存</button>
									<button href="saleManage/oppor!listAll" class="btn btn-danger">返回</button>
									
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