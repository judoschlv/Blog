<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>访问统计</title>    

	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/jPages.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/animate.css">
	<script language="javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script src="<%=basePath%>js/jPages.js"></script>
	<script>		
	$("div.holder").jPages({
			containerID: "itemContainer",
			perPage : 15,
      		delay : 15
		});
	</script>
  </head>
  
  <body>
    <div id="xjwz">
  		<span class="titletxt">访问统计</span>
  		
	    <div class="articleList">
	    	<table class="table_article">
	    		<tr>
	    			<th  width="5%">序号</th>
	    			<th  width="20%">IP地址</th>
	    			<th  width="20%">访问时间</th>
	    			<th  width="20%">访问的文章ID</th>
	    			<th  width="17">允许</th>
	    			<th  width="18">拒绝</th>
	    		</tr>
	    		<tbody id="itemContainer">
	    		<s:set name="numi" value="0" />
	    		<s:set name="numj" value="1" />
	            <s:iterator value="#request.allClickrate" var="art">         
	    		<tr>
	    			<td>${art.id}</td>
	    			<td>${art.ip}</td>
	    			<td>${art.time}</td>
	    			<td><a href="showArticle?id=${art.aid}">${art.aid}</a></td>
	    			<td><a href="javascript:void(0)" title="添加到白名单"><img src="admin/images/wrench.gif"/></a></td>
	    			<td><a href="javascript:void(0)" title="添加到黑名单"><img src="admin/images/wrench.gif"/></a></td>
	    			
	    		</tr>
	    		</s:iterator>
	    		</tbody>
	    	</table>
	    	<div class="holder"></div>
	    </div>
	</div>
  </body>
</html>
