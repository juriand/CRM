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
								<li><a href="#">客户管理</a></li>
								<li><a href="client_clientlist.html">客户信息管理</a></li>
								<li class="active">客户信息</li>
						</ol>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
                <!-- /. ROW  -->
				
                <div class="row">
                    <div class="col-md-12">
			        <div class="panel panel-default">
					<div class="panel-heading">
							
				        <div class="row">
							<div class="col-md-5">
						
						
						     <a href="clientInfoManage/client!showContact" >
						       <button id="contact" class="btn"><i class="glyphicon glyphicon-headphones"></i>联系人</button>
						     </a>
							  <a href="clientInfoManage/client!showCommuHistory">
							  <button id="communicate" class="btn btn-primary"><i class="glyphicon glyphicon-search"></i>交往记录</button>
							  </a>
							  
							  <a href="clientInfoManage/client!showOrder">
							  <button id="order" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>历史订单</button>
							  </a>

							</div>
							
							<div class="col-md-6">
								<button id="changeBtn" class="btn btn-primary">修改</button>
								<button id="submitBtn" type="submit" form="clienform" class="btn btn-success">保存</button>
							</div>
						</div>
						
					</div>
					<div id = "panelbody" class="panel-body">
					<form class="" id="clienform" action="clientInfoManage/client!updateClient" method="post">
				        <div class="col-md-12">
							<div class="form-group col-md-5">
								<label>客户编号</label>
								<input id="id" name="client.client_id" class="form-control" type="text" />
							</div>
									
							<div class="form-group col-md-5">
								<label>名称</label>
								<input id="name" name="client.client_name" class="form-control" type="text"/>
							</div>
									
							<div class="form-group col-md-5">
								<label>地区</label>
								<select id="area" name="client.client_area.dictionary_id" class="form-control">
								</select>
							</div>
							
							<div class="form-group col-md-5">
								<label>客户经理</label>
								<input id="manager" name="client.client_clientmanage.user_id" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>客户等级</label>
								<select id="level" name="client.client_level.dictionary_id" class="form-control" type="text">
								</select>
							</div>
							
							<div class="form-group col-md-5">
								<label>客户满意度</label>
								<select id="satisfied" name="client.client_csr" class="form-control" type="text">
