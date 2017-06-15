<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--========== The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags ==========-->
    <title>博客正文</title>
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/sfblog/styles/index.css">
	
	<script language="javascript" src="http://localhost:8080/sfblog/editor/jquery-1.4.4.min.js"></script>
	<script language="javascript" src="http://localhost:8080/sfblog/editor/xheditor-1.1.14-zh-cn.min.js"></script>
	<script language="javascript" src="http://localhost:8080/sfblog/js/jquery.form.js"></script>
	<script language="javascript" src="http://localhost:8080/sfblog/js/top.js"></script>
	<script>
		$(document).ready(function(){
			$("#comment_sub").click(function(){
				var content=$(".xheditor-mini").val();
				var aid=$(".comment_aid").val();
				if(content==""||content==null){
					alert("评论内容不能为空！");
					return false;
				}else{
					$(".form_comment").ajaxSubmit(function(){
						alert("添加评论成功！");
						$(".form_comment").resetForm();					
					});
				}
				return false;
			});		
		});
	</script>
<!--==========Dependency============-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/assets/owl.carousel.css">
<link rel="stylesheet" href="vendors/magnific-popup/magnific-popup.css">
<link rel="stylesheet" href="vendors/flexslider/flexslider.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kanit:500">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Josefin+Sans:600,700italic">
<link href='https://fonts.googleapis.com/css?family=Dosis:400,200,300,500,600,800,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,500,700italic,700,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>

<!--==========Theme Styles==========-->
<link href="css/style.css" rel="stylesheet">
<link href="css/theme/green.css" rel="stylesheet">

<!--========== HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries ==========-->
<!--========== WARNING: Respond.js doesn't work if you view the page via file:// ==========-->
<!--==========[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
<![endif]==========-->
</head>
<body class="home">

<header class="row transparent white" data-spy="affix" data-offset-top="300" id="header">

    <div class="container">
        <div class="row top-header">
            <div class="col-sm-4 search-form-col">
                <form action="#" method="get" class="search-form">
                    <div class="input-group">
                        <span class="input-group-addon"><img src="images/search-icon-dark.png" alt=""></span>
                        <input type="search" class="form-control" placeholder="搜索">
                    </div>
                </form>
            </div>
            <div class="col-sm-4 logo-col text-center">
            
                <a href="index.jsp" action="loginAction"><img src="images/logo-black-green.png" alt=""></a>
            </div>
            <div class="col-sm-4 menu-trigger-col">
                <button class="menu-trigger black pull-right">
                    <span class="active-page">欢迎  ${sessionScope.username}  </span>
                    <img src="images/menu-align-dark.png" alt="" class="icon-burger">
                    <img src="images/menu-close-dark.png" alt="" class="icon-cross">
                </button>
             
            </div>
        </div>        
    </div>
    <div class="row menu-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 menu-col">
                    <div class="row">
                        <ul class="nav column-menu white-bg">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">首页 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.html">Home Option 1</a></li>
                                    <li><a href="index2.html">Home Option 2</a></li>
                                    <li><a href="index3.html">Home Option 3</a></li>
                                    <li><a href="index4.html">Home Option 4</a></li>
                                    <li><a href="index5.html">Home Option 5</a></li>
                                    <li><a href="index6.html">Home Option 6</a></li>
                                </ul>
                            </li>
                            <li><a href="article.jsp">文章</a></li>
                            <li><a href="category.jsp">分类</a></li>
                           
                            
                        </ul>
                        <ul class="nav column-menu black-bg">
                            <li><a href="photo.jsp">相册</a></li>
                            
                            <li><a href="about.jsp">关于我</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4 subscribe-col">
                   
                 
                   <form action="loginAction" method="post" class="form-inline subscribe-form">
                     <input type="text" name="username" class="form-control" placeholder="账号">                    
                        <div class="form-group">
                            
                            <input type="password"  name="password" class="form-control" placeholder="密码">
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm"><span>登陆</span></button>
                    </form>

                    
                </div>
            </div>
        </div>
    </div>
</header>

  <body>
    <div id="content">
  		
  		
    	<div id="main">
    		<div id="main_left">
				<div class="art_zw">
    				<span class="article_title">[简讯]jQuery 1.7.2正式版发布！</span>
    				<span class="article_date">作者:panhao&nbsp;&nbsp;发布于：2017-05-19 00:00:00&nbsp;&nbsp; 归类于：<a href="showArticleByCat?categoryid=7">jquery</a></span>	
 					<div class="article_content"><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">jQuery 1.7.2正式版发布。该版本在1.7.1的基础上修复了大量的bug，并改进了部分功能。而相比于1.7.2 RC1，只修复了<a target="_blank" href="http://bugs.jquery.com/ticket/11469" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">一个bug</a>。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><img alt="" src="http://cms.csdnimg.cn/articlev1/uploads/allimg/120323/0U94634X-0.jpg" style="vertical-align: middle; border: none; " /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">值得注意的是：如果你正在使用jQuery Mobile，请使用最新的jQuery 1.7.2和jQuery Mobile 1.1这两个版本，因为之前的jQuery Mobile版本还基于jQuery core 1.7.1或更早的版本。 更多详情参看<a target="_blank" href="http://blog.jquery.com/2012/03/21/jquery-1-7-2-released/" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">jquery</a>。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">下载地址：</p><ul style="margin: 0px 0px 1em 20px; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><li style="margin: 0px; padding: 0px; list-style: disc; text-decoration: none; "><a href="http://code.jquery.com/jquery-1.7.2.min.js" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><span style="color:#176092;">http://code.jquery.com/jquery-1.7.2.min.js</span></a><span>&nbsp;</span>(minified, production)</li><li style="margin: 0px; padding: 0px; list-style: disc; text-decoration: none; "><a href="http://code.jquery.com/jquery-1.7.2.js" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><span style="color:#176092;">http://code.jquery.com/jquery-1.7.2.js</span></a><span>&nbsp;</span>(unminified, debug)</li></ul>
 						 					</div>
 					
	    			
	    			
    		</div>		
    		

    			</div> 	
    		</div>


    	</div>

         
    </div>
      
    <div class="clear"></div>
   
	<div id="tbox">
		<a id="gotop" href="javascript:void(0)" title="回到顶部"></a>
	</div>

      <!--========== jQuery (necessary for Bootstrap's JavaScript plugins) ==========-->

<script src="js/theme.js"></script>
</body>
</html>
 