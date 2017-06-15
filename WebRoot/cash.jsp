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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0045)http://www.sucaihuo.com/jquery/10/1091/demo/# -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>充值</title>
<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	
	

	<script language="javascript" src="js/top.js"></script>
	
<link href="cash/base.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="cash/help.css">
<link rel="stylesheet" href="cash/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/assets/owl.carousel.css">
<link rel="stylesheet" href="vendors/magnific-popup/magnific-popup.css">
<link rel="stylesheet" href="vendors/flexslider/flexslider.css">


<link href="css/style.css" rel="stylesheet">
<link href="css/theme/green.css" rel="stylesheet">

<!--js-->
<script type="text/javascript" src="cash/jquery-1.8.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(e) {
    $(".fwmc_xxk li").click(function(){
		//var fw_price = $(this).children("i").text();
		//var fw_numb = $(".srkk").val();
		//var fw_tal = fw_price*fw_numb;
		//$(".zwfb_zje span").text(fw_tal);
		$(this).addClass("on").siblings().removeClass("on");
		tola();
		});
	//å 
	$(".jia").click(function(){
		var fw_numb = $(".srkk").val();	
		fw_numb++;
		$(".srkk").val(fw_numb);		
		/*$(".fwmc_xxk li").each(function() {
            if($(this).hasClass("on")){
				var dqzt_price = $(this).children("i").text();
				//alert(dqzt_price);
				var zgsj_jia = dqzt_price*fw_numb;
				$(".zwfb_zje span").text(zgsj_jia);
				}
        }); */
		tola();
		})
		
	//å
	$(".jian").click(function(){
		var fw_numb = $(".srkk").val();	
		if(fw_numb <= 1){
			alert("æ°éä¸è¶³äºï¼è¯·ä½æï¼")
			}else{
		fw_numb--;
		$(".srkk").val(fw_numb);		
			}
		/*$(".fwmc_xxk li").each(function() {
            if($(this).hasClass("on")){
				var dqzt_price = $(this).children("i").text();
				//alert(dqzt_price);
				var zgsj_jia = dqzt_price*fw_numb;
				$(".zwfb_zje span").text(zgsj_jia);
				}
        }); */
		tola();
		})	
	 
	
});

function tola(){
		var $li = $(".fwmc_xxk").children("li.on");
		var money = $li.children("i").text();
		var count = $(".srkk").val();
		$(".zwfb_zje span").text(money*count);
}

</script>

<!--å¼å®¹æç¤º-->
<!--[if lt IE 8]>
<script type="text/javascript">
jQuery(function($){ 
	$(".wzjzgbann_but").click(function(){ 
		$(".browser-upgrade").remove();
 	}); 	
}); 
</script> 
<div class="browser-upgrade">
  <div class="wrapper">
    <div class="fl">æ¨çæµè§å¨çæ¬è¿ä½ï¼ä¸ºäºä¿è¯æ´å¥½çå®å¨æ§åæµè§ä½éªï¼å»ºè®®æ´æ¢é«çº§æµè§å¨ï¼å¦ï¼<a href="http://www.baidu.com/s?wd=è°·æ­æµè§å¨"  target="_blank">è°·æ­æµè§å¨</a><a href="http://www.baidu.com/s?wd=ç«çæµè§å¨"  target="_blank">ç«çæµè§å¨</a><a href="http://www.baidu.com/s?wd=360æéæµè§å¨"  target="_blank">360 æéæµè§å¨</a>  <a href="http://t.cn/RPrfSNj"  target="_blank">IE8æµè§å¨</a>  </div>
    <a href="javascript:void(0);" class="wzjzgbann_but fr">x</a> </div>
</div>
<style> 
.browser-upgrade {background-color: #DA7575;border-bottom: 1px solid #D65F39;color: #F0F0F0;padding: 10px 0; width: 100%; }
.browser-upgrade .wrapper {width: 1000px;margin: 0 auto; overflow:hidden;} 
.browser-upgrade a {color: yellow;margin-right: 10px;text-decoration: underline;}
.browser-upgrade a.wzjzgbann_but{ display:block; height:15px; width:15px; background:#000; color:#fff; font-size:14px; text-align: center; line-height:15px; text-decoration:none; margin-top: 2px; }
</style>
<![endif]-->

</head>

<body>
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
                <div class="col-sm-8 menu-col">
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

<div class="w_1200 fw_box ">
  
  <div  class="fw_conent"> 
    <!--内容开始------------------------------>
  <div class="bzzx_bt"> <strong>在线充值</strong>在线充值的虚拟金币可在博客中用于打赏等功能</div>
   <center>  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="zwfb_shop_table">
      <tr valign="top">
       <td align="center" width="70">充值数额：</td>
        <td><ul class="fwmc_xxk">
            <li class="on">
              <p>10金币</p>
              <i>1</i>元</li>
            <li >
              <p>50金币</p>
              <i>5</i>元</li>
            <li >
              <p>100金币</p>
              <i>10</i>元</li>
            <li >
              <p>200金币</p>
              <i>20</i>元</li>
            <li >
              <p>500金币</p>
              <i>50</i>元</li>
            <li >
              <p>1000金币</p>
              <i>100</i>元</li>
          </ul></td>
      </tr>
     
      <tr>
        <td height="20"></td>
        <td></td>
      </tr>
      <tr>
        <td align="right">购买数量：</td>
        <td><ul class="nmb_jj">
            <li class="jian">-</li>
            <li>
              <input name="" type="text" value="1" class="srkk" />
            </li>
            <li class="jia">+</li>  
          </ul></td>
      </tr>
      <tr>
        <td height="20"></td>
        <td></td>
      </tr>
      <tr>
        <td align="right">价格：</td>
        <td><div class="zwfb_zje"><span>1</span> <i>元</i></div></td>
      </tr>
      <tr>
        <td height="20"></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td><a class="ty_but ml20" href="index.jsp">购 买</a></td>
      </tr>
    </table></center>
    <div class="gmxz_tip"> 购买须知：
      <p>1.本服务由于支付宝授权限制暂时无法使用。</p>
      <p> 2.本次服务购买后即生效，不支持退费服务。</p>
    </div>
    
    <!--内容结束------------------------------> 
  </div>
</div>
</body>
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="vendors/instafeed/instafeed.min.js"></script>
<script src="vendors/imagesLoaded/imagesloaded.pkgd.min.js"></script>
<script src="vendors/isotope/isotope.pkgd.min.js"></script>
<script src="js/theme.js"></script>
</html>