<%-- 									    <s:iterator value="{'0', '1', '2','3','4'}" status="s" var="v"> --%>
<%-- 									        <s:if test="v==client.client_csr"> --%>
<!-- 									            <option value="v">一星</option> -->
<%-- 									        </s:if> --%>
<%-- 											<s:property/> |  --%>
<%-- 											遍历过的元素总数：<s:property value="#status.count"/> | --%>
<%-- 											遍历的元素索引：<s:property value="#status.index"/> | --%>
<%-- 											当前遍历过的元素总数是偶数？：<s:property value="#status.even"/> | --%>
<%-- 											当前遍历过的元素总数是奇数？：<s:property value="#status.odd"/> | --%>
<%-- 											是第一个元素吗？：<s:property value="#status.first"/> | --%>
<%-- 											是最后一个元素吗？：<s:property value="#status.last"/> --%>
<%-- 										</s:iterator> --%>
									<option value="0">☆</option>
									<option value="1">☆☆</option>
									<option value="2">☆☆☆</option>
									<option value="3">☆☆☆☆</option>
									<option value="4">☆☆☆☆☆</option>
								</select>
							</div>
							
							<div class="form-group col-md-5">
								<label>客户信用度</label>
								<select id="credit" name="client.client_credit" class="form-control" placeholder=".col-md-11" type="text">
									<option value="0">☆</option>
									<option value="1">☆☆</option>
									<option value="2">☆☆☆</option>
									<option value="3">☆☆☆☆</option>
									<option value="4">☆☆☆☆☆</option>
								</select>
							</div>
							
							<div class="form-group row"></div>
							<hr/>
							
							<div class="form-group col-md-5">
								<label>地址</label>
								<input id="address" name="client.client_address" class="form-control" type="text" />
							</div>
							
							<div class="form-group col-md-5">
								<label>邮政编码</label>
								<input id="postalcode" name="client.client_postalcode" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>电话</label>
								<input id="phone" name="client.client_phone" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>传真</label>
								<input id="fax" name="client.client_fax" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>网址</label>
								<input id="website" name="client.client_site" class="form-control" type="text"/>
							</div>
							

							<div class="form-group row"></div>
							<hr/>
							
							<div class="form-group col-md-5">
								<label>营业执照注册号</label>
								<input id="bern" name="client.client_bern" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>法人</label>
								<input id="corporation" name="client.client_corporation" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>注册资金（万元）</label>
								<input id="regcap" name="client.client_regcapital" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>年营业额</label>
								<input id="annualsale" name="client.client_annualsales" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>开户银行</label>
								<input id="bank" name="client.client_bank" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>银行账号</label>
								<input id="account" name="client.client_bankaccount" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>地税登记号</label>
								<input id="ltrn" name="client.client_landtaxregnum" class="form-control" type="text"/>
							</div>
							
							<div class="form-group col-md-5">
								<label>国税登记号</label>
								<input id="trn" name="client.client_nationtaxregnum" class="form-control" type="text"/>
							</div>					
					    </div>
					</form>

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
    <script type="text/javascript">
    function isEmptyObject(o){
    	var e;
    	for(e in o)
    		return !1;
    	return !0;
    }
    
    function changeEditable(){
    	$("#changeBtn").click(function(){
    		$("#name").attr({"disabled":false});
    		$("#area").attr({"disabled":false});
    		$("#level").attr({"disabled":false});
    		$("#satisfied").attr({"disabled":false});
    		$("#credit").attr({"disabled":false});
    		$("#address").attr({"disabled":false});
    		$("#postalcode").attr({"disabled":false});
    		$("#phone").attr({"disabled":false});
    		$("#fax").attr({"disabled":false});
    		$("#website").attr({"disabled":false});
    		$("#bern").attr({"disabled":false});
    		$("#corporation").attr({"disabled":false});
    		$("#regcap").attr({"disabled":false});
    		$("#annualsale").attr({"disabled":false});
    		$("#bank").attr({"disabled":false});
    		$("#account").attr({"disabled":false});
    		$("#ltrn").attr({"disabled":false});
    		$("#trn").attr({"disabled":false});
    		$("#changeBtn").hide();
    		$("#submitBtn").show();
    	
    	});
    }
   
    
    //获取地区、客户等级选项值
    function getDic(){
    	$.ajax({
    		type:'post',
    		url:'clientInfoManage_ajax/client_ajax!initAreasDics',
    		dataType:'json',
    		cache:false,
    		success:function(data){
    			var jsonStr = JSON.stringify(data);
				console.log("dicdata:  " + jsonStr);
    			if(isEmptyObject(data)){
    				alert("nullObject");
    				initClient();
    			}else{
    				for(var a in data.areas){
        				console.log("id:"+data.areas[a].dictionary_id+"   value:" + data.areas[a].dictionary_value);
        				$("#area").append("<option value='"+ data.areas[a].dictionary_id + "'>" + data.areas[a].dictionary_value + "</option>");
        			    
    				}
    				for(var c in data.clientLevels){
        				console.log("id:"+data.clientLevels[c].dictionary_id+"   value:" + data.clientLevels[c].dictionary_value);
        				$("#level").append("<option value='"+ data.clientLevels[c].dictionary_id + "'>" + data.clientLevels[c].dictionary_value + "</option>");
        			}
    				initClient();
    			}
    		},
	    	error:function(XMLHttpRequest,textStatus,errorThrown){
	    		alert("error:---"+errorThrown);
	    	}
    	});
    }
    
    
  
    
    
    //初始化客户信息
    function initClient(){
    	var clientid = '<%= (String)request.getParameter("clientid") %>';
    	console.log("clientid in request:"+clientid);
    	$.ajax({
    		type:'post',
    		url:'clientInfoManage_ajax/client_ajax!showClient?clientid='+ clientid ,
    		dataType:'json',
    		success:function(client){
    			var jsonStr = JSON.stringify(client);
				console.log(jsonStr);
				console.log("areaid: "+ client.client_area.dictionary_id);
    			if(isEmptyObject(client)){
    				$("#panelbody").html("<h3>获取客户信息失败</h3>");
    			}else{
    				$("#id").attr({
	    				"value":client.client_id,
	    				"disabled":true
	    			});
    				$("#name").attr({
	    				"value":client.client_name,
	    				"disabled":true
	    			});
    				$("#area").val(client.client_area.dictionary_id);
    				$("#area").attr({"disabled":true});
    				$("#manager").attr({
	    				"value":client.client_clientmanage.user_id,
	    				"disabled":true
	    			});
    				$("#level").val(client.client_level.dictionary_id);
    				$("#level").attr({"disabled":true});
    				$("#satisfied").val(client.client_csr);
    				$("#satisfied").attr({"disabled":true});
    				$("#credit").val(client.client_credit);
    				$("#credit").attr({"disabled":true});
    				$("#address").attr({
	    				"value":client.client_address,
	    				"disabled":true
	    			});
    				$("#postalcode").attr({
	    				"value":client.client_postalcode,
	    				"disabled":true
	    			});
    				$("#phone").attr({
	    				"value":client.client_phone,
	    				"disabled":true
	    			});
    				$("#fax").attr({
	    				"value":client.client_fax,
	    				"disabled":true
	    			});
    				$("#website").attr({
	    				"value":client.client_site,
	    				"disabled":true
	    			});
    				$("#bern").attr({
	    				"value":client.client_bern,
	    				"disabled":true
	    			});
    				$("#corporation").attr({
	    				"value":client.client_corporation,
	    				"disabled":true
	    			});
    				$("#regcap").attr({
	    				"value":client.client_regcapital,
	    				"disabled":true
	    			});
    				$("#annualsale").attr({
	    				"value":client.client_annualsales,
	    				"disabled":true
	    			});
    				$("#bank").attr({
	    				"value":client.client_bank,
	    				"disabled":true
	    			});
    				$("#account").attr({
	    				"value":client.client_bankaccount,
	    				"disabled":true
	    			});
    				$("#ltrn").attr({
	    				"value":client.client_landtaxregnum,
	    				"disabled":true
	    			});
    				$("#trn").attr({
	    				"value":client.client_nationtaxregnum,
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
		    getDic();
		    $("#submitBtn").hide();
		    changeEditable();
	 });
	</script>
       <!-- CUSTOM SCRIPTS -->

    <script src="assets/js/custom.js"></script>
    
    <s:debug></s:debug>

</body>
</html>