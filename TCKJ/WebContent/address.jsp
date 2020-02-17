<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>关于天成</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!-- webfonts -->
<link href='#css?family=Open+Sans:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!-- webfonts -->
</head>
<style>
li {
	list-style: none;
}

;
input:hover {
	background-color: #00a1de;
}
</style>
<body>
<a name="top"></a>
<div class="header">
	<div class="container">
		<div class="header_top">
			<div class="logo">
				<a href="index.html"><img src="images/tzy_logo.png" alt=""/></a>
			</div> 
			<div class="clearfix"> </div>
		</div>
		<div class="h_menu4"><!-- start h_menu4 -->
	        <a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li><a href="index.jsp">首页</a></li>
					<li class="active"><a href="about.jsp">关于天成</a></li>
					<li><a href="service.jsp">服务</a></li>
					<li><a href="plans.jsp">产品</a></li>
					<li><a href="domain.jsp">域名注册</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				 </ul>
				 <div class="cssmenu">
					<ul>
						<c:if test="${!empty sessionScope.user.username}">
						<li class="active"><a href="updatepassword.jsp">欢迎您${sessionScope.user.username}！</a></li> 
						<li><a href="ordermessage?userid=${sessionScope.user.userid}">我的订单</a></li>
						<li><a href="cancel">注销</a></li>
						</c:if>
						 <c:if test="${empty sessionScope.user.username}">
						<li class="active"><a href="login.jsp">登陆</a></li> 
						<li><a href="register.jsp">注册</a></li>
						</c:if>
					</ul>
				</div>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>
<br/>
<br/>
<br/>
<div id="small-dialog" class="mfp-hide">
		<div class="pop_up">
			<div class="payment-online-form-left">
				<form method="post" action="order">
					<h3>
						收货信息：
					</h3>
					<br/>
					<ul>
						<li style="text-decoration: none;">姓名：<input
							style="border: 1px solid #EEE; outline-color: #46d2ff; width: 50%; padding: 10px;"
							text-box-dark" type="text" name="username"></li>
					</ul>
					<br/>
					<ul>
						<li>电话：<input
							style="border: 1px solid #EEE; outline-color: #46d2ff; width: 50%; padding: 10px;"
							text-box-dark" type="text" name="tel"></li>
					</ul>
					<br/>
					<ul>
						<li>邮箱：<input
							style="border: 1px solid #EEE; outline-color: #46d2ff; width: 50%; padding: 10px;"
							text-box-dark" type="text" name="email"></li>
					</ul>
					<br/>
					<ul>
						<li>地址：<input
							style="border: 1px solid #EEE; outline-color: #46d2ff; width: 50%; padding: 10px;"
							text-box-dark" type="text" name="address"></li>
					</ul>
					<br/>
					<div class="clear"></div>

					<ul class="payment-sendbtns">

						<li><input
							style="color: #fff; padding-top: 1%; padding-bottom: 1%; padding-left: 4%; padding-right: 4%; text-transform: uppercase; text-decoration: none; background: #46d2ff; border: none; outline: none; margin: auto;"
							type="submit" value="提交订单"></li>
					</ul>
					<div class="clearfix"></div>
				</form>
			</div>
		</div>
	</div>
<br/><br/><br/>
<div class="footer">
	<div class="container">
	<div>
		<div class="col-md-3 box_1">
			<img src="images/tzy_logo.png" alt=""/>
			<p>云南天成科技有限公司</p>
		</div>
		<div class="col-md-3 box_2">
			<h4>快速导航</h4>
			<ul class="list_2">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="about.jsp">关于天成</a></li>
				<li><a href="service.jsp">服务</a></li>
				<li><a href="goods.jsp">产品</a></li>
				<li><a href="domain.jsp">域名注册</a></li>
			</ul>
			<ul class="list_2">
				<li><a href="contact.html">联系我们</a></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
		<div class="col-md-3 box_2">
			<h4>联系我们</h4>
			<address class="address">
              <dl>
                 <dt></dt>
                 <dd>地址 : <span>云南省昆明市高新区新百大国际派</span></dd>
                 <dd>E-mail :<span>service@tzyun.com</span></dd>
                 <dd>电话 : <span>15808891297</span></dd>
              </dl>
           </address>
		</div>
		<div class="col-md-3 box_2">
			<h4>社交信息</h4>
			<ul class="footer_social">
			  <li><a href=""> <i class="fb"> </i> </a></li>
			  <li><a href=""><i class="tw"> </i> </a></li>
			  <li><a href=""><i class="linkedin"> </i> </a></li>
			  <li><a href=""><i class="google"> </i> </a></li>
		   </ul>
		  </div>
		   <div class="clear_box"></div>
		   <div class="foot_cont">Copyright &copy; © 2018天成科技 ALL RIGHTS RESERVED.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;滇ICP备11003338号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增值电信业务经营许可证号：滇B1、B2-20090035</div>
		</div>
	</div>
</div>
<a class="back_up" href="#top">返回顶部</a>
</body>
</html>