<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 컨텐츠 시작 -->
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/order/order.util.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/order/cart.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript"
	src="//script.about.co.kr/templates/script/cm/adbay.cart.controller.js"></script>

<script type="text/javascript"
	src="/javascript/message/cart_ko.js?v=prod-version-858_20211102145956"></script>

<div id="adbay_cart" style="display: none;"></div>

<!-- 컨텐츠 시작 -->
<div class="contain od list" id="contain">
	<div class="container">
		<div class="location-container">
			<div class="location-contents">
				<h2 class="title01">장바구니</h2>
				<p class="location">
					<span><a href="/">Home</a></span> <strong>장바구니</strong>
				</p>
			</div>
		</div>
		<main class="contents" id="contents">
			<section>
				<div id="cartRegion"></div>
				<form name="cartSearchDTO" id="cartSearchDTO"></form>

				<ul class="stepInfoBox">
					<li class="on">장바구니</li>
					<li>주문/결제</li>
					<li>주문완료</li>
				</ul>

				<!-- 장바구니 (일반주문)  -->
				<div class="d_tab02 orderContents">
					<!-- order Contents : 일반주문 상품 -->
					<div class="orderInfoArea d_tab02_cont" style="display: block;">

						<!-- order list -->
						<div class="orderTable">
							<div class="tableTopArea">
								<a href="/test/deleteAllCart.do" class="btn sm gray">
									<span>전체상품삭제</span></a> <a
									href="/test/deleteCart.do" 
									onclick="deleteSelectCart();"><span>선택상품삭제</span></a>
							</div>
							<table class="board-list">
								<colgroup>
									<col style="width: 35px">
									<col style="width:">
									<col style="width: 110px">
									<col style="width: 110px">
									<col style="width: 110px">
									<col style="width: 50px">
								</colgroup>
								<thead>
									<!-- <tr>
										<th scope="col"><span class="check-skin"> <input
												type="checkbox" name="entireCheck" id="GNRL_DLV_entireCheck"
												value="GNRL_DLV" checked="checked" /> <span>선택</span>
										</span></th>

										<th scope="col">상품</th>
										<th scope="col">수량</th>
										<th scope="col">할인/혜택</th>
										<th scope="col">주문금액</th>
										<th scope="col">삭제</th> 
									</tr> -->
								</thead>
								<!--  <td>
		<input type="hidden" name="pbEpItems" price="10900" qty="1" erpitmno="3ASOM0916-07LDL" disable="">
		<span class="check-skin">
			
			<input type="checkbox" name="godCheck" id="godCheck_1" checked="checked">
			<span>선택	</span>
			
		</span>
	</td> -->
								<!-- <tbody id="GNRL_DLV_ViewLayer"> -->

								<tr>
									<th scope="col"><div class="allCheck">
											<input type="checkbox" name="allCheck" id="allCheck" /><label
												for="allCheck">전체</label>

											<!-- 전체 선택시 개별체크박스도 체크됨 -->
											<script>
											$("#allCheck").click(function(){
												if($("input:checkbox[name=allCheck]").is(":checked") == true) {
													$("input[name=chBox]:checkbox").prop("checked", true);
													
												} else {
													$("input[name=chBox]:checkbox").prop("checked", false);
												}
											});
											</script>
										</div></th>
										
									<th scope="col">상품</th>
									<th scope="col">옵션</th>
									<th scope="col">수량</th>
									<th scope="col">할인/혜택</th>
									<th scope="col"><div style="width: 130px;">주문금액</div></th>
									<th scope="col">삭제</th>
								</tr>

								<c:forEach var="cart" items="${getcartList}" varStatus="status">
									<tr>
									<!-- 선택 체크 -->
											<td><div class="checkBox">
													<input type="checkbox" name="chBox" class="chBox"
														data-cart_no="${cart.cart_no}" />
														<!-- 개별 체크박스 해제 시 전체 선택 해제 -->
														<script>
														$(".chBox").click(function(){
															$("#allCheck").prop("chekced", false);
														});
														</script>
												</div></td>
										<td><img src="${cart.main_image}"> width="100"
											height="110"></td>
										<td>${cart.product_name }<br>${cart.product_color}/${cart.product_size}
											&nbsp;<input type="button" value="변경" class="option"
											onclick="option(this);" />
										</td>

										<!-- 수량 -->
										<td>
											<div class="number">
												<button type="button" onclick="minus(this)"
													class="decreaseQuantity">
													<img
														src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/minus.png"
														style="width: 20px; height: 20px;">
												</button>
												<span class="numberUpDown">${cart.quantity }</span>
												<button type="button" onclick="plus(this)"
													class="increaseQuantity">
													<img
														src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/plus1.png"
														style="width: 20px; height: 20px;">
												</button>
												<br>
											</div>
										</td>
										<!--///////// 수량 -->
										<td id="sale"><input type="hidden"
												value="${cart.cart_no}"></input></td>
										
										<!-- 할인 -->
										
										<%-- <td>${cart.total_price }</td> --%>
										<td width="140px;"><div style="width: 130px;">${cart.total_price }원</div></td>
										<td><a href="#" class="btn_list_del"
											onclick="deleteSelectCart(this);">삭제</a></td>
										
									</tr>


									<tr>

									</tr>

								</c:forEach>

								
								<!--//////// 장바구니에 없을때 ------------------------------------------------------------------------------------------>
								<tfoot id="GNRL_DLV_cart_foot" style="display: none;">
									<tr>
										<td colspan="6" class="dvTotal"><strong>배송비</strong> <em
											id="total_GNRL_DLV_dlv_amt">0원</em></td>
									</tr>
								</tfoot>
							</table>
							<div class="tableBtarea" id="GNRL_DLV_tableBtarea"
								style="display: none;">
								<a href="#" class="btn sm gray"
									onclick="cart.deleteCart('GNRL_DLV')"><span>선택상품삭제</span></a>
							</div>
							<div class="btnWrap">
								<a href="indexmlb.jsp" class="btn lg"
									data-ga-category="PC_MLB_장바구니" data-ga-action="일반주문"
									data-ga-label="쇼핑 계속하기">쇼핑 계속하기</a>
							</div>
							<ul class="text-list02 line_t">
								<li>회원의 장바구니에 담긴 상품은 <strong>90일간</strong> 보관됩니다.
								</li>
								<li>매장 배송상품은 일반배송상품 및 사은품과 별도로 배송됩니다.</li>
							</ul>
						</div>
						<!-- // order list -->

						<!-- pay box -->
						<div class="orderPay d_fix">
							<div class="orderPayList d_fix_obj">
								<h3>결제정보</h3>
								<div class="orderPayInfo">
									<dl>
										<dt>선택상품금액</dt>
										<dd id="GNRL_DLV_god_amt">0원</dd>
										<dt>선택할인금액</dt>
										<dd class="c_r" id="GNRL_DLV_dc_amt">-0원</dd>

									</dl>
									<dl>
										<dt>총 주문금액</dt>
										<dd>
											<strong id="GNRL_DLV_total_amt">0</strong>원
										</dd>
									</dl>
								</div>
								<div class="btn_order" id="GNRL_DLV_order_btn">
									<a href="#" onclick="javascript:cart.orderCart('GNRL_DLV');"
										class="btn lg fill" data-ga-category="PC_MLB_장바구니"
										data-ga-action="일반주문" data-ga-label="주문하기">주문하기</a>
								</div>
							</div>
						</div>
						<!-- // pay box -->

					</div>
					<!-- //order Contents : 일반주문 상품-->
					<!-- //장바구니 (일반주문) -->

					<!-- data test -->
					<!-- <textarea rows="10" cols="100" id="jsonTEXT"></textarea> -->
					<form name="mainForm" id="mainForm" method="post" action="/">
						<input type="hidden" name="_csrf"
							content="f12a2ed4-6048-4fcd-af0a-fa439177b14b" /> <input
							type="hidden" name="_csrf_header" content="X-CSRF-TOKEN" />
					</form>
			</section>
			<div style="display: none;">
				<a href="#layerPopupSoldout" class="btn-style04 d_layer_open"
					id="popSoldOut"></a>
			</div>
		</main>

	</div>
