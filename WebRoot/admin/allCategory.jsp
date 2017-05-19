<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>分类管理</title>   
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
	<script language="javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script>
		$(document).ready(function(){		
			$(".button_add").click(function(){
				if($("#titleval").val()==""){
					alert("分类名不能为空！");
					return false;
				}
				$(".form_add").ajaxSubmit(function(){
					alert("添加分类成功！");
					$("#main").load("admin/allCategory.jsp");
				});
				return false;
			});
		});
		
		function deleteCat(id,i){
			$.ajax({
				url:"deleteCategory?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("删除分类成功!");
					$("#itemContainer tr:eq(" + i + ")").fadeOut(1000);
				}
			});
		}
	</script>
  </head>
  
  <body>
     <div id="xjwz">
  		<span class="titletxt">分类管理</span>
  		<s:action name="showCategory" executeResult="true" ignoreContextParams="false"></s:action>	
   		<s:if test="#request.categoryList=='none'">
  			<div id="album_left2">
	  			<span class="tips_album">
	  				暂时还没有文章分类哦！在右边新建一个分类吧！
	  			</span>
  			</div>
  		</s:if>
  		<s:else>
	  		<div id="album_left">
	  			<table class="table_category">
	  				<tr>
	  					<th>序号</th>
	  					<th>分类名称</th>
	  					<th>文章数目</th>
	  					<th>操作</th>
	  				</tr>
	  				<% int i=1; %>
	  				<tbody id="itemContainer">
			  		<s:iterator value="#request.categoryList" var="category">	
						<tr>
							<td><%= i %></td>
							<td>${category.name}</td>
							<td>${category.articlenum}</td>
							<td>
								<a href="javascript:void(0)" title="删除" id="delete" onclick="deleteCat(${category.id},<%=i-1%>)"><img src="admin/images/trash.gif"/></a>  
							</td>
						</tr>
						<% i++; %>
					</s:iterator>
					</tbody>
				</table>
			</div>
		</s:else>
		
		<div id="album_right">
			<form action="addCategory" method="post" class="form_add">
			<div class="title_album"> 
				<span class="title_t">新增分类</span>
				<input type="submit" value="提交" class="button_add"/>
			</div>
			<div class="nb">
		    	分类名称：
		    	<input type="text" name="name" class="text2" id="titleval"/><br/>
		    </div>
		    </form>

	   </div> 	   
	   <div class="clear"></div>	   
	</div>
  </body>
</html>
