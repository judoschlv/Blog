﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>博主介绍</title>

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
                <a href="index.jsp"><img src="images/logo-black-green.png" alt=""></a>
            </div>
            <div class="col-sm-4 menu-trigger-col">
                <button class="menu-trigger black pull-right">
                    <span class="active-page">欢迎  ${sessionScope.username}</span>
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

<section class="row page-content-wrap">
    <div class="container">
        <h2 class="page-title text-center">关于我</h2>
        <div class="row">
            <div class="col-md-8 page-contents">
                <div class="row page-content">
                    <img src="images/author.jpg" alt="" class="img-responsive">
                    
                    <div class="contents row">
                        <h4>
这个团队的建立或许只是一个偶然，但这个团队会成为一个团队绝对不是偶然，他们拥有非常棒且有活力的年轻团体，有想象力，有创造力，在这里，你的想像，或许并不是想像
团队的成员并不是非常的多，但绝对都是精英级别的软件爱好者，如果你看到了这个网页，正好也有需要团队做的项目，也愿意相信这个团队，那么请联系我们吧</h4>
                    
                        
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <p>It has survived not only five centuries, remaining essentially unchanged. <a href="www.mywebsite.com">www.mywebsite.com</a> it was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                            </div>
                            <div class="col-sm-6">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="col-md-4 sidebar">  
                <!--Twitter Widget-->
                <aside class="row m0 widget widget-twitter">
                    <div class="widget-twitter-inner">
                        <h5 class="widget-meta"><i class="fa fa-twitter"></i>Twitter feed <a href="http://twitter.com/chivalricblog">@chivalricblog</a></h5>
                        <div class="row tweet-texts">
                            <p>Check out new post on my blog <a href="http://twitter.com/#natureshot">#natureshot</a> <a href="http://bit.ly/blog">http://bit.ly/blog</a></p>
                        </div>
                        <div class="row timepast">1 day ago</div>
                    </div>
                </aside>
                <!--Instagram Widget-->
                <aside class="row m0 widget widget-instagram">
                    <div class="widget-instagram-inner">
                        <h5 class="widget-meta"><i class="fa fa-twitter"></i>instagram feed <a href="http://twitter.com/chivalricblog">@chivalricblog</a></h5>
                        <div id="instafeed"></div>
                    </div>
                </aside>
                <aside class="row m0 widget widget-facebook">
                    <div class="widget-inner widget-facebook-inner">
                        <a href="#" class="facebook-link"><i class="fa fa-facebook-square"></i>find us on facebook</a>
                    </div>                    
                    <ul class="nav social-nav">
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook-official"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                    </ul>
                </aside>
            </div>
        </div>
    </div>
</section>

<footer class="row" id="footer">
    <div class="container">
        <div class="row top-footer">
            <div class="widget col-sm-3 widget-about">
                <div class="row m0"><a href="index.jsp"><img src="images/logo-black-green.png" alt=""></a></div>
            </div>
            <div class="widget col-sm-5 widget-menu">
                <div class="row">
                    <ul class="nav column-menu white-bg">
                        <li><a href="article.jsp">文章</a></li>
                            <li><a href="category.jsp">分类</a></li>
                           
                            
                        </ul>
                        <ul class="nav column-menu black-bg">
                           <li><a href="photo.jsp">相册</a></li>
                            
                            <li><a href="about.jsp">关于我</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget col-sm-4 widget-subscribe">
                <h5 class="widget-title">关注我的更多动态</h5>
                <form action="#" method="post" class="form-inline subscribe-form">                    
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="邮箱">
                    </div>
                    <button type="submit" class="btn btn-primary btn-sm"><span>发送</span></button>
                </form>
            </div>
        </div>
        <h5 class="copyright">Copyright Cynomys™; 2017 Blog, All Rights Reserved</a></h5>
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
<script src="js/theme.js"></script>
</body>
</html>