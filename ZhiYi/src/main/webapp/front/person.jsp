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
<title>指艺首页——指尖的艺术，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/xiaoshou.js"></script>
<script type="text/javascript" src="js/address.js"></script>
<script type="text/javascript" src="js/jquery.cityselect.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/payment.css" rel="stylesheet" type="text/css">
<link href="css/shouhou.css" rel="stylesheet" type="text/css" />
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<style>
#services ul li .pic1 .pic {
	background-position: 0px -136px;
}

#services ul li .pp2 {
	color: #F00;
}
</style>
</head>

<body>
	<%@include file="header.jsp"%>
	 <div id="bg-serves">
    	<ul>
    		<li><a href="">首页 ></a></li>
        	<li><a href="">&nbsp;服务</a></li>
        </ul>
    </div>
    <div id="services">
    	<ul>
        	<li><a data-toggle="tab"class="pic1">
            	<span class="pic"></span>
                <p class="pp2">个人中心</p>
            </a></li>
            
            <li><a href="front/shouhou.jsp"class="pic2">
            	<span class="pic"></span>
                <p>售后服务</p>
            </a></li>
            
            <li><a href="front/wangdian.jsp" class="pic3">
            	<span class="pic"></span>
                <p>售后网点</p>
            </a></li>
            
            <li><a href="front/help.jsp" class="pic4">
            	<span class="pic"></span>
                <p>帮助中心</p>
            </a></li>
            
 
        </ul>
    </div>
    
    <div id="services-con">
    	<ul>
			<li class="m"><a data-toggle="tab" href="front/person.jsp#cons1" class="img" onClick="change11('1')">
            <span class="img1"></span><span class="content">信息总览</span>
            </a></li>

        <li class="m"> <a data-toggle="tab" href="front/person.jsp#cons2" class="img" onClick="change11('2')">
            <span class="img1"></span><span class="content">收获地址</span>
            </a></li>
            
          <li> <a href="front/zhong.jsp" class="img">
            <span class="img1"></span><span class="content">账户中心</span>
            </a></li> 
        </ul>
    </div>

    <div id="services-content">
   		
        <div class="con" id="cons1" style="display:block">
	<div class="address memberboard">
		<div class="address memberboard">
		<div class="hd">
			<h2>
			<span class="ico"></span>
			信息总览
			</h2>
		</div>

		<div class="address user-orders">
			<table class="member-grid orders-table">
				<thead>
					<tr>
						<th>订单号</th>
						<th>收货人</th>
						<th>商品名称</th>
						<th>订单金额</th>
						<th>下单时间</th>
						<th>操作</th>
	
					</tr>
				</thead>
				<tbody id="tbody">
					
				</tbody>
			</table>
		</div>
	</div>
</div>
</div>




<div class="con" id="cons2">
	<div class="address">
		<div class="hd">
			<h2>
				<span class="ico"></span>
				我的收货地址
			</h2>
		</div>
		<div class="listAddress">
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
				<thead>
					<tr>
						<th width="18%">收货人</th>
						<th width="43%">所在地区</th>
						<th width="20%">联系方式</th>
						<th width="19%">操作</th>
					</tr>
				</thead>
				<tbody id="tbodys">
				
				</tbody>
			</table>
		</div>
		<div class="newAddress">
			<div class="subHd">
										<input
											style="background-color:#E8380D; color:#fff;border-radius: 24px; font-size: 16px;"
											class="save" value="添加新地址" id="otherAddress" type="button" onClick="newAddr()">
									</div>
									<form id="dizhixinxi" action="receive_addAddressInfos.action" method="get">
									<div style="display: none;margin-left:100px; margin-top:100px;" id="newAddress" class="newAddress">
									<ul>
									    <li style="display: none"><div class="inputBg">
										<input name="usid" type="text" id="usidss" value="${users.usid }"/> 
											</div></li>
										<li><label>收件人:</label>
											<div class="inputBg">
												<input name="rname" id="consignee" class="required"
													type="text"  onBlur="checkConsignee()"> <a id="cons"></a>
											</div></li>

										<li><label>省份:</label>
											<div class="inputBg">
												<div id="city_4">
													<select class="prov" name="prov"></select> <select class="citys" name="citys"></select>
													<select class="dist" name="dist"></select>
												</div>
											</div></li>

										<li><label>收货地址：</label><span id="selectedRegionNames"
											class="fl"></span>
											<div class="inputBg">
												<p id="shenshiqu"></p>
												<input class="required" name="xaddress" id="address"
													size="40" type="text" onBlur="checkAddress()"
													onfocus="getAddress()"> <a id="addrs"></a>
											</div></li>

										<li><label>邮编：</label>
											<div class="inputBg">
												<input maxlength="6" class="required validate-zipcode"
													name="zip" id="zipcode" type="text"
													onBlur="checkZipcode()"> <a id="zip"></a>
											</div></li>

										<li><label>手机：</label>
											<div class="inputBg">
												<input class="validate-mobile" name="phone" id="phone"
													type="text" onBlur="checkMobile()"> <a id="mob"></a>
											</div></li>

										<li><label>配送时间：</label>
											<div class="delStyle">
												<div class="disFixBg">

													<!--显示所有城市时class="disFixBg selected"-->
													<!--div class="delivery">
                                                        <input class="" type="text" readonly="readonly" value="只工作日配送（工作日双休日不配送）" id="shipText"/>
                                                        <span class="btnSelected" id="shipTime">下拉按钮</span>
                                                        <input type="hidden" name="shippingTime" id="shippingTime" value="WorkingDay" />
                                                    </div-->
													<select name="rtime" id="time">
														<option selected="selected" value="WorkingDay">
															只工作日送货(双休日、假日不配送)</option>
														<option value="WorkingRestDay">工作日、双休日与假日均可送货</option>
														<option value="RestDay">只双休日、假日送货(工作日不配送)</option>
													</select>
												</div>
											</div></li>
									</ul>
										<div class="btn clearfix">
											<input class="save" value="保存新地址" id="saveAddress"
												type="submit">
										</div></div>
											</form>
									</div>	</div>
								
								
</div>





	</div>

    </body>
    </html>