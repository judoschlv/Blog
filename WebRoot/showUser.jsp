<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<s:action name="showCategory" executeResult="true" ignoreContextParams="false"></s:action>	
<s:action name="showAllArticleByHot" executeResult="true" ignoreContextParams="false"></s:action>
<!DOCTYPE html>
<html>


<head>
    <meta charset="utf-8">

    <title>${sessionScope.user}的博客主页</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">



<!-- Bootstrap css -->
<link type="text/css" rel='stylesheet' href="btts/css/bootstrap.min.css">

<!-- End Bootstrap css -->


<!-- Fancybox -->

<!-- End Fancybox -->

<link type="text/css" rel='stylesheet' href="fonts/fonts.css">


<link type="text/css" data-themecolor="default" rel='stylesheet' href="btts/css/main-default.css">


<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

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
<script language="javascript" src="<%=basePath%>editor/jquery-1.4.4.min.js"></script>
	<script language="javascript" src="<%=basePath%>editor/xheditor-1.1.14-zh-cn.min.js"></script>
	<script language="javascript" src="<%=basePath%>js/jquery.form.js"></script>
	<script language="javascript" src="<%=basePath%>js/top.js"></script>
<script>
	function addFollow(username){
			$.ajax({
				url:"addFollow?username2="+username,
				type:"post",
				async: false,
				success:function(){
					alert("关注用户成功");
				}
			});
				
		}
	function updateUserGold(userna){
			$.ajax({
				url:"updateUserGold?username3="+userna,
				type:"post",
				async: false,
				success:function(){
					alert("打赏用户成功");
				}
			});
				
		}
	</script>
</head>
<body>
<div class="mask-l" style="background-color: #fff; width: 100%; height: 100%; position: fixed; top: 0; left:0; z-index: 9999999;"></div> <!--removed by integration-->




<div class="j-menu-container"></div>

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
<div class="l-main-container">

    <div class="b-breadcrumbs f-breadcrumbs">
   
        <div class="container">
            <ul>
                <li><a href="index.jsp"><i class="fa fa-home"></i>首页</a></li>
                <li><i class="fa fa-angle-right"></i><span>${sessionScope.user}的博客主页</span></li>
            </ul>
        </div>
    </div>
 

    <div class="l-inner-page-container">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-push-3">
                    <div class="b-blog-listing__block">
                        <div class="b-blog-listing__block-top">
                            <div class=" view view-sixth">
    <img data-retina="" src="btts/img/blog/blog_listing.jpg" alt="">
   
</div>
                        </div>
                        <div class="b-infoblock-with-icon b-blog-listing__infoblock">
                            <a href="#" class="b-infoblock-with-icon__icon f-infoblock-with-icon__icon fade-in-animate hidden-xs">
                                <i class="fa fa-pencil"></i>
                            </a>
                            <div class="b-infoblock-with-icon__info f-infoblock-with-icon__info">
                                <a href="R1.jsp" class="f-infoblock-with-icon__info_title b-infoblock-with-icon__info_title f-primary-l b-title-b-hr f-title-b-hr">
                                    【置顶】欢迎来到${sessionScope.user}的个人博客首页  
                                </a>
                                <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text f-primary-b b-blog-listing__pretitle">
                                          
                              <h4>总文章数：<a href="#" class="f-more" style="font-size:18px">${sessionScope.anumber}</a></h4>
                                </div>
                                <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text c-primary b-blog-listing__text">
                                           
                                         </div>
                                <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="b-blog-listing__block">
                       
                        <div class="b-infoblock-with-icon b-blog-listing__infoblock">
                            <a href="#" class="b-infoblock-with-icon__icon f-infoblock-with-icon__icon fade-in-animate hidden-xs">
                                <i class="fa fa-video-camera"></i>
                            </a>
                            <div class="b-infoblock-with-icon__info f-infoblock-with-icon__info">
                               <s:iterator value="#request.allbycat" var="art">
                               <h1></h1>
                            <div class="b-infoblock-with-icon__info f-infoblock-with-icon__info">
                                <a href="showArticle?id=${art.id}" class="f-infoblock-with-icon__info_title b-infoblock-with-icon__info_title f-primary-l b-title-b-hr f-title-b-hr">
                                    ${art.title}
                                </a>
                                <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text f-primary-b b-blog-listing__pretitle">
                                                                              作者: <a href="#" class="f-more">${art.username}</a>  工作室:<a href="#" class="f-more"> Cynomys Studio</a>,  发布时间: ${art.datetime}
                                    <br/><i class="fa fa-comment">  访问量: ${art.hasread}</i>
                                </div>
                                <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text c-primary b-blog-listing__text">
                                   
                                </div>
                                <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text">
                                    <a href="showArticle?id=${art.id}" class="f-more f-primary-b">阅读全文</a>
                                </div>
                            </div>
    					<h1></h1>
    					<h1></h1>
    					</s:iterator>
                                
                              
                            </div>
                        </div>
                    </div>
              
              
                     <div class="b-blog-listing__block">
                       <div class="b-infoblock-with-icon b-blog-listing__infoblock">
                       <a href="#" class="f-infoblock-with-icon__info_title b-infoblock-with-icon__info_title f-primary-l b-title-b-hr f-title-b-hr">
                                                                           留言板
                                </a>
                        <form action="sendMessage" method="POST" class="form_comment">
	    					<textarea name="neirong" class="xheditor-mini" style="width: 600px;height: 100px;"></textarea>
	    					<div class="tijiao">
		    					<input type="submit" value="提交" class="btn_comment" id="comment_sub"/>
		    					<input type="reset" value="重置" class="btn_comment"/>
		    				</div>
		    				<input type="text" name="reply" class="comment_aid" value="${art.username}" style="visibility:hidden"/>
	    				</form>
                        
                        </div>
                        </div>
                        
                </div>

                <div class="visible-xs-block visible-sm-block b-hr"></div>
                <div class="col-md-3 col-md-pull-9">
                    <div class="row">
    
