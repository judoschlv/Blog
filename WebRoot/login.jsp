<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <title>用户 注册</title>
	<link rel="stylesheet" type="text/css" href="styles/login.css">
	<script language="javascript" src="js/jquery-1.10.1.min.js"></script>
	
  </head>
  <body>
    	<div class="title"><span class="tit">用户注册</span></div>
    	<div class="main">
	    	<form action="AddUser" method="post">
	    		<label>用户名</label>
	    		<input type="text" name="username"/><br>
	    		<label>密码</label>
	    		<input type="text" name="password"/><br>
	    		<div class="submit">
	    			<input type="submit" value="注 册" class="btn"/>
	    		</div>
	    	</form>
    </div>
    <div id="footer">Copyright Cynomys™; 2017 Blog, All Rights Reserved</div>
  </body>
</html>
