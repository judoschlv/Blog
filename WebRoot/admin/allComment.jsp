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
    <title>所有评论</title> 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
	<script language="javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script>
		
		function deleteCom(id){
			$.ajax({
				url:"deleteComment?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("删除评论成功!");
				}
			});
		}
	</script>
  </head>
  
  <body>
    <div id="xjwz">
  		<span class="titletxt">所有评论</span>
	    <div class="articleList">
	    	<table class="table_article">
	    		<tr>
	    			<th  width="10%">序号</th>
	    			<th  width="20%">昵称</th>
	    			<th  width="60%">评论内容</th>
	    			<th  width="10%">操作</th>
	    		</tr>
	    			<% int i=1; %>
	    		<tbody id="itemContainer">
		            <s:iterator value="#request.allComm" var="comment">         
		    		<tr>
		    			<td><%= i %></td>
		    			<td><a href="showArticleByUsername?username=${comment.username}">${comment.username}</a></td>
		    			<td>${comment.content}</td>
		    			<td><a href="javascript:void(0)" title="删除" id="delete" onclick="deleteCom(${comment.id})"><img src="admin/images/trash.gif"/></a></td>
		    		</tr>
		    		<% i++; %>
	    			</s:iterator>
	    		</tbody>
	    	</table>
	    </div>
	</div>
  </body>
</html>
