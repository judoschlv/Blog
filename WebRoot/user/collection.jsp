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
    <title>收藏列表</title>    

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
		function deleteCollection(id){
			$.ajax({
				url:"deleteCollection?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("删除成功!");
				}
			});
		}
	</script>
  </head>
  
  <body>
    <div id="xjwz">
  		<span class="titletxt">我的收藏</span>
  		
	    <div class="articleList">
	    	<table class="table_article">
	    		<tr>
	    			
	    			<th  width="50%">博文标题</th>
	    		
	    			<th  width="50%">取消收藏</th>
	    		</tr>
	    		<tbody id="itemContainer">
	 
	            <s:iterator value="#request.allCollection" var="coll">         
	    		<tr>
	    			<td><a href="showArticle?id=${coll.id}">${coll.title}</a></td>
	    			<td><a href="javascript:void(0)" title="取消收藏" id="delete" onclick="deleteCollection(${coll.id})"><img src="admin/images/trash.gif"/></a>  
	    			</td>
	    		</tr>
	    		</s:iterator>
	    		</tbody>
	    	</table>
	    	<div class="holder"></div>
	    </div>
	</div>
  </body>
</html>
