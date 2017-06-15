$(document).ready(function(){ 
	$("#submitbtn1").click(function(){
		if($("#username").val()==""){
			alert("请输入用户名");
			return false;
		}
		$(".form1").ajaxSubmit(function(){ 
			alert("关注成功");	
			$("#main").load("index.jsp");
		}); 
		return false;
	});			
}); 