<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="entity.User"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>天智云—云南首家云服务器提供商</title>
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
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/popup.css" rel="stylesheet" type="text/css">
		<script>
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
		</script>
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
					<li class="active"><a href="logining.jsp">首页</a></li>
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
	      </div><!-- end h_menu4 -->
     </div>
</div>
<div class="banner">
	 <div class="container">
		<!-- FlexSlider -->
              <section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<li><img src="images/cloudServerBanner.png" class="img-responsive" alt=""/>
							<div class="banner_desc 1">
								<h1>基于OpenStack构建的<span>云服务器</span></h1>
								<h2>卓越的高可用冗余架构，提供高效可靠的计算、存储和网络</h2>
							</div>
						</li>
						<li><img src="images/cloudBigdata.png" class="img-responsive" alt=""/>
							<div class="banner_desc 2">
								<h1>基于云架构的<span>虚拟主机</span></h1>
								<h2>全能控制台  不限流量  简单易用  数据自动备份</h2>
							</div>
						</li>
						<li><div class="banner3"><img src="images/cloudPrivate1.png" class="img-responsive" alt=""/></div>
							<div class="banner_desc 3">
								<h1>正式发布私有<span>云解决方案</span></h1>
								<h2>基于Openstack的高可用私有云平台结局方案</h2>
							</div>
						</li>
						
				    </ul>
				  </div>
	         </section>
           <!-- FlexSlider -->
	</div>
</div>
<div class="price">
	<div class="container">
		<h4 class="tz-title-4 tzcolor-blue">
            <p class="tzweight_Bold"><span class="m_1"></span>云计算基础服务</p>
        </h4>
		    <div class="col-md-3">
							<div class="pricing-table-grid">
								<img class="service" src="images/service/service1.png">
								<!--<h3><span class="dollar">$</span>5<br><span class="month">Per Month</span></h3>-->
								<ul>
									<li><span>弹性云服务</span></li>
									<li><a href="#">云服务器</a></li>
									<li><a href="#">云硬盘</a></li>
									<li><a href="#">负载均衡</a></li>
									<li><a href="#">VDC虚拟数据中心</a></li>
									<li><a href="#">快照</a></li>
								</ul>
								<a class="popup-with-zoom-anim order-btn" href="#small-dialog">立即查看</a>
							</div>
							<div id="small-dialog" class="mfp-hide">
									<div class="pop_up">
									 	<div class="payment-online-form-left">
											<form>
												<h4><span class="shipping"> </span>Shipping</h4>
												<ul>
													<li><input class="text-box-dark" type="text" value="Frist Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Frist Name';}"></li>
													<li><input class="text-box-dark" type="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></li>
												</ul>
												<ul>
													<li><input class="text-box-dark" type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"></li>
													<li><input class="text-box-dark" type="text" value="Company Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Company Name';}"></li>
												</ul>
												<ul>
													<li><input class="text-box-dark" type="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}"></li>
													<li><input class="text-box-dark" type="text" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}"></li>
													<div class="clearfix"> </div>
												</ul>
												<div class="clear"> </div>
											<ul class="payment-type">
												<h4><span class="payment"> </span> Payments</h4>
												<li>
													<span class="col_checkbox">
													<input id="3" class="css-checkbox1" type="checkbox">
													<label for="3" name="demo_lbl_1" class="css-label1"> </label>
													<a class="visa" href="#"> </a>
													</span>
												</li>
												<li>
													<span class="col_checkbox">
														<input id="4" class="css-checkbox2" type="checkbox">
														<label for="4" name="demo_lbl_2" class="css-label2"> </label>
														<a class="paypal" href="#"> </a>
													</span>
												</li>
												<div class="clearfix"> </div>
											</ul>
												<ul>
													<li><input class="text-box-dark" type="text" value="Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Card Number';}"></li>
													<li><input class="text-box-dark" type="text" value="Name on card" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name on card';}"></li>
													<div class="clearfix"> </div>
												</ul>
												<ul>
													<li><input class="text-box-light hasDatepicker" type="text" id="datepicker" value="Expiration Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Expiration Date';}"><em class="pay-date"> </em></li>
													<li><input class="text-box-dark" type="text" value="Security Code" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Security Code';}"></li>
													<div class="clearfix"> </div>
												</ul>
												<ul class="payment-sendbtns">
													<li><input type="reset" value="Cancel"></li>
													<li><input type="submit" value="Process order"></li>
												</ul>
												<div class="clearfix"> </div>
											</form>
										</div>
						  			</div>
								</div>
		     </div>
             <div class="col-md-3">
							<div class="pricing-table-grid">
								<img class="service" src="images/service/service2.png">
								<ul>
									<li><span>云虚拟主机</span></li>
									<li><a href="#">域名注册8￥起</a></li>
									<li><a href="#">基础版1G</a></li>
									<li><a href="#">经济版3G</a></li>
									<li><a href="#">企业版6G</a></li>
									<li><a href="#">尊享版10G</a></li>
								</ul>
								<a class="popup-with-zoom-anim order-btn" href="#small-dialog">立即查看</a>
							</div>
		     </div>	
	         <div class="col-md-3">
							<div class="pricing-table-grid">
								<img class="service" src="images/service/service3.png">
								<ul>
									<li><span>IDC业务</span></li>
									<li><a href="#">服务器租用</a></li>
									<li><a href="#">1U托管</a></li>
									<li><a href="#">2U托管</a></li>
									<li><a href="#">4U托管</a></li>
									<li><a href="#">机柜租用</a></li>
								</ul>
								<a class="popup-with-zoom-anim order-btn" href="#small-dialog">立即查看</a>
							</div>
		    </div>
	        <div class="col-md-3">
							<div class="pricing-table-grid">
								<img class="service" src="images/service/service4.png">
								<ul>
									<li><span>天成微营销</span></li>
									<li><a href="#">产品套餐98￥起</a></li>
									<li><a href="#">宣传展示</a></li>
									<li><a href="#">推广吸粉</a></li>
									<li><a href="#">营销活动</a></li>
									<li><a href="#">电商交易</a></li>
								</ul>
								<a class="popup-with-zoom-anim order-btn" href="#small-dialog">立即查看</a>
							</div>
		    </div>	
		    <div class="clearfix"> </div>								
       </div>
