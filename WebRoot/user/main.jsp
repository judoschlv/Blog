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
    <link rel="stylesheet" type="text/css" href="<%=basePath%>user/images/main.css">
  </head>
  
  <body>
	  <center>
	  	<div id="sg">
	  		欢迎  ${sessionScope.username}
	  	</div>
	  </center>
  </body>
</html>
