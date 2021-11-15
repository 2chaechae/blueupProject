<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cartOption 선택</title>
<script src="https://static.mlb-korea.com/pc/static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
</head>
<body style="font-family:Noto-Sans-Korean, sans-serif">
<script type="text/javascript">
	self.moveTo(240,300);
	self.resizeTo(400,300);
</script>
<!-- 옵션창 정의 -->
<h3 style="text-align:center">[옵션선택]</h3>
<div style="display: auto;">
<input type="hidden" value="${data.get(0).product_no}"/>
<input type="hidden" value="${data.get(0).product_price}"/>
<sapn style="float:left;"><img style="width:128px; height:122px; padding-left:23px;" src="${data.get(0).main_image}"></sapn>
<div style="padding-bottom:10px;"><span style="padding-left:10px;" >상품 : </span><span style="width:100px; text-align:center; margin-bottom:10px;">${data.get(0).product_name}</span></div>

<!-- 사이즈 for문 -->
<span style="padding-left:10px;">사이즈 : </span> 
<select id="size" style="text-align:center; width:170px; margin-bottom:10px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="size" items="${data}">
	<option value="${size.clothes_size}">${size.clothes_size}</option>
</c:forEach>
</select>
<!-- 사이즈 end -->
<br>

<!-- 컬러 for문 -->
<span style="padding-left:10px;">컬러 : </span> 
<select id="color" style="text-align:center; width:170px; margin-bottom:12px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="colorList" items="${color}">
	<option value="${colorList}">${colorList}</option>
</c:forEach>
</select>
<!-- 컬러 end -->
<br>
<span style="padding-left:10px;">수량 : </span>
<img onclick="plus()" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/plus1.png" style="width:10px; height:10px;">
<input id="quantity" type="text" value=1 style="width:10px;"/>
<img onclick="minus()" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/minus.png" style="width:10px; height:10px;">
</div>
<div style="width:300px; display: auto;">
	<a href="javascript:void(0)" onclick="addCart()" style="text-decoration:none; display: flex; text-align:center; color:white;"><span style="width:150px; border:2px solid black; padding:5px 10px; margin-top:20px; margin-left:21px; background-color:black;">장바구니이동</span></a>
</div>
<script type="text/javascript">

function plus(){
	var quantity = $('#quantity').val();
	quantity++;
	$('#quantity').val(quantity);
}

function minus(){
	var quantity = $('#quantity').val();
	if(quantity > 1) quantity--;
	$('#quantity').val(quantity);
}

function addCart(){
	var size = $('#size option:selected').val();
	alert(size);
	var color = $('#color option:selected').val();
	alert(color);
	var product_no = ${data.get(0).product_no};
	alert(product_no);
	var product_name = "${data.get(0).product_name}"
	var quantity =  $('#quantity').val();
	var total_price = ${data.get(0).product_price} * quantity;
	$.ajax({
		url:'/test/addCart.do',
	    type:'POST',
	   	cache:false,
		data: {"product_no":product_no, "product_name":product_name, "quantity":quantity,
			"total_price":total_price, "product_size":size, "product_color":color
		},
		success:function(data) {
			if(data == 1)
			alert('장바구니에 담겼습니다.');
			opener.parent.moveToCart();
			window.close();

		},
		error:function() {
			alert('다시 시도해주세요');
		}
	});
}
</script>
</body>
</html>