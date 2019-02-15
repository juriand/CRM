<%@ page language="java" contentType="text/html; charset=UTF-8"
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
                        <h1 class="page-head-line">客户信息管理</h1>
						<ol class="breadcrumb">
							<li><a href="client_clientlist.html">客户信息管理</a></li>
							<li><a href="client_clientinfo.html">客户信息</a></li>
							<li><a href="client_clientcontact.html">联系人</a></li>
							<li class="active">查看联系人</li>
						</ol>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
				
                <div class="row">
                    <div class="col-md-12">
			        <div class="panel panel-default">
					
					
						<div class="panel-body">
						<div class="row">
						<div class="col-md-12">
						<form class="" id="clienform" action="clientInfoManage/client!updateContact" method="post">
							<div class="form-group col-md-5">
								<label>姓名</label>
								<input id="name" name="contact.contact_name" class="form-control" type="text"/>
							</div>
							<div class="form-group col-md-5">
								<label>性别</label>
								 <div class="radio">
									<label>
										<input type="radio" name="contact.contact_gender" id="male" value="男">男
									</label>
									<label>
										<input type="radio" name="contact.contact_gender" id="female" value="女">女
									</label>
								</div>
								
							</div>

							<div class="form-group col-md-5">
								<label>职位</label>
								<input id="position" name="contact.contact_position" class="form-control" type="text" value="总经理" disabled="disabled" />
							</div>
							<div class="form-group col-md-5">
								<label>办公电话</label>
								<input id="officialtel" name="contact.contact_officephone" class="form-control" type="text" value="010-56565656-668" disabled="disabled" />	
							</div>

							<div class="form-group col-md-5">
								<label>手机</label>
								<input id="phone" name="contact.contact_telephone" class="form-control" type="text" value="13655555555" disabled="disabled" />
							</div>
							<div class="form-group col-md-5">
								<label>备注</label>
								<input id="append" name="contact.contact_memo" class="form-control" type="text" value="" disabled="disabled" />
							</div>

						</form>
						
						<div class="form-group col-md-6">
							<button id="changeBtn" class="btn btn-primary">修改</button>
							<button id="submitBtn" type="submit" form="clienform" class="btn btn-success">保存</button>
							<a href="clientInfoManage/client!deleteContact?contactid=<s:property value="#request.contactid"/>">
						        <button id="deleteBtn" class="btn btn-danger">删除</button>
						    </a>
						</div>
					
						</div>
					</div>
					

					</div>
					<!-- panel body -->
					
				</div>
			    

						
				    </div>
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
    
    
    
	<script language="javascript">
	function isEmptyObject(o){
    	var e;
    	for(e in o)
    		return !1;
    	return !0;
    }
	
	
	 function changeEditable(){
	    	$("#changeBtn").click(function(){
	    		$("#name").attr({"disabled":false});
	    		$("#male").attr({"disabled":false});
	    		$("#female").attr({"disabled":false});
	    		$("#position").attr({"disabled":false});
	    		$("#officialtel").attr({"disabled":false});
	    		$("#phone").attr({"disabled":false});
	    		$("#append").attr({"disabled":false});
	    	
	    		$("#submitBtn").show();
	    		$("#changeBtn").hide();
	    		
	    	});
	}
    
	
    
    function initContact(){
    	var contactid = '<%= (String)request.getParameter("contactid") %>';
    	var url='clientInfoManage_ajax/client_ajax!showContactInfo?contactid='+ contactid;
    	$.ajax({
    		type:'post',
    		url: url,
    		dataType:'json',
    		success:function(contact){
    			var jsonStr = JSON.stringify(contact);
				console.log(jsonStr);
    			if(isEmptyObject(contact)){
    				$("#panelbody").html("<h3>获取客联系人信息失败</h3>");
    			}else{
    				
    				$("#name").attr({
    					"value":contact.contact_name,
	    				"disabled":true
	    			});
    				
    				if(contact.contact_gender=='男'){
    					$("input[name='contact.contact_gender'][value='男']").attr("checked",true);
    				}else if(contact.contact_gender=='女'){
    					$("input[name='contact.contact_gender'][value='女']").attr("checked",true);
    				}
    				
    				
    				$("#male").attr({"disabled":true});
    				$("#female").attr({"disabled":true});
    				
    				
    				$("#position").attr({
	    				"value":contact.contact_position,
	    				"disabled":true
	    			});
    				
    				$("#officialtel").attr({
	    				"value":contact.contact_officephone,
	    				"disabled":true
	    			});
    				
    				$("#phone").attr({
	    				"value":contact.contact_telephone,
	    				"disabled":true
	    			});
    				
    				$("#append").attr({
	    				"value":contact.contact_memo,
	    				"disabled":true
	    			});
    			}
    		},
	    	error:function(XMLHttpRequest,textStatus,errorThrown){
	    		alert(errorThrown);
	    	}
    	});
    	
    }
    
    $(document).ready(function(){
    	$("#submitBtn").hide();
    	initContact();
    	changeEditable();
     });
	
	
    </script>
    
    
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    


</body>
</html>