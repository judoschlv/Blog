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
    <title>博客相册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/index.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/jPages.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>styles/animate.css">
	<script src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	<script src="<%=basePath%>js/jPages.js"></script>
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
		$("div.holder").jPages({
			containerID: "itemContainer",
			perPage:20,
      		delay:15,
      		first:"首页",
      		last:"尾页",
      		previous:"上一页",
      		next:"下一页"
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
                  <span class="active-page">关于</span>
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
					<ul id="itemContainer">
						<s:iterator value="#request.photoList" var="photo">
							<li class="nailthumb-container square-thumb list_p">
								<a href="javascript:void(0)">
									<img src="<%=basePath%>photo/${albumname}/${photo}"/>
								</a>
							</li>
						</s:iterator>
					</ul>
					<div class="clear"></div>
					<div class="holder"></div>
    			</div>
    		</div>		
    		<%@ include file="include/menu.jsp"%>
    	</div>
    </div>
    <%@ include file="include/footer.jsp"%> 
  </body>
  <!--========== jQuery (necessary for Bootstrap's JavaScript plugins) ==========-->
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="vendors/instafeed/instafeed.min.js"></script>
<script src="vendors/imagesLoaded/imagesloaded.pkgd.min.js"></script>
<script src="vendors/isotope/isotope.pkgd.min.js"></script>
<script src="js/theme.js"></script>
</html>
