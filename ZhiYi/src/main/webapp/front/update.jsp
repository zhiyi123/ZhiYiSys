<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head>
  <base href="<%=basePath%>"> 
<title>指艺首页——指尖的艺术，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/xiaoshou.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css"/>
<link href="css/shouhou.css" rel="stylesheet" type="text/css"/>
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->
    <meta charset="utf-8"> 
  
    <style>                
       body{ font: 12px/1.5 'Microsoft Yahei','Simsun'; }
        .main{margin:0 auto;margin-top:60px;margin-bottom:60px;background:#fff;}
        
</style>          
</head>
<body>
 <%@include file="header.jsp"%>

		<div class="bg-services">
			
		</div>
   	
    
    	<div class="suc_content changP nojsp pt30">
	<div class="suc_kuang">
		<div class="hei_444">
			<div class="info">
				<span class="left_name">
					<span class="m_name">
					<a class="color_33" href="/">努比亚帐户</a>
 						 >
					</span>

					<span class="m_func">重设帐户密码</span>
				</span>
				<span class="right" style="display:none;">
			</div>
			<form id="changePwdForm" method="post">
				<div class="changP_container">
					<p class="account_tips">请重设您的帐户密码</p>
						<dl class="clearfix1">
							<dt class="dt_l">当前密码：</dt>
							<dd class="dd_r clearfix1">
								<input id="txtPwd" class="input_kuang new_width item errortip" type="password" name="oldpassword" isrequired="true"/>
								<span class="check_tips empty_tip"></span>
								<span class="check_tips error_tip"></span>
							</dd>
							<span id="anameNeed" style="display: none">${users.uname}</span>
							<dt class="dt_l clearfix1">新密码：</dt>
							<dd id="pwdTd" class="dd_r clearfix1 dd_r_pos">
								<input id="pwd" class="input_kuang new_width item errortip" type="password" name="password" isrequired="true">
								<span class="check_tips empty_tip"></span>
								<span id="tips_val" class="check_tips error_tip"></span>
								<span id="info_tips2" class="prompt_info" style="display:none;"></span>
								<span class="check_tips succ_tips"></span>
								<span class="tips_1"></span>
								<span class="tips_2"></span>
								<span class="tips_3"></span>
								<span class="tips_5" style="display:none;"></span>
								<span class="tips_6" style="display:none;"></span>
								<span class="tips_7" style="display:none;"></span>
							</dd>
							<dt class="dt_l clearfix1">再次确认新密码</dt>
							<dd class="dd_r clearfix1">
								<input id="pwd_repeat" class="input_kuang new_width item errortip" type="password" repeat="#pwd" name="password2" onblur="checkrpwd()" isrequired="true">
								 <span class="check_tips error_tip" id="rpwd_error_tag" style="font-size:12px;"></span> 
								<span class="check_tips empty_tip"></span>
								<span class="check_tips succ_tips"></span>
							</dd>
							<dt class="dt_l"></dt>
							<dd class="dd_r clearfix1">
								<div class="sub_bg">
									<input id="submit_btn" class="no_bg" type="button" style="color:#fff" value="提交" onClick="pwdUpdate()">
								</div>
							</dd>
						</dl>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	function checkrpwd(){
		var pwd=document.getElementById('pwd').value;
		var rpwd=document.getElementById('pwd_repeat').value;
		if(rpwd==''){
			document.getElementById('rpwd_error_tag').innerHTML='&nbsp;&nbsp;请输入确认密码';
			document.getElementById('rpwd_error_tag').style.color='red';
			return false;
		}else if(pwd!=rpwd){
			document.getElementById('rpwd_error_tag').innerHTML='&nbsp;&nbsp;密码前后不一致';
			document.getElementById('rpwd_error_tag').style.color='red';
			return false;
		}else{
			document.getElementById('rpwd_error_tag').innerHTML='&nbsp;&nbsp;密码前后一致';
			document.getElementById('rpwd_error_tag').style.color='green';
			return true;
		}
	}
	
	function pwdUpdate(){
		var uname = $("#anameNeed").html();
		var oldpwd = $.trim($("#txtPwd").val());
		var pwd = $.trim($("#pwd").val());
		var pwdagain = $.trim($("#pwd_repeat").val());
		alert(uname+" "+pwd+" "+oldpwd+" "+pwdagain);
		if(oldpwd!="" && pwd!="" && pwdagain!=""){
			if (pwdagain == pwd && pwd != "" && pwd != null) {
				$.post("users_updateUsers",{pwd:pwd,uname:uname,oldpwd:oldpwd},function(data){
					if(parseInt($.trim(data))==1){
						alert("修改成功，请重新登录");
						location.href="login.jsp";
					}else{
						alert('旧密码错误，密码修改失败...');
						$("#txtPwd").val('');
						$("#pwd").val('');
						$("#pwd_repeat").val('');				
					}
				});
		    }
		}
	}
	
</script>

</body></html>