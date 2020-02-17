<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Hosting Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
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
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<style>
#contanier {
	border: 0px solid white;
	/*width: 100%;
				height: 100%;*/
	/*margin: 0 auto;*/
	background-image: url(images/bg02.jpg);
	background-size: cover;
}

#top {
	border: 0px solid white;
	width: 100%;
	/*height: 50px;*/
	/* margin-top:10%; */
	text-align: center;
}

#menu {
	border: 0px solid white;
	height: 40px;
	background-color: black;
	padding-top: 10px;
	margin-bottom: 15px;
	/* margin-top: 25px; */
}

.top {
	border: 0px solid white;
	width: 405px;
	height: 100%;
	float: left;
	/*padding-left: 25px;*/
}

#top1 {
	padding-top: 15px;
}

#bottom {
	margin-top: 13px;
	text-align: center;
	margin-top:10%;
}

#form {
	height: 500px;
	/* padding-top: 40px; */
	/* background-image: url(../../img/regist_bg.jpg); */
	/* margin-bottom: 10px; */
	/* margin: auto; */
	margin-top:3%;
}

a {
	text-decoration: none;
}

label.error {
	padding-left: 30px;
	font-family: georgia;
	font-size: 15px;
	font-style: normal;
	color: red;
}

label.success {
	/*padding-left: 30px;*/
}

#father {
	border: 0px solid white;
	/*padding-left: 307px;*/
}

#form2 {
	width: 950px;
	height: 600px;
	margin: 0 auto;
	
	/*text-align: center;*/
}
</style>

</head>
<body>
	<a name="top"></a>
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
	<div class="about">
		<div class="container">
			<h1>
				用户注册<span class="m_1"></span>
			</h1>
		</div>
	</div>
	<div class="account_grid">
		<div class="container">
			<div id="form">
				<form action="register.do" method="post" id="registForm">
					<div id="father">
						<div id="form2">
							<table>
								
								<tr >
									<td border:none;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 用户名
									</td>
									<td><em style="color: red;">*</em>&nbsp;&nbsp; <input style="border: 1px solid #EEE;
	outline-color: #46d2ff;
	width: 80%;
	padding: 10px;" 
										type="text" name="user" size="40px" id="user" /> <br/><span
										id="usernamespan"
										style="display: none; color: red; font-size: 15px; font-weight: bold">用户名格式错误，用户名长度4-20个字符！</span>
										<span id="checknamespan"
										style="display: none; color: red; font-size: 15px; font-weight: bold"></span>
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 密码</td>
									<td><em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input style="border: 1px solid #EEE;
	outline-color: #46d2ff;
	width: 80%;
	padding: 10px;"
										type="password" name="password" size="40px" id="password" />
										<br/>
										<span id="passwordspan"
										style="display: none; color: red; font-size: 15px; font-weight: bold">密码格式错误，密码长度在6-18位之间</span>
									</td>

								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 确认密码</td>
									<td><em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input style="border: 1px solid #EEE;
	outline-color: #46d2ff;
	width: 80%;
	padding: 10px;"
										type="password" name="repassword" size="40px" id="repassword" />
										<br/>
										<span id="repasswordspan"
										style="display: none; color: red; font-size: 15px; font-weight: bold">两次密码不一致</span>
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Email</td>
									<td><em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input style="border: 1px solid #EEE;
	outline-color: #46d2ff;
	width: 80%;
	padding: 10px;"
										type="text" name="email" size="40px" id="email" /> 
										<br/>
										<span
										id="emailspan"
										style="display: none; color: red; font-size: 15px; font-weight: bold">邮箱格式错误</span>
										<span id="checkemailspan"
										style="display: none; color: red; font-size: 15px; font-weight: bold"></span>
									</td>
								</tr>
								
								<tr>
									<td>&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 手机号码：</td>
									<td><em style="color: red;">*</em>&nbsp;&nbsp; <input style="border: 1px solid #EEE;
	outline-color: #46d2ff;
	width: 80%;
	padding: 10px;"
										type="text" name="phone" id="phone" size="40px" />
										<br/> <span
										id="phonespan"
										style="display: none; color: red; font-size: 15px; font-weight: bold;">手机号码有误</span>
										<span id="checkphonespan"
										style="display: none; color: red; font-size: 15px; font-weight: bold;"></span></td>

								</tr>

								<tr>
									<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input style="color: #fff;
  padding-top:2%;
  padding-bottom:2%;
  padding-left:8%;
  padding-right:8%;
  text-transform: uppercase;
  text-decoration: none;
  background: #46d2ff;
  border:none;
  outline:none;" type="submit"
										value="注册" />
									</td>
								</tr>
							</table>
						</div>
					</div>
				</form>
			</div>
		</div>
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
					<h4>社交信息</h4>
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
</body>
</html>

