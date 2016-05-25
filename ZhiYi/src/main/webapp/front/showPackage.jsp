<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!doctype html>
<html>
<head>
   <base href="<%=basePath%>">
<meta charset="utf-8">
<title>指艺手机——无边框的智能手机，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/showPackage.js"></script>
<link href="css/showPackage.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->

</head>

<body>
	<div id="fa-moblie">
    	<!---头部--->
    	<div id="fa-header">
        	<div id="fa-center">
                <a class="fa-logo" href="front/index.jsp"><img src="images/DSC_0030.png"/>指艺</a>
                <ul class="fa-centers">
                    <li class="first1"><a href="front/shoppingmall.jsp">商城</a></li>
                    <li><a href="front/parts.jsp">配件</a></li>
                    <li><a href="front/fa.jsp">应用</a></li>
                    <li><a href="front/shouhou.jsp">服务</a></li>
                    <li><a href="front/experienceStore.jsp">体验店</a></li>
                    <li class="last1"><a href="#">社区</a></li>
                </ul>
                <img class="img1" src="images/zhuci.jpg"/>
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
        <div style="width:100%;height:61px;"></div>	
       <div class="step-banner">
		 <div class="bg-nav">
			<ul>
				<li><a href="/">首页 </a>&gt;</li>
				<li><a href="javascript:void(0)">指艺 Z9Z9 套餐选择</a></li>
			</ul>
		</div>
	  </div> 
      
      <h2 class="step3-wrapper-h2">选择手机</h2>
      <input type="hidden" id="masterid">
      <div class="step3-wrapper">
         <div class="compose-menu clearfix_jj">
              <ul class="clearfix_jj">
                <li id="onlyphone" class="onlyphone packageitem current" sid="568">
                      <h3 id="taocan">仅手机</h3>
                      <p ><span>￥</span><a id="phoneprice">${gpid.price}</a></p>
                </li>
              </ul>
         </div>
		<div class="compose-content current clearfix_jj">
            <div class="row clearfix_jj">
                <div class="item masterproduct" sid="568">
                    <a href="#" target="_blank">
                        <img id="img" style="margin-top:-36px;"  alt="nubia套餐选择" src="">
                    </a>
                    <h3 id="miaoshu"></h3>
                    <p id="gpid" style="display:none;">${gpid.gpid}</p>
                </div>
            </div>
            <div class="section smarty">
                <div class="right">
                    <p>市场价：<span class="packageprice">￥<a id="allprice"></a></span></p>
                    <p class="submit-btn"><span><a  href="front/shoppingCart.jsp" onClick="buy()">加入购物车</a></span></p>
               </div>
            </div>
    	</div>
	</div>
          <!--尾部-->
     <div id="nb-footer" style="background:#F5F5F5;">
        	 <div class="nubia-copyright">
                <div class="nubia-foot-nav">
                    <a target="_blank" href="#">关于我们</a>|
                    <a target="_blank" href="#">联系我们</a>|
                    <a target="_blank" href="#">新闻中心</a>|
                    <a target="_blank" href="#">加入我们</a>|
                    <a target="_blank" href="#">公益</a>|
                    <a target="_blank" href="#">星空之约</a>|
                    <a href="javascript:void(0);" onclick="showFeedBack();">问题反馈</a>
                </div>
        	<p class="nb-footer-info"> 2012-2015 指艺 版权所有 <a href="#">粤ICP备10006213号-2</a> ICP经营许可证编号：粤B2-20120688 努比亚技术有限公司</p>
        </div>
    </div>
    </body>
    </html>