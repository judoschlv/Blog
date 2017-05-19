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
    <title>文章分类</title>
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
                  <span class="active-page">欢迎${sessionScope.username}</span>
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
               </form>
               <h1></h1>
               <form action="loginAction_d"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>管理</span></button>
               </form>
               </s:elseif> 
               <s:elseif test="#session.type=='游客'" >
               <form action="loginAction_b"method="post">
               <button type="submit" class="btn btn-primary btn-sm"><span>登出</span></button>
               </form>
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
  <body>
    <div id="content">
  		
  		
    	<div id="main">
    		<div id="main_left">
				<div class="art_zw">
    				<ul id="itemContainer">
    					<s:iterator value="#request.allbycat" var="art">
    					<li>
    						<img src="<%=basePath%>images/list.jpg" align="absmiddle" class="img_list">
    						<a href="showArticle?id=${art.id}">${art.title}</a>
    						<span class="art_datetime">&nbsp;&nbsp;发布于：${art.datetime}</span>
    					</li>
    					</s:iterator>
    				</ul>
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
