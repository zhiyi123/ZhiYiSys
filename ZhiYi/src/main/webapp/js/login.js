// JavaScript Document

//设置滚动的标题栏
{
	var str='用户登录——指术官方网站　';
	function run(){		
		str=str.substring(1,str.length)+str.substring(0,1);
		document.title=str;         //在标题栏中显示
		window.status=str;         //在状态栏中显示   IE浏览器
	}
	//定时器
	window.setInterval('run()','500');     //每隔0.2秒调用run()方法一次
}
//用户名判断
function checkUname(){
	var uname=document.getElementById('inputEmail').value;
	if(uname==''){
		document.getElementById('user_name_tag').innerHTML='&nbsp;&nbsp;该项是必填项';
		return false;
	}else{
		document.getElementById('user_name_tag').innerHTML='';
		return true;
	}
}
function checkpwd(){
	var pwd=document.getElementById('password_id').value;
	if(pwd==''){
		document.getElementById('password_tag').innerHTML='&nbsp;&nbsp;该项是必填项';
		return false;
	}else{
		document.getElementById('password_tag').innerHTML='';
		return true;
	}
}

function check(){
	if(checkUname()==true&&checkpwd()==true){
		return true;
		alert(1);
	}else{
		return false;
		alert(0);
	}
}
function userlogin(){
	var pname=$("#inputEmail").val();
	var pwd=$.trim($("#password_id").val());
	$.post("usersServlet",{op:"userLogin",pname:pname,pwd:pwd},function(data){
		if(data==1){
			alert("登录失败，用户名或者密码错误");
		}else{
			window.location.href="front/index.jsp";
			//history.back(-1);
		}
	});
}