</div>
<div class="benefit">
	
<div class="container">
		<h4 class="tz-title-4 tzcolor-blue">
            <p class="tzweight_Bold"><span class="m_1">天智云优势</span></p>
        </h4>
		<div class="box1">
			<div class="col-md-4 row_10">
				<ul class="service_grid">
   	   			   <i class="s1"> </i>
   	   			   <li class="desc">
   	   				<h3>秒级弹性伸缩</h3>
   	   				<p>创建云服务器仅需4秒，其他资源只需2秒，带宽升级不停机，10秒搞定</p>
   	   			   </li>
   	   			   <div class="clearfix"> </div>
   	   			</ul>
			</div>
			<div class="col-md-4">
				<ul class="service_grid">
   	   			   <i class="s2"> </i>
   	   			   <li class="desc">
   	   				<h3>99.99%数据安全</h3>
   	   				<p>自动备份，创建快照仅需1秒，实时三副本分布式存储，永不丢数据</p>
   	   			   </li>
   	   			   <div class="clearfix"> </div>
   	   			</ul>
			</div>
			<div class="col-md-4">
				<ul class="service_grid">
   	   			   <i class="s3"> </i>
   	   			   <li class="desc">
   	   				<h3>永不宕机</h3>
   	   				<p>实时迁移、机柜极全冗余架构，避免单点故障，保障业务不中断</p>
   	   			   </li>
   	   			   <div class="clearfix"> </div>
   	   			</ul>
			</div>
		</div>
		<div class="box1">
			<div class="col-md-4">
				<ul class="service_grid">
   	   			   <i class="s4"> </i>
   	   			   <li class="desc">
   	   				<h3>VDC虚拟数据中心</h3>
   	   				<p>完全隔离的二层虚拟网络，用户间100%保证网络安全隔</p>
   	   			   </li>
   	   			   <div class="clearfix"> </div>
   	   			</ul>
			</div>
			<div class="col-md-4">
				<ul class="service_grid">
   	   			   <i class="s5"> </i>
   	   			   <li class="desc">
   	   				<h3>自助智能管理</h3>
   	   				<p>计算、存储、网络、监控、负载均衡...所有资源和服务自助获取和管理</p>
   	   			   </li>
   	   			   <div class="clearfix"> </div>
   	   			</ul>
			</div>
			<div class="col-md-4">
				<ul class="service_grid">
   	   			   <i class="s6"> </i>
   	   			   <li class="desc">
   	   				<h3>APP管理</h3>
   	   				<p>移动云服务管家，您走到哪里，都握在手中</p>
   	   			   </li>
   	   			   <div class="clearfix"> </div>
   	   			</ul>
			</div>
		</div>
	</div>
