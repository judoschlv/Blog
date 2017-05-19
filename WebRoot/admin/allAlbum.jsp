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
    <title>所有相册</title> 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/jquery.nailthumb.1.1.min.css">
	<script language="javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.nailthumb.1.1.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
  	<script>
		$(document).ready(function(){
			$(".nailthumb-container").nailthumb({});		
			$(".button_add").click(function(){
				if($("#titleval").val()==""){
					alert("相册名不能为空！");
					return false;
				}
				$(".form_add").ajaxSubmit(function(){
					alert("添加相册成功！");
					$("#main").load("admin/allAlbum.jsp");
				});
				return false;
			});
			$(".button_up").click(function(){
				if($("#uploadFile").val()==null || $("#uploadFile").val()==""){
					alert("请选择上传图片文件！");
					return false;
				}else{
					$.ajax({
					url:"photoUpload?albumName="+albumName,
					type:"POST",
					success:function(){
						alert("上传图片成功！");
						$("#main").load("admin/allAlbum.jsp");
						}
					});
					return false;
				}
				return false;
			});		
		});	
		
		function deleteAlbum(albumName){
			alert("dfd");
			$.ajax({
				url:"deleteAlbum?albumName="+albumName,
				type:"POST",
				async:false,
				success:function(){
					alert("删除相册"+albumName+"成功！");
					$("#main").load("admin/allAlbum.jsp");
				}
			});
		}
  	</script>
  </head>
  
  <body>
    <div id="xjwz">
  		<span class="titletxt">相册管理</span>
  		<s:action name="showAlbum" executeResult="true" ignoreContextParams="false"></s:action>	
  		<s:if test="#request.albumList=='none'">
  			<div id="album_left2">
	  			<span class="tips_album">
	  				暂时还没有相册哦！在右边新建一个相册吧！
	  			</span>
  			</div>
  		</s:if>
  		
  		<s:else>
	  		<div id="album_left">
	  			<table class="table_category">
	  				<tr>
	  					<th>序号</th>
	  					<th>相册名称</th>
	  					<th>操作</th>
	  				</tr>
	  				<s:set name="bl" value="1"/>
	  				<tbody id="itemContainer">
	  					<s:iterator value="#request.albumList" var="album">	
	  						<tr>
								<td><s:property value="#bl" /></td>
								<td>${album}</td>
								<td>
									<a href="javascript:void(0)" title="删除" onclick="deleteAlbum(${album})"><img src="admin/images/trash.gif"/></a>  
			    					<a href="javascript:void(0)" title="修改"><img src="admin/images/wrench.gif"/></a>
								</td>
							</tr>
							<s:set name="bl" value="#bl+1" />
	  					</s:iterator>
	  				</tbody>
	  			</table>
			</div>
		</s:else>
		
		<div id="album_right">
			<form action="addAlbum" method="post" class="form_add">
			<div class="title_album"> 
				<span class="title_t">添加相册</span>
				<input type="submit" value="提交" class="button_add"/>
			</div>
			<div class="nb">
		    	相册名称：
		    	<input type="text" name="albumName" class="text2" id="titleval"/><br/>
		    </div>
		    </form>

			<form action="photoUpload" method="post" enctype="multipart/form-data" id="form_up">
				<div class="title_album">
				 	<span class="title_t">上传图片</span>
				 	<input type="submit" value="提交" class="button_up"/>
				 </div>
				<div class="nb">
					<input type="file" name="myFile" id="uploadFile"/>
					<div class="select_album">
						上传至：
						<select name="albumName">
						<s:iterator value="#request.albumList" var="album">
							<option >${album}</option>
						</s:iterator>
						</select>
					</div>
				</div>
			</form>

	   </div> 
	   
	   <div class="clear"></div>
	   
	</div>
  </body>
</html>