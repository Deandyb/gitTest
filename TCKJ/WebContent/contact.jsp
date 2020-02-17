<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>联系我们</title>
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
<div class="header">
	<div class="container">
		<div class="header_top">
			<div class="logo">
				<a href="index.html"><img src="images/tzy_logo.png" alt=""/></a>
			</div> 
			<div class="clearfix"> </div>
		</div>
		<div class="h_menu4"><!-- start h_menu4 -->
	        <a class="toggleMenu" href="#">菜单</a>
				<ul class="nav">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="about.jsp">关于天成</a></li>
					<li><a href="service.jsp">服务</a></li>
					<li><a href="goods.jsp">产品</a></li>
					<li><a href="domain.jsp">域名注册</a></li>
					<li class="active"><a href="contact.jsp">联系我们</a></li>
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
<div class="about">
	 <div class="container">
		<h1>联系我们<span class="m_1"></span></h1>
	</div>
</div>
<div class="support_box">
	<div class="container">
		<div class="col-md-6">
		  <h4 class="tz-title-4 tzcolor-blue">
            <p class="tzweight_Bold"><span class="m_1"><br></span>联系我们</p>
          </h4>
          <p class="text1">7*24小时售后技术支持<br>5*8小时上门服务</p>
		  <div class="contact_address1">
		  	<div class="col_1_of_2 span_1_of_2 row_5">
			  	 <h4 class="tz-title-6">
	              <p><span class="m_21">地址</span></p>
	             </h4>
	             <p>云南·昆明市 高新区商院路百大国际派1栋A座32层 </p>	
		  	</div>
		  	<div class="col_1_of_2 span_1_of_2 row_5">
			  	 <h4 class="tz-title-6">
	              <p><span class="m_21">邮箱</span></p>
	             </h4>
	             <p><a href="malito:mail@demolink.org">公共:service@tzyun.com</a></p>
	             <p><a href="malito:mail@demolink.org">私人:1073535439@qq.com</a></p>
		  	</div>
		  	<div class="clearfix"></div>
		  </div>
		  <div class="contact_address1">
		  	<div class="col_1_of_2 span_1_of_2 row_5">
			  	 <h4 class="tz-title-6">
	              <p><span class="m_21">电话</span></p>
	             </h4>
	             <p>客服:400-660-6399</p>
	             <p>个人:15808891297</p>
	        </div>
	
		  	<div class="clearfix"></div>
		  </div>
		</div>
		<div class="col-md-6 contact_right">
		  <h4 class="tz-title-4 tzcolor-blue">
            <p class="tzweight_Bold"><span class="m_1"><br></span>填写信息</p>
          </h4>
            <form action="contact" method="post">
			   <input type="text" class="text" placeholder="姓名" name="name">
			   <input type="text" class="text" placeholder="电话" name="tel">
			   <input type="text" class="text" placeholder="邮箱" name="email">
			   <textarea name="textarea" placeholder="意见或建议！" required="true"></textarea>
	           <input type="submit" value="提交">
			</form>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<div class="map">
	     <iframe src="https://j.map.baidu.com/-h4DO"> </iframe>
	    </div>
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
				<li><a href="index.html">首页</a></li>
				<li><a href="about.html">关于天成</a></li>
				<li><a href="service.html">服务</a></li>
				<li><a href="plans.html">产品</a></li>
				<li><a href="domain.html">域名注册</a></li>
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