<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>天智云—云南首家云服务器提供商</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Hosting Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!-- webfonts -->
<link href='#css?family=Open+Sans:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!-- webfonts -->
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/popup.css" rel="stylesheet" type="text/css">
<script>
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});
	});
</script>
</head>
<body>
	<a1name="top">
	</a>
	<div class="header">
		<div class="container">
			<div class="header_top">
				<div class="logo">
					<a href="index.jsp"><img src="images/tzy_logo.png" alt="" /></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="h_menu4">
				<!-- start h_menu4 -->
				<a class="toggleMenu" href="#">菜单</a>
				<ul class="nav">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="about.jsp">关于天成</a></li>
					<li><a href="service.jsp">服务</a></li>
					<li><a href="goods.jsp">产品</a></li>
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
			</div>
			<!-- end h_menu4 -->
		</div>
	</div>
	<div class="user">
		
			<div class="register-bottom-grid">
				<h4 class="tz-title-5 tzcolor-blue">
					<p class="tzweight_Bold">
						<span class="m_20">修改密码</span>
					</p>
				</h4>
				<form action="updatepwd" method="post" id="updatepwd">
			<br/><br/><br/>
				
					<ul>
						<li>
						<td>新  密  码</td>
						<td><em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input style="border: 1px solid #EEE;outline-color:#46d2ff;width:50%;padding:10px;
							type="password" name="password" size="40px" id="password" /> <span
							id="passwordspan"
							style="display: none; color: red; font-size: 15px; font-weight: bold">密码格式错误，密码长度在6-18位之间</span>
						</td>					
					</li>
					<br/>
					
				<!-- 	<td>12</td>
					<td>12</td> -->
					<li>
					
						<td>确认密码</td>
						<td><em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input style="border: 1px solid #EEE;outline-color:#46d2ff;width:50%;padding:10px;
							type="password" name="repassword" size="40px" id="repassword" />
							<span id="repasswordspan"
							style="display: none; color: red; font-size: 15px; font-weight: bold">两次密码不一致</span>
						</td>
			
					</li>
					<br/>
					<li>
						<td colspan="2">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit"
							value="提      交" height="50px" />
						</td>
					</li>
				</ul>
			</form>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div>
				<div class="col-md-3 box_1">
					<img src="images/tzy_logo.png" alt="" />
					<p>云南天成科技有限公司</p>
				</div>
				<div class="col-md-3 box_2">
					<h4>快速导航</h4>
					<ul class="list_2">
						<li><a href="index.html">首页</a></li>
						<li><a href="about.html">关于天成</a></li>
						<li><a href="service.html">服务</a></li>
						<li><a href="plans.html">产品</a></li>
						<li><a href="domain.html">域名注册</a></li>
					</ul>
					<ul class="list_2">
						<li><a href="contact.html">联系我们</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-3 box_2">
					<h4>联系我们</h4>
					<address class="address">
						<dl>
							<dt></dt>
							<dd>
								地址 : <span>云南省昆明市高新区新百大国际派</span>
							</dd>
							<dd>
								E-mail :<span>service@tzyun.com</span>
							</dd>
							<dd>
								电话 : <span>15808891297</span>
							</dd>
						</dl>
					</address>
				</div>
				<div class="col-md-3 box_2">
					<h4>社交账号</h4>
					<ul class="footer_social">
						<li><a href=""> <i class="fb"> </i>
						</a></li>
						<li><a href=""><i class="tw"> </i> </a></li>
						<li><a href=""><i class="linkedin"> </i> </a></li>
						<li><a href=""><i class="google"> </i> </a></li>
					</ul>
				</div>
				<div class="clear_box"></div>
				<div class="foot_cont">Copyright &copy; © 2018天成科技 ALL RIGHTS
					RESERVED.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;滇ICP备11003338号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增值电信业务经营许可证号：滇B1、B2-20090035</div>
			</div>
		</div>
	</div>
	<a class="back_up" href="#top">返回顶部</a>
	<link href="css/flexslider.css" rel='stylesheet' type='text/css' />
	<script defer src="js/jquery.flexslider.js"></script> <script
		type="text/javascript">
		$(function() {
			SyntaxHighlighter.all();
		});
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
</body>
</html>