</div>
<div id="connect" class="row b-col-default-indent">
    <div class="col-md-12">
        <div class="b-categories-filter">
        <div class="image" >
                               <br/>
                               <center> <img src="images/face-a.jpg"/></center>
                               <br/>
                              
                               <center><a>${art.username}</a></center>
                               <br/>
                         <center>    粉丝数:<a href="#" class="f-more">${sessionScope.follower}</a>   
   关注数:<a href="#" class="f-more">${sessionScope.following}</a></center>
                            
                <div>
                   <div style="width:50%;padding:0;margin:0;float:right;box-sizing:border-box;">
                    <form action="addFollow" method="post">
    				<input type="text" name="username2" value="${sessionScope.user}"style="visibility:hidden">
    				<input type="submit" value="关注  ${sessionScope.user}"style="background:#ec8d61;color:white">
    				</form>
    				</div>
    				<div style="width:50%;padding:0;margin:0;float:center;box-sizing:border-box;">
    				<form action="updateUserGold" method="post">
    				<input type="text" name="userna" value="${sessionScope.user}"style="visibility:hidden">
    				<input type="submit" value="打赏 ${sessionScope.user} 10金币"style="background:#ec8d61;color:white">
    				</form>
    				</div>
    				<br/>
    			</div>
             </div>
                            <br/>
            <h4 class="f-primary-b b-h4-special f-h4-special--gray f-h4-special">博客分类</h4>
            <ul>
                              <s:iterator value="#request.categoryList" var="category">
	    					<li>
	    						<i class="fa fa-plus"></i>
	    						
	    						<a href="showArticleByCat?categoryid=${category.id}" class="link_a">${category.name}（${category.articlenum}）</a>
	    					</li>
	    				</s:iterator>
</ul>
        </div>
    </div>
    <div class="col-md-12">
        <h4 class="f-primary-b b-h4-special  f-h4-special--gray f-h4-special">推荐文章</h4>

        <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row">
            <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row">
    <div class="b-blog-short-post--popular col-md-12  col-xs-12 f-primary-b">
    
    
    <s:iterator value="#request.allArticleByHot" var="hotArticle">	
        <div class="b-remaining">
            <div class="b-blog-short-post__item_text f-blog-short-post__item_text">
                <a href="showArticle?id=${hotArticle.id}">${hotArticle.title}</a>
            </div>
            <div class="b-blog-short-post__item_date f-blog-short-post__item_date f-primary-it">
                ${hotArticle.datetime}
            </div>
        </div>

    	
	    					
	</s:iterator>
	    	    </div>			
	
</div>
        </div>
    </div>
    
</div>
                </div>
            </div>
        </div>
    </div>



</div>

<footer>
  <div class="b-footer-primary">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-xs-12 f-copyright b-copyright">Copyright  2017 - All Rights Reserved.</div>
            <div class="col-sm-8 col-xs-12">
                <div class="b-btn f-btn b-btn-default b-right b-footer__btn_up f-footer__btn_up j-footer__btn_up">
                    <i class="fa fa-chevron-up"></i>
                </div>
                <nav class="b-bottom-nav f-bottom-nav b-right hidden-xs">
                    <ul>
                        <li><a href="index.jsp">首页</a></li>
                        <li class="is-active-bottom-nav"><a href="#">个人主页</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
 
</footer>


<script src="btts/js/jquery/jquery-1.11.1.min.js"></script>
<!-- bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- end bootstrap -->


<!-- Modules -->
<script src="btts/js/modules/color-themes.js"></script>
<!-- End Modules -->

<!-- Fancybox -->

<!-- End Fancybox -->

<script src="btts/js/cookie.js"></script>




</body>


</html>