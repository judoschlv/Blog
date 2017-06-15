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
    <title>用户管理</title>   
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
	<script language="javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script>
		function deleteUser(id){
			$.ajax({
				url:"deleteUser?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("删除用户成功!");
				}
			});
				
		}
		function updateUser(id){
			$.ajax({
				url:"updateUser?id="+id,
				type:"post",
				async: false,
				success:function(){
					alert("更新用户权限成功");
				}
			});
				
		}
	</script>
  </head>
  <body>
     <div id="xjwz">
  		<span class="titletxt">用户管理</span>
  		<s:action name="showUser" executeResult="true" ignoreContextParams="false"></s:action>	
	  		<div id="album_left">
	  			<table class="table_category">
	  				<tr>
	  					<th><center><h4>用户名称</h4></center></th>
	  					<th><center><h4>用户权限</h4></center></th>
	  					<th><center><h4>用户财富</h4></center></th>
	  					<th><center><h4>删除用户</h4></center></th>
	  				   <th><center><h4>更改权限*</h4></center></th>
	  				 
	  				</tr>

	  				<tbody id="itemContainer">
			  		<s:iterator value="#request.userList" var="user">	
						<tr>
							<td><a href="showArticleByUsername?username=${user.username}">${user.username}</a></td>
							<td>${user.type}</td>
							<td>${user.gold} 金币</td>
							<td>
								<a href="javascript:void(0)" title="删除" id="delete" onclick="deleteUser(${user.id})"><img src="admin/images/trash.gif"/></a>  
							</td>
							<td>
								<a href="javascript:void(0)" title="更改用户权限" id="update" onclick="updateUser(${user.id})"><img src="admin/images/wrench.gif"/></a>  
							</td>
						</tr>
					</s:iterator>
					</tbody>
				
				</table>
					<h5>*博主→游客/游客→博主</h5>
			</div>
		  
	   <div class="clear"></div>	   
	</div>
  </body>
</html>
