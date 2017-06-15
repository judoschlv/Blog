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
    <title>新建文章</title>    
    <link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
	<script language="javascript" src="<%=basePath%>editor/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>editor/xheditor-1.1.14-zh-cn.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script language="javascript" src="<%=basePath%>admin/images/article.js"></script>
  </head>
  
  <body>
  	<s:action name="showCategory" executeResult="true" ignoreContextParams="false"></s:action>	
  	<div id="xjwz">
  		<span class="titletxt">新建文章</span>
	    <form action="addArticle" method="post" class="form1">
	    	<div class="form_tit">
	    	标题：<input type="text" name="title" class="text1" id="titleval"/><br/><br/>
	    	分类：<select name="categoryid">
	    			<s:iterator value="#request.categoryList" var="category">
							<option value="${category.id}">${category.name}</option>
					</s:iterator>
	    		</select>
	    	</div>
	    	<textarea name="content" class="xheditor {width:'600',height:'300'}" id="contentval"></textarea><br/>
	    	<div class="btns">
		    	<input type="submit" value="提交" class="btn1" id="submitbtn"/>
		    	<input type="reset" value="重置" class="btn1"/>
	    	</div>
	    </form>
	  </div>
  </body>
</html>
