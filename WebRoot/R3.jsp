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
                    <span class="active-page">欢迎  </span>
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
    				<span class="article_title">Hallo.js：一款所见即所得的Web编辑器</span>
    				<span class="article_date">作者:zouliwei&nbsp;&nbsp;发布于：2017-05-19 00:00:00&nbsp;&nbsp; 归类于：<a href="showArticleByCat?categoryid=8">前端那些事儿</a></span>	
 					<div class="article_content"><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">Hallo.js是一个简单的富文本Web编辑器，基于jQuery UI并且利用<a href="https://developer.mozilla.org/en/rich-text_editing_in_mozilla" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">HTML5的contentEditable</a>实现所见即所得。其目标并不是取代当今非常流行的编辑器，如<a href="http://aloha-editor.org/" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">Aloha</a>，而是给开发者提供一种更简单、更愉快的用户编辑体验。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">Hallo.js是由Henri Bergius为IKS项目开发的一款免费软件，使用CoffeeScript开发，遵循MIT许可协议，托管在<a href="https://github.com/bergie/hallo" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">GitHub</a>上。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/18/51e7b613df45c.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/18/51e7b613df45c.jpg" style="vertical-align: middle; border: none; width: 475.26132404181186px; height: 220px; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">官网：<a href="http://hallojs.org/" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">http://hallojs.org/</a></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">托管地址及教程：<a href="https://github.com/bergie/hallo" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">https://github.com/bergie/hallo</a></p>
 						<center> <button type="submit" class="btn btn-primary btn-sm"><span>关注</span></button>
 						  <button type="submit" class="btn btn-primary btn-sm"><span>点赞</span></button></center>
 					</div>
 					<div class="comment">
 						<span class="txt_c">共0条评论</span>
	    				<form action="addComment" method="POST" class="form_comment">
	    					<textarea name="content" class="xheditor-mini"></textarea>
	    					<div class="tijiao">
		    					<input type="submit" value="提交" class="btn_comment" id="comment_sub"/>
		    					<input type="reset" value="重置" class="btn_comment"/>
		    				</div>
		    				<input type="text" name="aid" class="comment_aid" value="8" style="visibility:hidden"/>
	    				</form>
	    				<div class="clear"></div>
	    				
	    			</div>
	    			
    			</div>
    			    
    		</div>		
    		

			
  				
  				
    		<div id="main_right">
    			
    		
    			<div class="ck_right">
    				<span class="title_right">文章分类</span>
    				<ul>
	    				
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=3" class="link_a">java学习（4）</a>
	    					</li>
	    				
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=4" class="link_a">随笔（0）</a>
	    					</li>
	    				
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=5" class="link_a">关于工作（0）</a>
	    					</li>
	    				
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=6" class="link_a">关于生活（0）</a>
	    					</li>
	    				
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=7" class="link_a">jquery（1）</a>
	    					</li>
	    				
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=8" class="link_a">前端那些事儿（2）</a>
	    					</li>
	    				
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticleByCat?categoryid=9" class="link_a">博主介绍（2）</a>
	    					</li>
	    				
    				</ul>
    			</div>
    			
    			<div class="ck_right">
    				<span class="title_right">博客相册</span>
    				<ul>
    						
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showPhoto?albumname=none" class="link_a">none</a>
	    					</li>
	    				
    				</ul>
    			</div>    		
    			
    			<div class="ck_right">
    				<span class="title_right">最新文章</span>
    				<ul>
    						
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=11" class="link_a">让代码飞一会儿，超级有用的CSS编码工具集</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=10" class="link_a">[简讯]jQuery 1.7.2正式版发布！</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=9" class="link_a">10款最佳CSS/jQuery开源图片说明</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=8" class="link_a">Hallo.js：一款所见即所得的Web编辑器</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=7" class="link_a">Java EE 8愿望清单：缺少这些，Java EE将不会完美</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=6" class="link_a">提升网站知名度的方法</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=3" class="link_a">小雪</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=2" class="link_a">小童</a>
	    					</li>
	    					
	    					<li>
	    						<img src="images/list.jpg" align="absmiddle" class="img_list"/>
	    						<a href="showArticle?id=1" class="link_a">小等</a>
	    					</li>
	    				
    				</ul>
    			</div> 	
    		</div>


    	</div>

         
    </div>
      
    <div class="clear"></div>
    <div id="footer">Copyright Cynomys™; 2017 Blog, All Rights Reserved</div>
	<div id="tbox">
		<a id="gotop" href="javascript:void(0)" title="回到顶部"></a>
	</div>

      <!--========== jQuery (necessary for Bootstrap's JavaScript plugins) ==========-->

<script src="js/theme.js"></script>
</body>
</html>
 