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
		function deleteArt(id,i){
			$.ajax({
				url:"deleteArticle?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("删除成功!");
				}
			});
		}
		function updateHot(id){
			$.ajax({
				url:"updateHot?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("更新文章推荐成功");
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
	    			<th  width="8%"><center>推荐</center></th>
	    			<th  width="35%"><center>标题</center></th>
	    			<th  width="20%"><center>发布时间</center></th>
	    			<th  width="5%"><center>分类</center></th>
	    			<th  width="6%"><center>赞！</center></th>
	    			<th  width="8%"><center>作者</center></th>
	    			<th  width="8%"><center>点击量</center></th>
	    			<th  width="5%"><center>操作</center></th>
	    			<th  width="5%"><center>更改</center></th>
	    		</tr>
	    		<tbody id="itemContainer">
	    		<s:set name="numi" value="0" />
	    		<s:set name="numj" value="1" />
	            <s:iterator value="#request.allArticle" var="art">         
	    		<tr>
	    			<td><center>${art.hot}</center></td>
	    			<td><center><a href="showArticle?id=${art.id}" id="title_art">${art.title}</a></center></td>
	    			<td><center>${art.datetime}</center></td>
	    			<td><center>${art.categoryid}</center></td>
	    			<td><center>${art.zan}</center></td>
	    			<td><center>${art.username}</center></td>
	    			<td><center>${art.hasread}</center></td>
	    			<td><a href="javascript:void(0)" title="删除" id="delete" onclick="deleteArt(${art.id})"><img src="admin/images/trash.gif"/></a>  
	    			</td>
	    			<td><a href="javascript:void(0)" title="更改文章是否推荐" id="update" onclick="updateHot(${art.id})"><img src="admin/images/wrench.gif"/></a>
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
