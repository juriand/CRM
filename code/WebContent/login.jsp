<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>

<body style="background-color: #E2E2E2;">
  ${requestScope.resultremind_login}
    <div class="container">
        <div class="row text-center " style="padding-top:100px;">
            <div class="col-md-12">
                <h2><s:text name="title"/></h2>
            </div>
        </div>
         <div class="row "> 
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                           
                            <div class="panel-body">
                                <form role="form" action="user!login" method="post" >
                                    <hr />
                                    <h5>Enter Details to Login</h5>
                                       <br />
                                     <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" id ="userid" name="user_id" class="form-control" placeholder="Your Username " onblur="checkUserName()" />     
                                     </div>
                                     <div class="form-group input-group">
                                     <span id="hintName"></span>
                                     </div>
                                     <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                            <input type="password" id ="userpw" name="user_password" class="form-control"  placeholder="Your Password "  onblur="checkUserPass()"/>
                                     </div>
                                     <div class="form-group input-group">
                                     <span id="hintPw"></span>
                                     </div>
                                     <div class="form-group">
                                            <label class="checkbox-inline">
                                                <input type="checkbox" /> <s:text name="rememberMe"/>
                                            </label>
                                            <span class="pull-right">
                                                   <a href="index.jsp" ><s:text name="forgetPass"/> ? </a> 
                                            </span>
                                     </div>
                                     
                                     <input type="submit" class="btn btn-primary " value="Login Now" />
                          
                                    <hr />
                                    
                                 </form>
                            </div>
                           
                        </div>
                
                
        </div>
    </div>
<script type="text/javascript">
    function checkUserName() {
    	var userName = document.getElementById("userid").value;
    	var ts = document.getElementById("hintName");
    	if(userName.length == 0){
    		ts.innerHTML = "用户名不能为空";
    		ts.style.color = "red";
   		    return false;
    	}
    	ts.innerHTML = "";
    	return true;
	}
    function checkUserPass(){
    	var userPass = document.getElementById("userpw").value;
    	var ts = document.getElementById("hintPw");
    	if(userPass.length == 0){
    		ts.innerHTML = "密码不能为空";
    		ts.style.color = "red";
   		    return false;
    	}
    	ts.innerHTML = "";
    	return true;
    }
</script>
</body>
</html>