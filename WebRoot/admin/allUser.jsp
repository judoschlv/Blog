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
		function deleteCat(id,i){
			$.ajax({
				url:"deleteUser?username="+username,
				type:"post",
				async: false,
				success:function(){
					alert("删除用户成功!");
					$("#itemContainer tr:eq(" + i + ")").fadeOut(1000);
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
	  					<th>用户名称</th>
	  					<th>操作</th>
	  				</tr>
	  				<tbody id="itemContainer">
			  		<s:iterator value="#request.userList" var="user">	
						<tr>
							<td>${user.username}</td>
							<td>
								<a href="javascript:void(0)" title="删除" id="delete" onclick="deleteCat(${user.username})"><img src="admin/images/trash.gif"/></a>  
							</td>
						</tr>
					</s:iterator>
					</tbody>
				</table>
			</div>
		  
	   <div class="clear"></div>	   
	</div>
  </body>
</html>
