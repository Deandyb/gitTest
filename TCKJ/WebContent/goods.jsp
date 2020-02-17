<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>产品</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Hosting Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script> -->
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
<!-- <script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script> -->
</head>
<body>
	<a name="top"></a>
	<div class="header">
		<div class="container">
			<div class="header_top">
				<div class="logo">
					<a href="index.html"><img src="images/tzy_logo.png" alt="" /></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="h_menu4">
				<!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="about.jsp">关于天成</a></li>
					<li><a href="service.jsp">服务</a></li>
					<li class="active"><a href="goods.jsp">产品</a></li>
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
				云计算业务<span class="m_1"></span>
			</h1>
		</div>
	</div>
	<div class="about_grid">
		<div class="container">
			<h4 class="tz-title-4 tzcolor-blue">
				<p class="tzweight_Bold">
					<span class="m_1">操作步骤<br></span>
				</p>
			</h4>
			<div class="plans_grid">
				<div class="col-md-4">
					<ul class="project_box">
						<li class="mini-post-meta1">1</li>
						<li class="desc"><h5>
								<a href="#">注册用户</a>
							</h5>
							<p>为了方便您购买云计算业务及了解产品，联系客服，请先注册用户，新人注册可获998大礼包！</p></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="project_box">
						<li class="mini-post-meta1">2</li>
						<li class="desc"><h5>
								<a href="#">选择产品</a>
							</h5>
							<p>根据您的需求选择您需要的产品</p></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="project_box">
						<li class="mini-post-meta1">3</li>
						<li class="desc"><h5>
								<a href="#">提交订单</a>
							</h5>
							<p>当您选择好您需要的产品后，加入购物车并提交订单，本公司工作人员会在2小时内联系您，上门签订合同，完成合作</p></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="about_grid1">
		<div class="container">
			<h4 class="tz-title-4 tzcolor-blue">
				<p class="tzweight_Bold">
					<span class="m_1">云服务器<br></span>
				</p>
			</h4>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>104.4<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>经济版</span></li>
						<li><a href="#">CPU：1核</a></li>
						<li><a href="#">内存：1G</a></li>
						<li><a href="#">容量云盘：10G</a></li>
						<li><a href="#">带宽：2Mbps</a></li>
						<li><a href="#">镜像：公共镜像</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=“云服务器经济版”&price=104.4&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>212.4<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>标准版</span></li>
						<li><a href="#">CPU：2核</a></li>
						<li><a href="#">内存：4G</a></li>
						<li><a href="#">容量云盘：10G</a></li>
						<li><a href="#">带宽：2Mbps</a></li>
						<li><a href="#">镜像：公共镜像</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=云服务器标准版&price=212.4&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>579.6<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>内存版</span></li>
						<li><a href="#">CPU：4核</a></li>
						<li><a href="#">内存：16G</a></li>
						<li><a href="#">容量云盘：10G</a></li>
						<li><a href="#">带宽：2Mbps</a></li>
						<li><a href="#">镜像：公共镜像</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=云服务器内存版&price=579.6&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>507.6<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>计算版</span></li>
						<li><a href="#">CPU：8核</a></li>
						<li><a href="#">内存：8G</a></li>
						<li><a href="#">容量云盘：10G</a></li>
						<li><a href="#">带宽：2Mbps</a></li>
						<li><a href="#">镜像：公共镜像</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=云服务器计算版&price=507.6&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="about_grid">
		<div class="container">
			<!--<a name="yunxuni"></a>-->
			<h4 id="hot" class="tz-title-4 tzcolor-blue">
				<p class="tzweight_Bold">
					<span class="m_1">云虚拟主机<br></span>
				</p>
			</h4>
			<div class="col-md-4">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>168<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>基础版</span></li>
						<li><a href="#">空间：1G</a></li>
						<li><a href="#">数据库：200M</a></li>
						<li><a href="#">操作系统：Windows server 2012、Linux</a></li>
						<li><a href="#">数据库：SQL 2008、Mysql 5.1</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=云虚拟主机基础版&price=168&userid=${sessionScope.user.userid}">立即购买</a>
				</div>

			</div>
			<div class="col-md-4">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>388<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>经济版</span></li>
						<li><a href="#">空间：3G</a></li>
						<li><a href="#">数据库：500M</a></li>
						<li><a href="#">操作系统：Windows server 2012、Linux</a></li>
						<li><a href="#">数据库：SQL 2008、Mysql 5.1</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=云虚拟主机经济版&price=388&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>1188<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>尊享版</span></li>
						<li><a href="#">空间：10G</a></li>
						<li><a href="#">数据库：1G</a></li>
						<li><a href="#">操作系统：Windows server 2012、Linux</a></li>
						<li><a href="#">数据库：SQL 2008、Mysql 5.1</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=云虚拟主机尊享版&price=1188&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="about_grid1">
		<div class="container">
			<h4 class="tz-title-4 tzcolor-blue">
				<p class="tzweight_Bold">
					<span class="m_1">服务器托管<br></span>
				</p>
			</h4>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>8000<br> <span class="month">/年</span>
					</h3>
					<ul>
						<li><span>1U服务器</span></li>
						<li><a href="#">1个独立IP100M共享宽带</a></li>
						<li><a href="#">空间：10M</a></li>

					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=1U服务器托管&price=8000&userid=${sessionScope.user.userid}">立即购买</a>
				</div>

			</div>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>20000<br> <span class="month">/年</span>
					</h3>
					<ul>
						<li><span>2U服务器</span></li>
						<li><a href="#">1个独立IP100M共享宽带</a></li>
						<li><a href="#">空间：30M</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=2U服务器托管&price=20000&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>36000<br> <span class="month">/年</span>
					</h3>
					<ul>
						<li><span>4U服务器</span></li>
						<li><a href="#">1个独立IP100M共享宽带</a></li>
						<li><a href="#">空间：50M</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=4U服务器托管&price=36000&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="col-md-3 thumb_2">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>80000<br> <span class="month">/年</span>
					</h3>
					<ul>
						<li><span>机柜托管</span></li>
						<li><a href="#">100M共享宽带</a></li>
						<li><a href="#">空间：100M</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=机柜托管&price=80000&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="about_grid">
		<div class="container">
			<h4 class="tz-title-4 tzcolor-blue">
				<p class="tzweight_Bold">
					<span class="m_1">天成微营销<br></span>
				</p>
			</h4>
			<div class="col-md-4">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>168<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>基础版</span></li>
						<li><a href="#">创建公众号数：2</a></li>
						<li><a href="#">自定义图文数：2000</a></li>
						<li><a href="#">请求数：2000</a></li>
						<li><a href="#">月会员开卡数：100</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=天成微营销基础版&price=168&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>


			<div class="col-md-4">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>268<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>行业版</span></li>
						<li><a href="#">创建公众号数：4</a></li>
						<li><a href="#">自定义图文数：3000</a></li>
						<li><a href="#">请求数：3000</a></li>
						<li><a href="#">月会员开卡数：500</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=天成微营销行业版&price=268&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="pricing-table-grid plan_box">
					<h3>
						<span class="dollar">￥</span>368<br> <span class="month">/月</span>
					</h3>
					<ul>
						<li><span>旗舰版</span></li>
						<li><a href="#">创建公众号数：10</a></li>
						<li><a href="#">自定义图文数：10000</a></li>
						<li><a href="#">请求数：10000</a></li>
						<li><a href="#">月会员开卡数：2000</a></li>
					</ul>
					<a class="popup-with-zoom-anim order-btn"
						href="goods?goodsname=天成微营销旗舰版&price=368&userid=${sessionScope.user.userid}">立即购买</a>
				</div>
			</div>
			<div class="clearfix"></div>
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