</div>
<div class="features">
	<div class="container">
		<div class="col-md-4">
		   <h4 class="tz-title-4 tzcolor-blue">
             <p class="tzweight_Bold m_2"><span class="m_1">特价</span>优惠</p>
          </h4>
          <ul class="offer">
             <li><p class="m_3"><span class="m_4">降价<br></span>50%</p></li>	
             <li><p class="m_5">折扣</p></li>	
             <li class="last"><p class="m_6"><span class="m_7">服务器<br></span>托管</p></li>
          </ul>
        </div>
		<div class="col-md-8 row_1">
		    <h4 class="tz-title-4 tzcolor-blue">
             <p class="tzweight_Bold m_2"><span class="m_1">发展</span>前景</p>
           </h4>
		   <div class="section_1">
			<div class="col_1_of_3 span_1_of_3">
				<div class="list_1">
		            <ul>
		              <li><a href="https://baike.baidu.com/item/%E4%BA%91%E8%AE%A1%E7%AE%97/9969353?fr=aladdin">云计算是什么</a></li>
		              <li><a href="https://www.zhihu.com/question/19588115">云计算发展趋势</a></li>
		              <li><a href="http://www.enkj.com/idcnews/Article/20160803/9435">弹性云主机优势</a></li>
		              <li><a href="https://baike.baidu.com/item/%E6%89%98%E7%AE%A1%E6%9C%8D%E5%8A%A1%E5%99%A8/844246?fr=aladdin">服务器托管的优势</a></li>     
		            </ul>
		        </div>
			</div>
			<div class="col_1_of_3 span_1_of_3">
				<div class="list_1">
		            <ul>
		              <li><a href="https://baike.baidu.com/item/%E4%BA%92%E8%81%94%E7%BD%91%E6%95%B0%E6%8D%AE%E4%B8%AD%E5%BF%83/8471124?fr=aladdin&fromid=53156&fromtitle=IDC">IDC是什么</a></li>
		           <!--   <li><a href="">Ipsum generatortss.</a></li>
		              <li><a href="">Lorem ipsum is simply.</a></li>
		              <li><a href="">It is a long established.</a></li>  -->   
		            </ul>
		        </div>
			</div>
			<div class="col_1_of_3 span_1_of_3">
				<a class="but1" href="plans.html">产品</a>
			</div>
			<div class="clearfix"> </div>
		   </div>
		</div>
	</div>
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
			<h4>Social Media</h4>
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
<link href="css/flexslider.css" rel='stylesheet' type='text/css' />
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
								$(function(){
								  SyntaxHighlighter.all();
								});
								$(window).load(function(){
								  $('.flexslider').flexslider({
									animation: "slide",
									start: function(slider){
									  $('body').removeClass('loading');
									}
								  });
								});
							  </script>
</body>
</html>

