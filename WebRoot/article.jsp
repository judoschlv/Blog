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
                
          
            </div>
        </div>
    </div>
</header>

  <body>
    <div id="content">
  		
  		 <s:action name="AddFollow" executeResult="true" ignoreContextParams="false"></s:action>	
    	<div id="main">
    		<div id="main_left">
				<div class="art_zw">
    				<span class="article_title">${art.title}</span>
    				<br/>
    				<center><span>作者:<a href="showArticleByUsername?username=${art.username}">${art.username}</a></span></center>
    				<form action="addFollow" method="post">
    				<input type="text" name="username2" value="${art.username}"style="visibility:hidden">
    				<center><input type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关注${art.username}" style="border:none;background:url('images/follow.png') left top no-repeat;width:100px; height:22px;"></center>
    				</form>
    				<span class="article_date">发布于：${art.datetime}&nbsp;&nbsp; 归类于：<a href="showArticleByCat?categoryid=${art.categoryid}">${categoryName}</a>&nbsp;&nbsp;&nbsp;&nbsp;赞！${art.zan}&nbsp;&nbsp;&nbsp;&nbsp;已读人数:${art.hasread}</span>
    				
 					<div class="article_content">${art.content}
 					<form action="updateArticleZan" method="post">
    				<input type="text" name="id" value="${art.id}"style="visibility:hidden"><br/>
    				<center><input type="submit"  value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;赞！" style="border:none;background:url('images/good.png') left top no-repeat;width:60px; height:22px;" /></center>
    				</form>
    				<form action="addCollection" method="post">
    				<input type="text" name="aid" value="${art.id}"style="visibility:hidden"><br/>
    				<center><input type="submit"  value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;收藏" style="border:none;background:url('images/collection.png') left top no-repeat;width:60px; height:22px;" /></center>
    				</form>
    				
 					</div>
 					<div class="comment">
 						<span class="txt_c">共${commentNum}条评论</span>
	    				<form action="addComment" method="POST" class="form_comment">
	    					<textarea name="content" class="xheditor-mini"></textarea>
	    					<div class="tijiao">
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
      <%@ include file="include/footer.jsp"%>
      <!--========== jQuery (necessary for Bootstrap's JavaScript plugins) ==========-->

<script src="js/theme.js"></script>
</body>
</html>
 