</div>
<!--// 컨텐츠 끝 -->



<!-- layerpopup - 옵션 변경 -->

<!-- //layerpopup - 옵션 변경 -->
<!-- <!-- layerpopup - 품절 및 수량 부족 안내 -->

<script>
	/* 장바구니창 */
	function minus(element){
		var stat = $(element).next().text();
		alert(stat);
		stat--;
		if (stat <= 0) {
			alert('더이상 줄일수 없습니다.');
			stat = 1;
		}
		$(element).next().text(stat);
	}
	function plus(element){
		var end = $(element).prev().text();
		alert(end);
		end ++;
		if (end > 999) {
			alert('더이상 늘릴 수 없습니다.');
			end = 999;
		}
		$(element).prev().text(end);
	}

	/* 팝업창용 */
	$(function() {
		$('#minusQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberminplu').text();
			var num = parseInt(stat, 10);
			num--;
			if (num <= 0) {
				alert('더이상 줄일수 없습니다.');
				num = 1;
			}
			$('#numberminplu').text(num);
		});
		$('#plusQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberminplu').text();
			var num = parseInt(stat, 10);
			num++;

			if (num > 999) {
				alert('더이상 늘릴수 없습니다.');
				num = 999;
			}
			$('#numberminplu').text(num);
		});
	});
	
</script>

<script>
var goodsColor;
var shoeSize;
function goodsColor(this) {
	$(this)css("border","3px solid blue");
	color = $(this).d_radio_select();
}
function shoeSize(this) {
	$(this)css("border","3px solid blue");
	color = $(this).btn gray xs d_radio_select();
}

</script>

<!-- 장바구니 삭제 -->
<script>
  function(){
	  $("btn sm gray").click(function(){
		  
	        if(confirm("장바구니를 비우시겠습니까?")){
	            location.href="/test/deleteAllCart.do";
	            alert("모두삭제되었습니다.")
	        }
	    });
	}
  
 /* 선텍상품삭제 */
  function deleteSelectCart(element){
	  var product_no = $(element).closest('#sale').children('input').val();

	  if(userNO == null){
		  userNO = 0;
	  }
	  $.ajax({
		  url:'/test/deleteCart.do',
	  	  type: 'POST' ,
	  	  cahche: false,
	  	  data: {"product_no":product_no },
	  		success:function(data)  {
	  			if(data == 1){
	  				$(element).closest('.delete_ver').remove();
	  				var now = $('.num').test();
	  				console.log(now);
	  				var new_num = Number(now) - 1;
	  				console.log(new_num);
	  				$('.num').test(new_num);
	  			}
	  			else{
	  			alert("삭제 실패")
	  			}
	  		},
	  		error:function() {
	  			alert('다시 시도해주세여');
	  		}
	  		
	  });
  }
  
  </script>

<script>
  function option(element){
		alert("장바구니 변경 창");
		var product_no = $(element).closest('.number').children('.p').val();
		alert(product_no);
		window.open("/test/getCartOption.do?product_no=" + product_no,"height=300", "width=500");
	}
  
  </script>
<%@ include file="/footer.jsp"%>
</body>
</html>