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
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>order-detail</title>

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

              <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o 

fa-2x"></i></a>
                <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-

2x"></i></a>
                <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-

2x"></i></a>


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
                        <a class="active-menu-top" href="#"><i class="fa fa-yelp "></i>客户管理 <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level collapse in">
                            <li>
                                <a class="active-menu" href="invoice.html"><i class="fa fa-coffee"></i>客户信息管理</a>
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
                        <h1 class="page-head-line">客户信息管理 </h1>
						
						<ol class="breadcrumb">
							<li><a href="#">客户管理</a></li>
							<li><a href="client_clientlist.html">客户信息管理</a></li>
							<li><a href="client_clientinfo.html">客户信息</a></li>
							<li><a href="client_history.html">历史订单</a></li>
							<li class="active">订单明细</li>
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
									<label>订单编号</label>
                                    <input id="id" class="form-control" type="text" value="001" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label>日期</label>
                                    <input id="date" class="form-control" type="text" value="2016年5月24日" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label>送货地址</label>
                                    <input id="address" class="form-control" type="text" value="睿智电脑" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label>总金额（元）</label>
                                    <input id="total" class="form-control" type="text" value="544353" readonly="readonly">
                                </div>
								<div class="form-group col-md-5">
									<label>状态</label>
                                    <input id="status" class="form-control" type="text" value="已回款" readonly="readonly">
                                </div>

								
							</form>
                        </div>
                    </div>
					
					<h1 class="page-subhead-line"></h1>
					
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table id="items" class="table table-hover">
                                    <thead>
                                       <tr>
                                            <th>商品</th>
                                            <th>数量</th>
                                            <th>单位</th>
                                            <th>单价（元）</th>
                                            <th>金额（元）</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
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
        Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" 

href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
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
    
    function initOrder(){
    	var orderid = '<%= (String)request.getParameter("orderid") %>';
    	var url='clientInfoManage_ajax/client_ajax!showOrderInfo?orderid='+ orderid;
    	$.ajax({
    		type:'post',
    		url: url,
    		dataType:'json',
    		success:function(data){
    			var jsonStr = JSON.stringify(data);
				console.log(jsonStr);
    			if(isEmptyObject(data)){
    				$("#panelbody").html("<h3>获取历史订单信息失败</h3>");
    			}else{
    				
    				$("#id").attr({
    					"value":data.historyOrder.order_id,
	    				"disabled":true
	    			});
    				$("#date").attr({
    					"value":data.date,
	    				"disabled":true
	    			});
    				$("#address").attr({
    					"value":data.historyOrder.order_address,
	    				"disabled":true
	    			});
    				$("#total").attr({
    					"value":data.historyOrder.order_totalnum,
	    				"disabled":true
	    			});
    				$("#status").attr({
    					"value":data.historyOrder.order_status,
	    				"disabled":true
	    			});
    				
    				for(var i in data.historyOrder.orderitems){
    					var newRow = "<tr><td>"+data.historyOrder.orderitems[i].item_product.product_name+"</td><td>"+data.historyOrder.orderitems[i].item_amount
    					+"</td><td>"+data.historyOrder.orderitems[i].item_product.product_unit+"</td><td>"+data.historyOrder.orderitems[i].item_product.product_price
    					+"</td><td>"+data.historyOrder.orderitems[i].item_totalnum+"</td></tr>";
    				
    					$("#items tr:last").after(newRow);
    				}
    				
    				
    				
    			}
    		},
	    	error:function(XMLHttpRequest,textStatus,errorThrown){
	    		alert(errorThrown);
	    	}
    	});
    	
    }
    
    $(document).ready(function(){
    	initOrder();
     });
	
	
    </script>
    
    
    
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>
</html>

