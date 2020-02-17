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
		<h1>领先的IDC服务提供商 · IDC运营专家<span class="m_1"></span></h1>
	</div>
</div>
<div class="about_grid">
	<div class="container">
		<h4 class="tz-title-4 tzcolor-blue">
            <p class="tzweight_Bold"><span class="m_1">关于天成<br></span></p>
        </h4>
		<div class="box3">
			<div class="col-md-6">
				<img src="images/about_cont.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-md-6 row_2">
				<p class="m_8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;云南天成科技有限公司是经过云南省工商行政管理局核准的一家独资控股有限责任公司，2009年昆明市经济技术开发区招商引资高新科技类公司。2009年通过工信部认证获得ICP、IDC、ISP等电信增值业务许可经营资质（滇B1、B2-20090035）。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;天成科技主要管理和运营人员早在2000年就开始致力于互联网的持续研究，目前拥有各类专业技术人才四十余人，其中90%以上为本科以上学历，平均年龄29岁。完善的培训机制，丰富的从业经验，资深的IDC工程师队伍（思科CCNP)，能为用户提供7*24小时不间断服务。</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="about_content">
	<div class="content_box">
		<img src="images/about-icon1.png">
		<div class="content"><h4>天智云自主研发，云南首家提供弹性云服务器的IDC服务商</h4>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;旗下品牌“天智云”为天成科技历时三年，自主研发，云南首家面向互联网用户提供弹性云服务器的IDC服务商。以昆明电信互联网数据中心钻石四星级电信机房的网络资源为依托，向用户提供高安全性、可扩展性、可管理性的数据存放业务及其他增值性Internet服务，为用户提供综合全面的解决方案，为企业上网、企业IT管理提供专业服务。
		</div>
	</div>
	<hr>
	<div class="content_box">
		<img src="images/about-icon2.png">
		<div class="content"><h4>领先的IDC服务提供商，IDC运营专家</h4>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;天成科技专注于中国电信昆明分公司IDC增值电信业务服务,内容主要包括服务器租用、服务器托管、整柜租用、大带宽服务、VPS主机、云计算服务、网络安全服务等。作为云南最专业、最权威、服务质量最好的IDC接入服务提供商，天成已累计为6000家省内外用户提供互联网接入服务，托管服务器超过1000余台，众多大型企业和政府单位选择了天成。
		</div>
	</div>
	<hr>
	<div class="content_box">
		<img src="images/about-icon3.png">
		<div class="content"><h4>云南首家数据中心云服务提供商</h4>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2012年投入大量资金购买硬件防火墙，万兆交换机，入侵检测系统，存储设备等硬件设备，配套天成自主知识产权的虚拟化技术组建“天智云计算中心”。在省内首家推出了云计算服务，产品覆盖云服务器、云存储、云分发等数据业务，以满足不同用户信息服务需求，解决数据存储，互联网应用，给企业信息化发展提供动力。企业和政府单位选择了天成。
		</div>
	</div>
	<hr>
	<div class="content_box">
		<img src="images/about-icon4.png">
		<div class="content"><h4>提供专业的IT应用解决方案</h4>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;天成科技作为专业的IT服务提供商，经过多年的发展积累，IT业务涵盖网络、主机、存储、备份、安全、桌面、数据库等系统集成服务。为政府、大企业、教育等行业客户提供规划设计、建设实施、运维管理、咨询培训等全方位、专业化服务，提供端到端的解决方案。作为IT服务提供商，天成科技拥有经验丰富的专业技术团队和良好的渠道支撑，能为客户提供专业、快速、高效的本地化技术支持服务工作，以提高客户IT系统的价值作为天成科技追求的目标，为客户提供满意的产品、服务和解决方案。
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