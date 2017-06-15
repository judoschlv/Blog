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
    <title>文章列表</title>    

	<link rel="stylesheet" type="text/css" href="<%=basePath%>user/images/main.css">
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
  		<span class="titletxt">我的粉丝</span>
  		
	    <div class="articleList">
	    	<table class="table_article">
	    		<tr>
	    			
	    			<th  width="100%">用户名</th>
	    		

	    		</tr>
	    		<tbody id="itemContainer">
	 
	            <s:iterator value="#request.allFollowing" var="foll">         
	    		<tr>
	    			<td><a href="showArticleByUsername?username=${foll.following}">${foll.following}</a></td>    			
	    		</tr>
	    		</s:iterator>
	    		</tbody>
	    	</table>
	    	<div class="holder"></div>
	    </div>
	</div>
  </body>
</html>
