<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>cartOption 선택</title>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
</head>
<body style="font-family:Noto-Sans-Korean, sans-serif">
<!-- <body onresize="parent.resizeTo(500,400)" onload="parent.resizeTo(500,400)"> -->

<!-- 옵션창 사이즈 -->
<script type="text/javascript">
	self.moveTo(350,300);
	self.resizeTo(450,400); 

  
</script>

<!-- 옵션창 정의 -->
<h3 style="text-align:center">[옵션선택]</h3>
<div style="display: auto;">
<input type="hidden" value="${data.get(0).product_no}"/>
<input type="hidden" value="${data.get(0).product_price}"/>
<span style="float:left;"><img style="width:145px; height:145px; padding-left:23px;" src="${data.get(0).main_image}"></span>
<div style="padding-bottom:10px;"><span style="padding-left:10px;" ></span>
<span style="width:100px; text-align:center;">${data.get(0).product_name}</span></div>

<!-- 컬러 for문 -->
<span style="padding-left:12px;">컬러 </span> 
<select id="color"  style="text-align:center; width:140px; margin-left:35px; margin-bottom:12px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="colorList" items="${color}">
	<option value="${colorList}">${colorList}</option>
</c:forEach>
</select>
<!-- 컬러 end -->
<br>
<!-- 사이즈 for문 -->
<span style="padding-left:12px;">사이즈 </span> 
<select id="size" style="text-align:center; width:140px; margin-bottom:10px; margin-left:20px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="sizeList" items="${size}">
	<option value="${sizeList}">${sizeList}</option>
</c:forEach>
</select>
<!-- 사이즈 end -->
<br>
<span style="padding-left:12px;">수량 </span>
<img onclick="minus()" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/minus.png" style="width:20px; vertical-align:middle; height:20px;">
<input id="quantity" type="text" value=1 style="text-align:center; width:20px;" readonly />
<img onclick="plus()" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/plus1.png" style="width:20px; vertical-align:middle; margin-left:30px; height:20px;"">
</div>
<div style="width:300px; display: flex; position: absolute; left: 15%;">
	<a href="#" onClick="window.close()" style="text-decoration:none; display: flex; text-align:center; color:black;">
	<span style="width:150px; height:30px; border:1px solid black; margin-right:10px; margin-top:50px; line-height:30px; background-color:white;">닫기</span></a>
	<span >
		<a href="javascript:void(0)" onclick="addCart()" style="text-decoration:none; display: flex; text-align:center; color:white;">
		<span style="width:150px; height:30px; border:1px solid black; margin-top:50px; background-color:black; line-height:30px; ">장바구니이동</span></a>
	
	</span>
</div>
</div>


<script type="text/javascript">
$(document).ready(function(){
	$('#color').on('change', function(){
		var color = $('#color option:selected').val();
		var product_no = ${data.get(0).product_no};
		$.ajax({
			url:'/test/getStockbyProductno.do',
		    type:'POST',
		   	cache:false,
			data: { "product_color" : color, "product_no" : product_no },
			success:function(data) {
				$(data).each(function(){
					if(this.stock_quantity == 0) {
						$("select option[value ='"+this.product_size+"']").prop('disabled',true);
						$("select option[value ='"+this.product_size+"']").text(this.product_size+"[품절]");
					}else{
						$("select option[value ='"+this.product_size+"']").prop('disabled',false);
						$("select option[value ='"+this.product_size+"']").text(this.product_size);
					}
				})
			},
			error:function() {
				alert('다시 시도해주세요');
			}
		});
	});
});

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
	var user_no = localStorage.getItem("user_no");
	var size = $('#size option:selected').val();
	var color = $('#color option:selected').val();
	var product_no = ${data.get(0).product_no};
	var product_name = "${data.get(0).product_name}";
	var quantity = $('#quantity').val();
	var discount = ${data.get(0).discount};
	var all_discount =  quantity * discount;
	var total_price = ${data.get(0).product_price} * quantity;
	var main_image = "${data.get(0).main_image}";
	if(user_no != null){
		$.ajax({
			url:'/test/addCheckCart.do',
		    type:'POST',
		   	cache:false,
			data: {"product_no":product_no, "user_no" : user_no, "product_size":size, "product_color":color },
			success:function(data) {
				if(data == 0){
					$.ajax({
						url:'/test/addCart.do',
					    type:'POST',
					   	cache:false,
						data: {"product_no":product_no, "product_name":product_name, "quantity":quantity, "discount" : discount,
							"total_price":total_price, "product_size":size, "product_color":color, "main_image" : main_image, "user_no" : user_no
						},
						success:function(data) {
							if(data == 1){
							alert('장바구니에 담겼습니다.');
							window.opener.location.href="/test/getcartList.do?user_no="+user_no;
							window.close();
							}
						},
						error:function() {
							alert('다시 시도해주세요');
						}
					});
				}else{
					var check = confirm("이미 장바구니에 추가된 상품입니다\n 장바구니로 이동하시겠습니까?");
					if(check) window.opener.location.href="/test/getcartList.do?user_no="+user_no;
					window.close();
				}
			},
			error:function() {
				alert('다시 시도해주세요');
			}
		});
	}else{
		$.ajax({
			url:'/test/addCheckCart.do',
		    type:'POST',
		   	cache:false,
			data: {"product_no":product_no, "product_size":size, "product_color":color },
			success:function(data) {
				if(data == 0){
					$.ajax({
						url:'/test/addCart.do',
					    type:'POST',
					   	cache:false,
						data: {"product_no":product_no, "product_name":product_name, "quantity":quantity, "discount" : discount,
							"total_price":total_price, "product_size":size, "product_color":color, "main_image" : main_image, "all_discount" : all_discount
						},
						success:function(data) {
							if(data == 1){
							alert('장바구니에 담겼습니다.');
							window.opener.location.href="/test/getcartList.do";
							window.close();
							}
						},
						error:function() {
							alert('다시 시도해주세요');
						}
					});
				}else{
					var check = confirm("이미 장바구니에 추가된 상품입니다\n 장바구니로 이동하시겠습니까?");
					if(check) window.opener.location.href="/test/getcartList.do";
					window.close();
			}
		},
		error:function() {
			alert('다시 시도해주세요');
		}
	});
	}
}
</script>
</body>
</html>