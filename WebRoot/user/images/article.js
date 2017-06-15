$(document).ready(function(){ 
	$("#submitbtn").click(function(){
		if($("#titleval").val()==""){
			alert("标题不能为空！");
			return false;
		}
		if($("#contentval").val()==""){
			alert("内容不能为空！");
			return false;
		}
		$(".form1").ajaxSubmit(function(){ 
			alert("添加成功！");		
		}); 
		return false;
	});			
}); 