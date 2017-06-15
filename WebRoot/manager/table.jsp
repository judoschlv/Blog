<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="ZH">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title></title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>




        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                               <br/>
                                <br/>     
                                <h4 class="title">用户权限表</h4>
                                <p class="category">Cynomys Blog™ System user rights</p>
                            </div>
                            <div class="content table-responsive table-full-width">    
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th><center>权限</center></th>
                                    	<th><center>阅读、评论</center></th>
                                    	<th><center>留言、私信</center></th>
                                    	<th><center>点赞、打赏</center></th>
                                    	<th><center>发表、编辑</center></th>
                                    	<th><center>评论管理</center></th>
                                    	<th><center>用户管理</center></th>
                                    	<th><center>推荐博文</center></th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td><center>游客</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>×</center></td>
                                        	<td><center>×</center></td>
                                        	<td><center>×</center></td>
                                        	<td><center>×</center></td>
                                        </tr>
                                        <tr>
                                        	<td><center>博主</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>×</center></td>
                                        	<td><center>×</center></td>
                                        </tr>
                                        <tr>
                                        	<td><center>管理员</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>
                                        	<td><center>√</center></td>                                        </tr>
                                      
                                    </tbody>
                                </table>
<h5>*游客可以向管理员申请博主 </h5>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>

                               <center><img src="images/posts/gallery/3.jpg"></br></center>
                                <br/>
                                <br/>

                              <center> 这个团队的建立或许只是一个偶然，但这个团队会成为一个团队绝对不是偶然，他们拥有非常棒且有活力的年轻团体，有想象力，有创造力，在这里，你的想像，或许并不是想像 团队的成员并不是非常的多，但绝对都是精英级别的软件爱好者，如果你看到了这个网页，正好也有需要团队做的项目，也愿意相信这个团队，那么请联系我们吧</center>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>--->

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>


</html>
