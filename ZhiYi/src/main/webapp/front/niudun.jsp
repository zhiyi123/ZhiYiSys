<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>fa—相机</title>
<base href="<%=basePath%>">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/camera.css" rel="stylesheet" type="text/css">
<link href="css/footer.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
	<div id="fa-moblie">
		<!---头部--->
		<div id="fa-header">
			<div id="fa-center">
				<a class="fa-logo" href="front/index.jsp"><img
					src="images/DSC_0030.png" />指艺</a>
				<ul class="fa-centers">
					<li class="first1"><a href="front/shoppingmall.jsp">商城</a>
					</li>
					<li><a href="front/parts.jsp">配件</a>
					</li>
					<li><a href="front/fa.jsp">应用</a>
					</li>
					<li><a href="front/shouhou.jsp">服务</a>
					</li>
					<li><a href="front/experienceStore.jsp">体验店</a>
					</li>
					<li class="last1"><a href="#">社区</a>
					</li>
				</ul>
				<img class="img1" src="images/zhuci.jpg" />
				<ul class="fa-right">
					<c:if test="${not empty currentAdminInfo}">
                		   <li><a href="#">当前用户名：${currentAdminInfo}</a></li>
                		   <li><a href="javascript:loginOut()">[注销]</a></li>
                	</c:if>
                	<c:if test="${empty currentAdminInfo}">
                		<li><a href="register.html">注册</a></li>
                    	<li><a href="login.html">登录</a></li>
                	</c:if>
				</ul>
			</div>
		</div>

		<div id="PageMain" class="main">
			<div id="pageImg">
				<img style="display:block" src="images/recommend_5.png" />
			</div>
			<div class="content">
				<div class="container-theme-app">
					<div class="container-app">
						<div class="app-title">
							<ul>
								<li><a href="#">下载&gt;</a>
								</li>
								<li><a href="front/fa.jsp">应用&gt;</a>
								</li>
								<li><a href="#">牛盾</a>
								</li>
							</ul>
						</div>
						<div class="app-detail">
							<div class="app-content">
								<div class="left ">
									<img src="images/content_3.png" alt="" height="76" width="76">
									<a href="#">
										<h2>牛盾</h2> </a>
									<div class="star"></div>
									<a href="http://app.nubia.cn/download/download_app/33">
										<div class="btn">下载</div> </a>
									<div class="qr">
										<img src="images/weixin-1.png" alt="" height="98" width="98">
									</div>
								</div>

								<div class="right">
									<ul>
										<li><span>应用名称：</span>牛盾</li>
										<!-- 分类和价格先不实现。
									<li><span>分类：</span>1</li>
									<li><span>价格：</span> <b>免费</b> </li>
									-->
										<li><span>更新时间：</span>2014-11-13 21:59:15</li>
										<li><span>软件大小：</span>5.19M</li>
										<li><span>开发商：</span>努比亚</li>
										<li><span>应用简介：</span>
											<p>
												牛盾支持双卡啦！<br>1.流量和防盗支持双卡（用两张卡时会看到区别）； <br>2.优化加密算法<br>3.更准确的日流量/月流量统计<br>
												4.增加检测新版本时展示更新内容<br>5.稳定性大幅提升
											</p></li>
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
													<img src="images/n-1.png" alt=""></li>
												<li jcarouselindex="2"
													style="float: left; list-style: outside none none;"
													class="jcarousel-item jcarousel-item-horizontal jcarousel-item-2 jcarousel-item-2-horizontal">
													<img src="images/n-2.png" alt=""></li>
												<li jcarouselindex="3"
													style="float: left; list-style: outside none none;"
													class="jcarousel-item jcarousel-item-horizontal jcarousel-item-3 jcarousel-item-3-horizontal">
													<img src="images/n-3.png" alt=""></li>
												<li jcarouselindex="4"
													style="float: left; list-style: outside none none;"
													class="jcarousel-item jcarousel-item-horizontal jcarousel-item-4 jcarousel-item-4-horizontal">
													<img src="images/n-4.png" alt=""></li>
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
											alt="" height="76" width="76">
										</a>
									</div>
									<div class="rel-name">
										<a href="front/mall.jsp">
											<h2>努比亚商城</h2>
										</a>
									</div>
									<div class="star"></div></li>

								<li>
									<div class="rel-pic">
										<a href="front/flashlight.jsp"> <img src="images/content_6.png"
											alt="" height="76" width="76">
										</a>
									</div>
									<div class="rel-name">
										<a href="front/flashlight.jsp">
											<h2>nubia手电筒</h2>
										</a>
									</div>
									<div class="star"></div></li>

								<li>
									<div class="rel-pic">
										<a href="front/counter.jsp"> <img src="images/content_5.png"
											alt="" height="76" width="76">
										</a>
									</div>
									<div class="rel-name">
										<a href="front/counter.jsp">
											<h2>nubia计算器</h2>
										</a>
									</div>
									<div class="star"></div></li>

								<li>
									<div class="rel-pic">
										<a href="front/share.jsp"> <img src="images/content_4.png"
											alt="" height="76" width="76">
										</a>
									</div>
									<div class="rel-name">
										<a href="front/share.jsp">
											<h2>互动分享</h2>
										</a>
									</div>
									<div class="star"></div></li>
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
								<div class="star"></div></li>

							<li>
								<div class="app-num">2</div> <a href="front/electrician.jsp"> <img
									src="images/content_10.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/electrician.jsp">nubia电工</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">3</div> <a href="front/niudun.jsp"> <img
									src="images/content_3.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/niudun.jsp">牛盾</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">4</div> <a href="front/music.jsp"> <img
									src="images/content_7.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/music.jsp">nubia音乐</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">5</div> <a href="front/shijie.jsp"> <img
									src="images/content_2.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/shijie.jsp">视界</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">6</div> <a href="front/yimodel.jsp"> <img
									src="images/content_8.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/yimodel.jsp">易模式</a>
								</h2>
								<div class="star"></div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="footer">
			<div class="footer-btns">
				<ul>
					<li class="hk-f0000">
						<div class="f f0000"></div> <span>全场货到付款</span></li>
					<li class="hk-f0400">
						<div class="f f0400"></div> <span>7天无理由退货</span></li>
					<li class="hk-f0800">
						<div class="f f0800"></div> <span>售后上门服务</span></li>
					<li class="hk-f1200" style="margin-right:0px;">
						<div class="f f1200"></div> <span>满59元免费包邮</span></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
