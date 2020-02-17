<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>服务</title>
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
				<a href="index.jsp"><img src="images/tzy_logo.png" alt=""/></a>
			</div> 
			<div class="clearfix"> </div>
		</div>
		<div class="h_menu4"><!-- start h_menu4 -->
	        <a class="toggleMenu" href="#">菜单</a>
				<ul class="nav">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="about.jsp">关于天成</a></li>
					<li class="active"><a href="service.jsp">服务</a></li>
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
<div class="about">
	 <div class="container">
		<h1>提供一站式服务<span class="m_1"></span></h1>
	</div>
</div>
<div class="about_grid">
	<div class="container">
		<h4 class="tz-title-4 tzcolor-blue">
            <p class="tzweight_Bold"><span class="m_1">服务器托管</span></p>
        </h4>
		<div class="service_box">
			<div class="col-md-4 service_grid1">
				<i class="icon1"> </i>
				<h3>5*8小时上门服务</h3>
				<p>天智云提供工作日（09：30-17:30）时段上门服务<br>
专业技术团队提供售后支撑</p>
			</div>
			<div class="col-md-4 service_grid1">
				<i class="icon2"> </i>
				<h3>IDC增值业务许可证</h3>
				<p>2009年通过工信部认证获得ICP、IDC、SP等<br>
电信增值业务许可经营资质（滇B1、B2-20090035）</p>
			</div>
			<div class="col-md-4 service_grid1">
				<i class="icon3"> </i>
				<h3>本地IDC接入最多</h3>
				<p>天智云已持续为超过一万家客户提供IDC接入服务<br>
据通管局与艾瑞咨询数据报告，天智云本地IDC接入数量遥遥领先</p>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="service_box1">
			<div class="col-md-4 service_grid1">
				<i class="icon4"> </i>
				<h3>行业专业品牌</h3>
				<p>9年行业品质，数十名资深网络工程师技术保障<br>
专业技术，暖心服务</p>
			</div>
			<div class="col-md-4 service_grid1">
				<i class="icon5"> </i>
				<h3>1200G骨干网络带宽</h3>
				<p>直连中国公用Internet骨干网-ChinaNet，带宽高达1200G<br>
享受低延迟，高速访问</p>
			</div>
			<div class="col-md-4 service_grid1">
				<i class="icon6"> </i>
				<h3>冗余路由</h3>
				<p>当系统发生故障,冗余配置部件介入并承担故障部件的工作<br>
由此减少系统的故障时间</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="about_grid1">
	<div class="container">
		<div class="col-md-7">
			<h4 class="tz-title-4 tzcolor-blue">
               <p class="tzweight_Bold"><span class="m_1">云计算基本业务<br></span></p>
            </h4>
        	<div class="service_box2">
				<div class="lsidebar span_1_of_about">
					<img src="images/service1/service1.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="cont span_2_of_about">
					<h3><a href="#">弹性云服务</a></h3>
				    <p>您只需几分钟时间即可轻松获取一个、数百个甚至数千个服务器实例，您可以一键购买、配置、扩展、管理您的服务；
您可以灵活调整 CPU、内存、带宽及挂载容量，一键升级到更高性能和容量的实例规格，实现快速、平滑扩容，满足业务快速发展需要；</p>
				</div>
				<div class="clearfix"></div>	
			</div>
			<div class="service_box2">
				<div class="lsidebar span_1_of_about">
					<img src="images/service1/service2.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="cont span_2_of_about">
					<h3><a href="#">云虚拟主机</a></h3>
				    <p>独有的核心骨干网络配备高防御性能同时，有效保证高品质的网络环境和丰富的带宽资源，确保最稳定、安全、高效的系统运行。<br>
				    云虚拟主机是天智云提供的一种管理便捷、安全可靠的云计算服务单元。</p>
				</div>
				<div class="clearfix"></div>	
			</div>
			<div class="service_box2">
				<div class="lsidebar span_1_of_about">
					<img src="images/service1/service3.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="cont span_2_of_about">
					<h3><a href="#">服务器租用</a></h3>
				    <p>服务器硬件，防火墙设备，交换设备+机房托管服务一站式服务体验，免除用户硬件运维成本，设备调试，按需订购，定制化服务。</p>
				</div>
				<div class="clearfix"></div>	
			</div>
        	<div class="service_box2">
				<div class="lsidebar span_1_of_about">
					<img src="images/service1/service4.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="cont span_2_of_about">
					<h3><a href="#">天成微营销</a></h3>
				    <p>微信营销系统系统内置100多项应用，涵盖近 30个行业的垂直领域应用;每天都提供新的功能升级，系统还提供了融合 第三方功能和各种二次开发的接口，方便进行 各种应用的开发</p>
				</div>
				<div class="clearfix"></div>	
			</div>
        	<div class="service_box2">
				<div class="lsidebar span_1_of_about">
					<img src="images/service1/service5.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="cont span_2_of_about">
					<h3><a href="#">域名注册</a></h3>
				    <p>好记的域名才利于传播，因此要选择与公司名称、品牌相关的汉语拼音或英文的全拼、或缩写等拼写，且让域名尽量简短。同时，由于域名先注先得的原则，因此要尽早注册，以防止他人抢注、恶意使用，保护企业的品牌。</p>
				</div>
				<div class="clearfix"></div>	
			</div>
        </div>
       <!-- <div class="col-md-5">
        	<h4 class="tz-title-4 tzcolor-blue">
            <p class="tzweight_Bold"><span class="m_1">Latest<br></span>News</p>
        </h4>
        	<ul class="project_box">
			  <li class="mini-post-meta"><time datetime=""><span class="day">1</span><span class="month">Jan-05</span></time></li>
			  <li class="desc"><h5><a href="#">News Heading Here</a></h5>
			  	 <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.</p>
			  </li>	
			  <div class="clearfix"> </div>
			</ul>
			<ul class="project_box">
			  <li class="mini-post-meta"><time datetime=""><span class="day">2</span><span class="month">Jan-05</span></time></li>
			  <li class="desc"><h5><a href="#">News Heading Here</a></h5>
			  	 <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.</p>
			  </li>	
			  <div class="clearfix"> </div>
			</ul>
			<ul class="project_box">
			  <li class="mini-post-meta"><time datetime=""><span class="day">3</span><span class="month">Jan-05</span></time></li>
			  <li class="desc"><h5><a href="#">News Heading Here</a></h5>
			  	 <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.</p>
			  </li>	
			  <div class="clearfix"> </div>
			</ul>
        </div>-->
        <div class="clearfix"> </div>
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