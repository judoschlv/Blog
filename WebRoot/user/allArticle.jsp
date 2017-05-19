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
		function deleteArt(id,i){
			$.ajax({
				url:"deleteArticle?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("删除成功!");
					$("#itemContainer tr:eq(" + i + ")").fadeOut(1000);
				}
			});
		}
	</script>
  </head>
  
  <body>
    <div id="xjwz">
  		<span class="titletxt">所有文章</span>
  		
	    <div class="articleList">
	    	<table class="table_article">
	    		<tr>
	    			<th  width="8%">序号</th>
	    			<th  width="35%">标题</th>
	    			<th  width="20%">发布时间</th>
	    			<th  width="11%">所属分类</th>
	    			<th  width="8%">评论量</th>
	    			<th  width="8%">点击量</th>
	    			<th  width="10%">操作</th>
	    		</tr>
	    		<tbody id="itemContainer">
	    		<s:set name="numi" value="0" />
	    		<s:set name="numj" value="1" />
	            <s:iterator value="#request.allArticle" var="art">         
	    		<tr>
	    			<td>${#numj }</td>
	    			<td>${art.title}</td>
	    			<td>${art.datetime}</td>
	    			<td>${art.categoryid}</td>
	    			<td>0</td>
	    			<td>${art.hasread}</td>
	    			<td><a href="javascript:void(0)" title="删除" id="delete" onclick="deleteArt(${art.id},${#numi})"><img src="admin/images/trash.gif"/></a>  
	    			</td>
	    		</tr>
	    		<s:set name="numi" value="#numi+1" />
	    		<s:set name="numj" value="#numj+1" />
	    		</s:iterator>
	    		</tbody>
	    	</table>
	    	<div class="holder"></div>
	    </div>
	</div>
  </body>
</html>
