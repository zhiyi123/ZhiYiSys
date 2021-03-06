<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>fa—相机</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/camera.css" rel="stylesheet" type="text/css">
<link href="css/footer.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
	<%@include file="header.jsp"%>
	<div id="PageMain" class="main">
		<div id="pageImg">
			<img style="display: block" src="images/recommend_9.png" />
		</div>
		<div class="content">
			<div class="container-theme-app">
				<div class="container-app">
					<div class="app-title">
						<ul>
							<li><a href="#">下载&gt;</a></li>
							<li><a href="front/fa.jsp">应用&gt;</a></li>
							<li><a href="#">易模式</a></li>
						</ul>
					</div>
					<div class="app-detail">
						<div class="app-content">
							<div class="left ">
								<img src="images/content_8.png" alt="" height="76" width="76">
								<a href="#">
									<h2>易模式</h2>
								</a>
								<div class="star"></div>
								<a href="http://app.nubia.cn/download/download_app/33">
									<div class="btn">下载</div>
								</a>
								<div class="qr">
									<img src="images/weixin-1.png" alt="" height="98" width="98">
								</div>
							</div>

							<div class="right">
								<ul>
									<li><span>应用名称：</span>易模式</li>
									<!-- 分类和价格先不实现。
									<li><span>分类：</span>1</li>
									<li><span>价格：</span> <b>免费</b> </li>
									-->
									<li><span>更新时间：</span>2015-09-02 17:10:45</li>
									<li><span>软件大小：</span>2.76M</li>
									<li><span>开发商：</span>努比亚</li>
									<li><span>应用简介：</span>
										<P>
											让您最常用的东东触手可得！更可调节字体，不用再皱眉埋头找应用啦！快来抢先体验一下吧。<BR>
											<BR> V1.6版本：<BR>
											<STRONG>1、您在任何情况下都可以使用“退出”，来离开nubia易模式；<BR>
												2、如果您在返回桌面时，选择了“始终”返回易模式，那么想更改的话就需要在易模式中找到“Android设置
												”---“应用”，找到“易模式”，使用“清除默认设置”，就可以再次回到手机默认的桌面啦。
											</STRONG><BR>
										</P></li>
								</ul>
							</div>
						</div>
						<div class="carouselBox">
							<div class=" jcarousel-skin-nubia">
								<div class="horizontal">
									<div class="clip clip-horizontal">
										<ul
											style="overflow: hidden; top: 0px; margin: 0px; padding: 0px; left: 0px; width: 1310px;">
											<li jcarouselindex="1"
												style="float: left; list-style: outside none none;"
												class="jcarousel-item jcarousel-item-horizontal jcarousel-item-1 jcarousel-item-1-horizontal">
												<img src="images/yi-1.jpg" alt="">
											</li>
											<li jcarouselindex="2"
												style="float: left; list-style: outside none none;"
												class="jcarousel-item jcarousel-item-horizontal jcarousel-item-2 jcarousel-item-2-horizontal">
												<img src="images/yi-2.jpg" alt="">
											</li>
											<li jcarouselindex="3"
												style="float: left; list-style: outside none none;"
												class="jcarousel-item jcarousel-item-horizontal jcarousel-item-3 jcarousel-item-3-horizontal">
												<img src="images/yi-3.jpg" alt="">
											</li>
											<li jcarouselindex="4"
												style="float: left; list-style: outside none none;"
												class="jcarousel-item jcarousel-item-horizontal jcarousel-item-4 jcarousel-item-4-horizontal">
												<img src="images/yi-4.jpg" alt="">
											</li>
											<li jcarouselindex="5"
												style="float: left; list-style: outside none none;"
												class="jcarousel-item jcarousel-item-horizontal jcarousel-item-5 jcarousel-item-5-horizontal">
												<img src="images/yi-5.jpg" alt="">
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="app-rel">
						<h1>相关应用</h1>
						<ul>
							<li>
								<div class="rel-pic">
									<a href="front/mall.jsp"> <img src="images/content_11.png"
										alt="" height="76" width="76"></a>
								</div>
								<div class="rel-name">
									<a href="front/mall.jsp">
										<h2>努比亚商城</h2>
									</a>
								</div>
								<div class="star"></div>
							</li>

							<li>
								<div class="rel-pic">
									<a href="front/flashlight.jsp"> <img
										src="images/content_6.png" alt="" height="76" width="76"></a>
								</div>
								<div class="rel-name">
									<a href="front/flashlight.jsp">
										<h2>nubia手电筒</h2>
									</a>
								</div>
								<div class="star"></div>
							</li>

							<li>
								<div class="rel-pic">
									<a href="front/counter.jsp"> <img
										src="images/content_5.png" alt="" height="76" width="76"></a>
								</div>
								<div class="rel-name">
									<a href="front/counter.jsp">
										<h2>nubia计算器</h2>
									</a>
								</div>
								<div class="star"></div>
							</li>

							<li>
								<div class="rel-pic">
									<a href="front/share.jsp"> <img src="images/content_4.png"
										alt="" height="76" width="76"></a>
								</div>
								<div class="rel-name">
									<a href="front/share.jsp">
										<h2>互动分享</h2>
									</a>
								</div>
								<div class="star"></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="rank">
				<div class="rank-app">
					<h1>应用下载排行榜</h1>
					<ul>
						<li>
							<div class="app-num">1</div> <a href="front/camera.jsp"> <img
								src="images/content_1.png" alt="" height="76" width="76">
						</a>
							<h2>
								<a href="front/camera.jsp">nubia相机</a>
							</h2>
							<div class="star"></div>
						</li>

						<li>
							<div class="app-num">2</div> <a href="front/electrician.jsp">
								<img src="images/content_10.png" alt="" height="76" width="76">
						</a>
							<h2>
								<a href="front/electrician.jsp">nubia电工</a>
							</h2>
							<div class="star"></div>
						</li>

						<li>
							<div class="app-num">3</div> <a href="front/niudun.jsp"> <img
								src="images/content_3.png" alt="" height="76" width="76">
						</a>
							<h2>
								<a href="front/niudun.jsp">牛盾</a>
							</h2>
							<div class="star"></div>
						</li>

						<li>
							<div class="app-num">4</div> <a href="front/music.jsp"> <img
								src="images/content_7.png" alt="" height="76" width="76">
						</a>
							<h2>
								<a href="front/music.jsp">nubia音乐</a>
							</h2>
							<div class="star"></div>
						</li>

						<li>
							<div class="app-num">5</div> <a href="front/shijie.jsp"> <img
								src="images/content_2.png" alt="" height="76" width="76">
						</a>
							<h2>
								<a href="front/shijie.jsp">视界</a>
							</h2>
							<div class="star"></div>
						</li>

						<li>
							<div class="app-num">6</div> <a href="front/yimodel.jsp"> <img
								src="images/content_8.png" alt="" height="76" width="76">
						</a>
							<h2>
								<a href="front/yimodel.jsp">易模式</a>
							</h2>
							<div class="star"></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="footer-btns">
			<ul>
				<li class="hk-f0000">
					<div class="f f0000"></div> <span>全场货到付款</span>
				</li>
				<li class="hk-f0400">
					<div class="f f0400"></div> <span>7天无理由退货</span>
				</li>
				<li class="hk-f0800">
					<div class="f f0800"></div> <span>售后上门服务</span>
				</li>
				<li class="hk-f1200" style="margin-right: 0px;">
					<div class="f f1200"></div> <span>满59元免费包邮</span>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>
