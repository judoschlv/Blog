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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/index.css">
	<script language="javascript" src="<%=basePath%>editor/jquery-1.4.4.min.js"></script>
	<script language="javascript" src="<%=basePath%>editor/xheditor-1.1.14-zh-cn.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script language="javascript" src="<%=basePath%>js/top.js"></script>
	<script>
		$(document).ready(function(){
			$("#comment_sub").click(function(){
				var username=$(".comment_txt").val();
				var content=$(".xheditor-mini").val();
				var aid=$(".comment_aid").val();
				if(username==""||username==null||content==""||content==null){
					alert("昵称或评论内容不能为空！");
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
                        <input type="search" class="form-control" placeholder="search">
                    </div>
                </form>
            </div>
            <div class="col-sm-4 logo-col text-center">
                <a href="index6.html"><img src="images/logo-black-green.png" alt=""></a>
            </div>
            <div class="col-sm-4 menu-trigger-col">
                <button class="menu-trigger black pull-right">
                    <span class="active-page">Blog Details</span>
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
                            <li class="active dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.html">Home Option 1</a></li>
                                    <li><a href="index2.html">Home Option 2</a></li>
                                    <li><a href="index3.html">Home Option 3</a></li>
                                    <li><a href="index4.html">Home Option 4</a></li>
                                    <li><a href="index5.html">Home Option 5</a></li>
                                    <li><a href="index6.html">Home Option 6</a></li>
                                </ul>
                            </li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="single.html">Blog Single 1</a></li>
                            <li><a href="single2.html">Blog Single 2</a></li>
                        </ul>
                        <ul class="nav column-menu white-bg">
                            <li><a href="single3.html">Blog Single 3</a></li>
                            
                            <li><a href="contact.html">contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4 subscribe-col">
                    <h5 class="widget-title">subscribe to our newsletter.</h5>
                    <form action="#" method="post" class="form-inline subscribe-form">                    
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm"><span>send</span></button>
                    </form>
                    <ul class="nav social-nav white">
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook-official"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>

<section class="row content-wrap">
    <div id="content">
    	<div id="main">
    		<div id="main_left">
				<div class="art_zw">
    				<span class="article_title">${art.title}</span>
    				<span class="article_date">发布于：${art.datetime}&nbsp;&nbsp; 归类于：<a href="showArticleByCat?categoryid=${art.categoryid}">${categoryName}</a></span>	
 					<div class="article_content">${art.content}</div>
 					<div class="comment">
 						<span class="txt_c">共${commentNum}条评论</span>
	    				<form action="addComment" method="POST" class="form_comment">
	    					<textarea name="content" class="xheditor-mini"></textarea>
	    					<div class="tijiao">
	    						请输入昵称：<br/>
		    					<input type="text" name="username" class="comment_txt"/>
		    					<input type="submit" value="提交" class="btn_comment" id="comment_sub"/>
		    					<input type="reset" value="重置" class="btn_comment"/>
		    				</div>
		    				<input type="text" name="aid" class="comment_aid" value="${art.id}" style="visibility:hidden"/>
	    				</form>
	    				<div class="clear"></div>
	    			</div>
	    			<s:iterator value="#request.commentList" var="com">
	    			<div class="commentlist">
	    				<div class="touxiang"><img src="<%=basePath%>images/duface.png"/></div>
	    				<div class="comment_zw">
	    					<span class="comment_username">${com.username }</span>
	    					<span class="comment_content">${com.content }</span>
	    				</div>
	    				<div class="clear"></div>
	    			</div>
	    			</s:iterator>
    			</div>
    		</div>		
    		<%@ include file="include/menu.jsp"%>
    	</div>
    </div>
</section>

<!--Footer-->
<footer class="row" id="footer">
    <div class="container">
        <div class="row top-footer">
            <div class="widget col-sm-3 widget-about">
                <div class="row m0"><a href="index.html"><img src="images/logo-black-green.png" alt=""></a></div>
            </div>
            <div class="widget col-sm-5 widget-menu">
                <div class="row">
                    <ul class="nav column-menu white-bg">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="single.html">Blog Single 1</a></li>
                        <li><a href="single2.html">Blog Single 2</a></li>
                    </ul>
                    <ul class="nav column-menu white-bg">
                        <li><a href="single3.html">Blog Single 3</a></li>
                        
                        <li><a href="contact.html">contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget col-sm-4 widget-subscribe">
                <h5 class="widget-title">subscribe to our newsletter.</h5>
                <form action="#" method="post" class="form-inline subscribe-form">                    
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email">
                    </div>
                    <button type="submit" class="btn btn-primary btn-sm"><span>send</span></button>
                </form>
            </div>
        </div>
        <h5 class="copyright">Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></h5>
    </div>
</footer>

<!--========== jQuery (necessary for Bootstrap's JavaScript plugins) ==========-->
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="vendors/instafeed/instafeed.min.js"></script>
<script src="vendors/imagesLoaded/imagesloaded.pkgd.min.js"></script>
<script src="vendors/isotope/isotope.pkgd.min.js"></script>
<script src="vendors/flexslider/jquery.flexslider-min.js"></script>
<script src="js/theme.js"></script>
</body>
</html>
