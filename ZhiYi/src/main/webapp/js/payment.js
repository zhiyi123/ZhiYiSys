

function checkConsignee(){
	var consignee=document.getElementById('consignee').value;
	if(consignee==''){
		document.getElementById('cons').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
		return false;
	}else{
		document.getElementById('cons').innerHTML='';
		return true;
	}	
}

function checkAddress(){
	var address=document.getElementById('address').value;
	if(address==''){
		document.getElementById('addrs').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
		return false;
	}else{
		document.getElementById('addrs').innerHTML='';
		return true;
	}	
}

function getAddress(){
	var prov=$(".prov").val();
	var citys=$(".citys").val();
	var dist=$(".dist").val();
	if(dist==null){
		$("#shenshiqu").html(prov+"    "+citys);
		if(citys==null){
			$("#shenshiqu").html(prov);
		}
	}else{
		$("#shenshiqu").html(prov+"    "+citys+"    "+dist);
	}
}

function checkZipcode(){
	var zipcode=document.getElementById('zipcode').value;
	var reg1=/^[1-9][0-9]{5}$/;
	if(zipcode==''){
		document.getElementById('zip').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
		return false;
	}else if(!reg1.test(zipcode)){
		document.getElementById('zip').innerHTML='&nbsp;&nbsp;邮编格式不正确！';
		return false;	
	}else{
		document.getElementById('zip').innerHTML='';
		return true;
	}	
}


function checkMobile(){
	var phone = document.getElementById("phone").value;
    var reg3 = /^1[3-8]\d{9}$/.test(phone);//带区号的固定电话
    if(phone!=""){
    	if (!reg3) { 
        	document.getElementById('mob').innerHTML='&nbsp;&nbsp;手机号码输入有误！';
            return false;
        }else{
        	document.getElementById('mob').innerHTML='';
        	return true;
        	
        }
    }else{
    	document.getElementById('mob').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
        return false;
    }
    
}



$(function(){
	$("#city_4").citySelect({
    	
	}); 
	
	var info='';
	var goods=window.localStorage.getItem('goods');
	goods=JSON.parse(goods);
	if(goods!=null){
			var objs=goods.good;
			for(var i=0;i<objs.length;i++){
					info+="<tr><td><div class='pic'><img src='"+objs[i].src+"' style='height:80px;'></div>" +
							"<p class='title'><a href='' target='_blank'>"+objs[i].name+"  "+objs[i].color+"</a></p></td>" +
							"<td>"+objs[i].price+"</td>" +
							"<td id='num'>"+objs[i].num+"</td>" +
							"<td><span class='subTotal'>"+(objs[i].price*objs[i].num)+"</span></td></tr>";
			}
			$("#tbody").html($(info));
	}
	var total=0;    //商品总金额
	var price=0;    //单件商品的价格
	var num=0;    //商品的数量
	//访问表格中的所有行信息
	var myTabletr=document.getElementById('tbody').getElementsByTagName('tr');
	for(var i=0;i<myTabletr.length;i++){
		price=myTabletr[i].getElementsByTagName('td')[1].innerHTML;	
		num=myTabletr[i].getElementsByTagName('td')[2].innerHTML;	
		total+=price*num;
	}
	document.getElementById('productAmount').innerHTML='￥'+total;
	var usidnicai=$("#usidss").val(); 
	$.ajax({
		type:"POST",
		url:"receive_findAddressInfo.action",
		dataType:'JSON',
		data:{usid:usidnicai},
		success : function(data) {
			var str='';
			document.getElementById("addr").innerHTML=str;
			for ( var i = 0; i < data.length; i++) {
				var item = data[i];
				str+="<div onclick='bianse("+i+")' class='allAddress'><div regionid='126' class='subHd' flag='535017' id='a"+i+"'>" +
						"<div class='subHd-div checked'></div><p class='fl'></p><div class='name'>"+item.rname+"</div>" +
						"<div><span class='myAddress'>"+item.address+"</span>"+item.xaddress+"<span class='yb'></span></div><div class='tel'>电话:"+item.phone+"&nbsp;<a   id='rid"+i+"' style='display:none'>"+item.rid+"</a></div>" +
						"<p></p><div class='allAddress-btn'><span flag='535017' class='remove' onClick='deletes("+item.rid+")'>删除</span></div></div></div>";
				document.getElementById("addr").innerHTML=str;
			}
		}
	});
});

function bianse(d){
	var a=document.getElementsByClassName('allAddress');
	for(var i=0;i<a.length;i++){
		if(i==d){
			$("#a"+i+"").attr('class','cas');
			var ridss=$("#rid"+i+"").text();
			window.localStorage.setItem('rid',ridss);
		}else{
			$("#a"+i+"").attr('class','subHd');
		}
	}
}

function others(){
		var newAddress=document.getElementById('newAddress');
		if(newAddress.style.display=="none"){
			newAddress.style.display="";
		}else{
			newAddress.style.display="none";
		}
}



function deletes(rid){
	var r=confirm("您确定删除此地址吗？");
	if(r==true){
		location.href="receive_delAddressInfo?rid="+rid;
		/*$.post("",{rid:rid}
			
		);*/
	}else{
		window.location.href="front/payment.jsp";
	}
		
}

function tijiao(){
	var usid=$("#usidss").val(); 
	var gpid=window.localStorage.getItem('gpid');
	gpid=parseInt(gpid);
	var num=$("#num").text();
	var color=window.localStorage.getItem('color');
	console.info(usid+" " +gpid+" "+num+" "+color)
	var rid=window.localStorage.getItem('rid');
	/*$.post("order_addOrders.action",{usid:usid,gpid:gpid,num:num,color:color},function(data){
		alert(data)
		data=parseInt($.trim(data));
		if(data==1){
			window.localStorage.clear();
			console.info("订单添加成功");
			alert("成功1")
		}else{
			console.info("订单添加失败");
		}
	},"json");*/
	var onum=parseInt(num);
	var price=parseInt(window.localStorage.getItem('phoneprice'));
	var money=price*onum;
	$.post("order_addOrders.action",{usid:usid,gpid:gpid,num:num,color:color,onum:onum,price:price,money:money,rid:rid},function(data){
		data=parseInt($.trim(data));
		if(data==1){
			window.localStorage.clear();
			console.info("订单添加成功");
			window.location.href="front/person.jsp";
		}else{
			console.info("订单添加失败");
		}
	},"json");
	/*var osid=$("#osid").text();
	var onum=parseInt(num);
	//alert(osid);
	var price=parseInt(window.localStorage.getItem('phoneprice'));
	var money=price*onum;
	if(osid!=null){
		$.post("order_addOrderInfo",{osid:osid,gpid:gpid,onum:onum,price:price,money:money},function(data){
			alert(data)
			data=parseInt($.trim(data));
			if(data==1){
				alert("成功2")
				window.location.href="front/person.jsp";
				window.localStorage.clear();
				console.info("订单添加成功");
			}else{
				console.info("订单添加失败");
			}
		},"json");
	}*/
}







