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
<meta http-equiv="pragma" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/index.css">
	<script language="javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/top.js"></script>
	
<!--========== The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags ==========-->
<base href="<%=basePath%>">
<title>能行天下的博客</title>

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

<header class="row transparent black header1" data-spy="affix" data-offset-top="0" id="header">
    <div class="container">
        <div class="row top-header">
            <div class="col-sm-4 search-form-col">
                <form action="#" method="get" class="search-form">
                    <div class="input-group">
                        <span class="input-group-addon"><img src="images/search-icon-white.png" alt=""></span>
                        <input type="search" class="form-control" placeholder="搜索">
                    </div>
                </form>
            </div>
            <div class="col-sm-4 logo-col text-center">
                <a href="index.jsp"><img src="images/logo-white-green.png" alt=""></a>
            </div>
            <div class="col-sm-4 menu-trigger-col">
                <button class="menu-trigger pull-right">
                    <span class="active-page">欢迎  ${sessionScope.username}</span>
                    <img src="images/menu-align-white.png" alt="" class="icon-burger">
                    <img src="images/menu-close-white.png" alt="" class="icon-cross">
                </button>
            </div>
        </div>        
    </div>
    <div class="row menu-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 menu-col">
                    <div class="row">
                    <s:action name="showCategory" executeResult="true" ignoreContextParams="false"></s:action>	
                        <ul>
	    				<s:iterator value="#request.categoryList" var="category">
	    					<li>
	    						<a href="showArticleByCat?categoryid=${category.id}" color="fff">${category.name}（${category.articlenum}）</a>
	    					</li>
	    				</s:iterator>
    				</ul>
                    </div>
                </div>       
           <s:action name="loginAciton" executeResult="true" ignoreContextParams="false"></s:action>	
              <s:if test="#session.type=='管理员'" >
             
               <form action="loginAction_b"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>登出</span></button>
               </form>
               <h1></h1>
               <form action="loginAction_c"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>后台</span></button>
               </form>
             
               </s:if>
                <s:elseif test="#session.type=='博主'" >
             
                              
        <form action="loginAction_b"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>登出</span></button>
               </form><h1></h1>
<form action="loginAction_d"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>管理</span></button>
               </form><h1></h1>
                                
                          
                             </s:elseif> 
               
               
               
               <s:elseif test="#session.type=='游客'" >
               <form action="loginAction_b"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>登出</span></button>
               </form>
               <br/>
              <form action="loginAction_d"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>管理</span></button>
               </form><h1></h1>
               </s:elseif>
               <s:else>
                <div class="col-sm-4 subscribe-col">
                    <form action="loginAction" method="post" class="form-inline subscribe-form">
                     <input type="text" name="username" class="form-control" placeholder="账号">                    
                        <div class="form-group">   
                            <input type="password"  name="password" class="form-control" placeholder="密码">
                            <h6>没有账号？点击<a href="addUser.jsp" ><font color="#fff">注册</font> </a></h6>
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm"><span>登陆</span></button>
                    </form>   
                </div>  
                </s:else>               
            </div>
        </div>
    </div>
</header>

<section class="row featured-post-carousel">
    <div class="item post">
        <img src="images/featured-posts/1.jpg" alt="" class="img-responsive main-bg">
        <div class="post-content">
            <div class="container">
                <h5 class="post-meta"><i>in</i> <a href="http://localhost:8080/sfblog/showArticle?id=1">Catswhocode</a> | <a href="#">2017-03-19</a></h5>
                <h2 class="post-title">
                
                <a href="R1.jsp">让代码飞一会儿，超级有用的CSS编码工具集</a></h2>
                <a href="R1.jsp" class="btn btn-primary"><span>阅读</span></a>
            </div>
        </div>
    </div>
    <div class="item post">
        <img src="images/featured-posts/1-1.png" alt="" class="img-responsive main-bg">        
        <div class="post-content">
            <div class="container">
                <h5 class="post-meta"><i>in</i> <a href="http://localhost:8080/sfblog/showArticle?id=1">s1v1nt11n</a> | <a href="#">2016-07-19</a></h5>
                <h2 class="post-title"><a href="R2.jsp">[简讯]jQuery 1.7.2正式版发布！</a></h2>
                <a href="R2.jsp" class="btn btn-primary"><span>阅读</span></a>
            </div>
        </div>
    </div>
    <div class="item post">
        <img src="images/featured-posts/1-2.jpg" alt="" class="img-responsive main-bg">        
        <div class="post-content">
            <div class="container">
                <h5 class="post-meta"><i>in</i> <a href="http://localhost:8080/sfblog/showArticle?id=2">phaano</a> | <a href="#">2017-05-14</a></h5>
                <h2 class="post-title"><a href="R3.jsp">Hallo.js：一款所见即所得的Web编辑器</a></h2>
                <a href="R3.jsp"" class="btn btn-primary"><span>阅读</span></a>
            </div>
        </div>
    </div>
</section>

<section class="row content-wrap">
    
   	<div id="content">
    	<div id="main">
            <article class="col-sm-4 post post-masonry post-format-video">
    		<div id="main_left">
    			<s:action name="showTopTenArticle" executeResult="true" ignoreContextParams="false"></s:action>
    			<s:set name="num" value="1" />
    			<s:iterator value="#request.topTenArticle" var="art"> 
				<s:if test="#num==1">
    				<div class="art_list">
    					<div class="artlist_left"><s:property value="#num" /></div>
    					<div class="artlist_right">
		    					<div class="post-title">
		    						<a href="showArticle?id=${art.id}" id="title_art">${art.title}</a>
		    						<span class="art_oth">发布于：${art.datetime}&nbsp;</span>
		    						<span class="art_oth">作者:<a href="showArticleByUsername?username=${art.username}">${art.username}</a></span>
		    					</div>
		    					<div class="clear"></div>
	    					<div class="art_content">${art.content}</div>
    					</div>
    				</div>
    				<div class="clear"></div>
				</s:if>
				<s:else>
					<div class="art_list">
    					<div class="artlist_left"><s:property value="#num" /></div>
    					<div class="artlist_right">
		    					<span class="post-title">
		    						<a href="showArticle?id=${art.id}">${art.title}</a>
		    					</span>
		    					<span class="art_oth">发布于：${art.datetime}&nbsp;&nbsp;</span>
		    					<span class="art_oth">作者:<a href="showArticleByUsername?username=${art.username}">${art.username}</a> </span>
    					</div>
    				</div>
    				<div class="clear"></div>
				</s:else>
    			<s:set name="num" value="#num+1" />
    			</s:iterator>
    		</div>
    		</article>
    		<%@ include file="include/menu.jsp"%> 	
    	</div>
    </div>   
  
</section>

<!--Footer-->
<footer class="row" id="footer">
    <div class="container">
        <div class="row top-footer">
            <div class="widget col-sm-3 widget-about">
                <div class="row m0"><a href="index.jsp"><img src="images/logo-black-green.png" alt=""></a></div>
            </div>
            <div class="widget col-sm-5 widget-menu">
                <div class="row">
                    <ul class="nav column-menu white-bg">
                       
                            <li><a href="cash.jsp">充值</a></li>
                           
                            
                        </ul>
                        <ul class="nav column-menu black-bg">
                        
                            
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
        <h5 class="copyright">Copyright Cynomys™; 2017 Blog, All Rights Reserved</a> <s:action name="showTodayClickrate" executeResult="true" ignoreContextParams="false"></s:action>
    		        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日浏览数 ${sessionScope.click}</h5>
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
