<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录</title>
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
<body>
<a name="top"></a>
<div class="col-md-6 login-right">
			   	<h4 class="tz-title-5 tzcolor-blue">
                    <p class="tzweight_Bold"><span class="m_20">用户登录</span></p>
                 </h4>
			  	
				<p>如果您拥有账户，请登陆！</p>
				<form method="post" action="login">
				  <div>
					<span class="m_25">账号<label>*</label></span>
					<input type="text" name="username"> 
				  </div>
				  <div>
					<span class="m_25">密码<label>*</label></span><br>
					<input type="password" name="password" style="border: 1px solid #EEE;outline-color:#46d2ff;width:100%;padding:10px;"> 
				  </div>
				  <!--<a class="forgot" href="#">忘记密码?</a>-->
				  <input type="submit" onclick="disp_alert()" value="登陆">
			    </form>
			   </div>
<a class="back_up" href="#top">返回顶部</a>
</body>
</html>