$(document).ready(function(){ 
	$("#submitbtn1").click(function(){
		if($("#username").val()==""){
			alert("请输入用户名");
			return false;
		}
		if($("#password").val()==""){
			alert("请输入密码");
			return false;
		}
		$(".form1").ajaxSubmit(function(){ 
			alert("注册成功");	
			$("#main").load("index.jsp");
		}); 
		return false;
	});			
}); 