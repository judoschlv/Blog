<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="<%=basePath%>">    
    <title>博客管理中心</title>   
    <meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/index.css">
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script language="javascript" src="<%=basePath%>js/top.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/images/main.css">
	<script language="javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<!--==========Dependency============-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/assets/owl.carousel.css">
<link rel="stylesheet" href="vendors/magnific-popup/magnific-popup.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kanit:500">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Josefin+Sans:600,700italic">
<link href='https://fonts.googleapis.com/css?family=Dosis:400,200,300,500,600,800,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,500,700italic,700,900,900italic' rel='stylesheet' type='text/css'>

<!--==========Theme Styles==========-->
<link href="css/style.css" rel="stylesheet">
<link href="css/theme/green.css" rel="stylesheet">

<!--========== HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries ==========-->
<!--========== WARNING: Respond.js doesn't work if you view the page via file:// ==========-->
<!--==========[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
<![endif]==========-->
	<script>
		$(document).ready(function(){
			var height_ck=$(window).height()-36;
			$("#main").load("admin/main.jsp");
			$("#menu").css("height",height_ck);
			$(".a1_1").click(function(){
				$("#main").load("admin/addArticle.jsp");
			});
			$(".a1_2").click(function(){
				$("#main").load("showAllArticle");
			});
			$(".a2").click(function(){
				$("#main").load("admin/allCategory.jsp");
			});
			$(".a3").click(function(){
				$("#main").load("admin/allAlbum.jsp");
			});
			$(".a4").click(function(){
				$("#main").load("getAllComment");
			});
			$(".a5").click(function(){
				$("#main").load("showAllClickrate");
			});
			$(".a6").click(function(){
				$("#main").load("admin/allUser.jsp");
			});	
			$(".a8").click(function(){
				$("#main").load("admin/main.jsp");
			});
			$(".ul1 li a").click(function(){
				$(this).toggleClass("li1_a");
			});		
		});
	</script>
  </head>
  
  <body>
  	<header class="row transparent white" data-spy="affix" data-offset-top="300" id="header">
    <div class="container">
        <div class="row top-header">
            <div class="col-sm-4 search-form-col">
                <form action="#" method="get" class="search-form">
                    <div class="input-group">
                        <span class="input-group-addon"><img src="images/search-icon-dark.png" alt=""></span>
                        <input type="search" class="form-control" placeholder="search">
                    </div>
                </form>
            </div>
            <div class="col-sm-4 logo-col text-center">
                <a href="index.jsp"><img src="images/logo-black-green.png" alt=""></a>
            </div>
            <div class="col-sm-4 menu-trigger-col" a href="index.jsp">
                <button class="menu-trigger black pull-right" a href="index.jsp">
                    <a font colour="black"  href="index.jsp">退出</font></a>
                    
                </button>
            </div>
        </div>        
    </div>

</header>


<div id="content">
  		<div id="menu">
  			<hr class="hr1">
  			<div class="link">
	  			<ul class="ul1">
	 				<li class="li1"><a href="javascript:void(0)" class="a8">首页</a></li>
	  				<li class="li1"><a href="javascript:void(0)" class="a1_1">新建文章 </a></li>
	  				<li class="li1"><a href="javascript:void(0)" class="a1_2">文章管理 </a></li>
	  				<li class="li1"><a href="javascript:void(0)" class="a2">分类管理 </a></li>
	  				<li class="li1"><a href="javascript:void(0)" class="a3">相册管理 </a></li>
	  				<li class="li1"><a href="javascript:void(0)" class="a4">评论管理</a></li>
	  				<li class="li1"><a href="javascript:void(0)" class="a5">访问统计</a></li>
	  				<li class="li1"><a href="javascript:void(0)" class="a6">用户管理</a></li>
	  			</ul>
  			</div>
  		</div>
  		<div id="main"></div>
  	</div>
  	<div class="clear"></div>
  	<div id="footer">Copyright &copy; 2017.Company name All rights reserved.</div>
  </body>
</html>
	