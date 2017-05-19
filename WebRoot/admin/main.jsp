<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>管理中心</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
  </head>
  
  <body>
	  <center>
	  	<div id="sg">
	  		欢迎使用能行天下博客后台管理系统
	  	</div>
	  </center>
  </body>
</html>
