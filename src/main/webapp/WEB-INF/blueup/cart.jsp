<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
								<a href="javascript:void(0)" onclick="deleteAll()" class="btn sm gray">
									<span>전체상품삭제</span></a> 
								<a href="#" class="btn sm gray">
									<span>선택상품삭제</span></a> 
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

								<tr>
									<th scope="col"><div id="allCheck" style="display:flex;">
											<input type="checkbox" name="allCheck" id="allCheck" style="margin-left:10px;" /><labelfor="allCheck" style="padding-left:10px;">전체</label>
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
									<th scope="col"><div style="width: 158px; padding-left:94px;">주문금액</div></th>
									<th scope="col"><div style="display:flex; padding-left:217px;">삭제</div></th>
								</tr>
								<c:choose>
								<c:when test="${emptyCart eq '없음'}">
									<tr>
										<td><div style="width:880px; height:200px; padding-top:100px;">장바구니에 담긴 상품이 없습니다.</div></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="cart" items="${getcartList}" varStatus="status">
										<!-- 선택 체크 -->
									<tr class="add">
										<tbody id="delRow">
											<tr class="row">
											<td>
												<div class="checkBox">
													<input type="checkbox" name="chBox" class="chBox" value="${cart.cart_no}" />
														<!-- 개별 체크박스 해제 시 전체 선택 해제 -->
												</div>
											</td>
													
											<td><img src="${cart.main_image}" style="width:100px; height:110px;"></td>
											<td>${cart.product_name}
												<br>${cart.product_color}/${cart.product_size} &nbsp;
												<input class="p_no" type="hidden" value="${cart.product_no}"/>
											</td>
											<!-- 수량 -->
											<td>
												<div class="number">
													<button type="button" onclick="minus(this)" class="decreaseQuantity">
													<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/minus.png" style="width: 20px; height: 20px;">
													</button>
													<span class="numberUpDown">${cart.quantity}</span>
													<button type="button" onclick="plus(this)" class="increaseQuantity">
														<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/order/plus1.png" style="width: 20px; height: 20px;">
													</button>
													<br>
												</div>
											</td>
											<!--///////// 수량 -->
												<c:set value="${cart.discount}" var="discount"/>
												<c:set value="${cart.quantity}" var="quantity"/>
												<td id="sale" class="discountvalue"><c:out value="${discount * quantity}"/>원</td>
												<input class="discount" type="hidden" value="${discount * quantity}"/>
											<!-- 할인 -->
											<td><input type="hidden"value="${cart.cart_no}"/></td>
											<td width="140px;"><div class="product_p" style="width: 130px;">${cart.total_price}원</div></td>
											<td><a href="#" class="btn_list_del" onclick="deleteSelectCart(this);">삭제</a></td>
											</tr>
											</tbody>
										</tr>
									</c:forEach>
								</c:otherwise>
								</c:choose>
								<tfoot id="GNRL_DLV_cart_foot">
									<tr>
										<td colspan="6" class="dvTotal"><strong>배송비</strong>
										<em id="total_GNRL_DLV_dlv_amt">0원</em></td>
									</tr>
								</tfoot>
							</table>
							<div class="btnWrap">
								<a href="/test/index.do" class="btn lg" style="margin-top:50px;">쇼핑 계속하기</a>
							</div>
						</div>
						<!-- // order list -->

						<!-- 사이드 결제 정보 -->
						<div class="orderPay d_fix">
							<div class="orderPayList d_fix_obj">
								<h3>결제정보</h3>
								<div class="orderPayInfo">
								<c:set value="${getcartList.get(0).user_no}" var="user_no"/>
								<c:choose>
									<c:when test="${user_no > 0}" >
										<dl>
											<c:set value="${getcartList.get(0).all_price}" var="all_price"/>
											<c:set value="${getcartList.get(0).all_discount}" var="all_discount"/>
											<dt>선택상품금액</dt>
											<dd id="GNRL_DLV_god_amt">${getcartList.get(0).all_price}</dd>
											<dt>선택할인금액</dt>
											<dd class="c_r" id="GNRL_DLV_dc_amt">${getcartList.get(0).all_discount}</dd>
	
										</dl>
										<dl>
											<dt>총 주문금액</dt>
											<dd>
												<strong id="GNRL_DLV_total_amt"><c:out value="${all_price-all_discount}"/></strong>
											</dd>
										</dl>
									</c:when>
									<c:otherwise>
										<c:set var="sum_price" value="0"/>
										<c:set var="sum_discount" value="0"/>
										<c:forEach var="cart" items="${getcartList}" varStatus="status">
											<c:set var="sum_price" value="${sum_price + cart.total_price }"/>
											<c:set var="sum_discount" value="${sum_discount + (cart.discount * cart.quantity) }"/>
										</c:forEach>
										<dl>
											<dt>선택상품금액</dt>
											<dd id="GNRL_DLV_god_amt"><c:out value="${sum_price}"/></dd>
											<dt>선택할인금액</dt>
											<dd class="c_r" id="GNRL_DLV_dc_amt"><c:out value="${sum_discount}"/></dd>
										</dl>
										<dl>
											<dt>총 주문금액</dt>
											<dd>
												<strong id="GNRL_DLV_total_amt"><c:out value="${sum_price-sum_discount}"/></strong>
											</dd>
										</dl>
									</c:otherwise>
								</c:choose>
								</div>
								<div class="btn_order" id="GNRL_DLV_order_btn">
									<a href="#" class="btn lg fill">주문하기</a>
								</div>
							</div>
						</div>
					</div>
			</section>
		</main>
	</div>
</div>
<!--// 컨텐츠 끝 -->

<script>
var user_no = localStorage.getItem("user_no");
	$(document).ready(function(){
		$('.chBox').change(function(){
			if(user_no != null){
				var cart_no = new Array();
				$('input:checkbox[class=chBox]:checked').each(function(){
					cart_no.push(parseInt($(this).val()));
				});	
				$.ajax({
					url:'/test/selectedcartList.do',
				    type:'POST',
					dataType : "json",
					data: JSON.stringify(cart_no),
					contentType :  "application/json",
					success:function(data) {
						console.log("자료받기 완료");
						var all_price = data[0].all_price;
						var all_discount = data[0].all_discount;
						var total_amount = all_price - all_discount;
						$('#GNRL_DLV_god_amt').text(all_price);
						$('#GNRL_DLV_dc_amt').text(all_discount);
						$('#GNRL_DLV_total_amt').text(total_amount);
					},
					error:function() {
						alert('다시 시도해주세요');
					}
				});
			}else{
				// 비회원 체크박스
			}
		});
		
		$("#allCheck").click(function(){
			if($("input:checkbox[name=allCheck]").is(":checked") == true) {
				$("input[name=chBox]:checkbox").prop("checked", true);
					if(user_no != null){
						var cart_no = new Array();
						$('input:checkbox[class=chBox]:checked').each(function(){
							cart_no.push(parseInt($(this).val()));
						});	
						$.ajax({
							url:'/test/selectedcartList.do',
						    type:'POST',
							dataType : "json",
							data: JSON.stringify(cart_no),
							contentType :  "application/json",
							success:function(data) {
								console.log("자료받기 완료");
								var all_price = data[0].all_price;
								var all_discount = data[0].all_discount;
								var total_amount = all_price - all_discount;
								$('#GNRL_DLV_god_amt').text(all_price);
								$('#GNRL_DLV_dc_amt').text(all_discount);
								$('#GNRL_DLV_total_amt').text(total_amount);
							},
							error:function() {
								alert('다시 시도해주세요');
							}
						});
					}else{
						// 비회원 체크박스
					}
			} else {
				$("input[name=chBox]:checkbox").prop("checked", false);
				$('#GNRL_DLV_god_amt').text(0);
				$('#GNRL_DLV_dc_amt').text(0);
				$('#GNRL_DLV_total_amt').text(0);
			}
		});
	});
	////////////// 수량변경 마이너스 /////////////////
	function minus(element){
		///////////////현재 값//////////////////////
		var stat = parseInt($(element).next().text()); // 수량 
		var cart_no = $(element).closest('tbody').find('.chBox').val(); // 장바구니 번호
		var product_price = parseInt($(element).closest('tbody').find('.product_p').text()); // 선택상품의 상품총액
		var discount_price = parseInt($(element).closest('tbody').find('.discount').val()); // 선택상품의 할인총액
		
		///////////////개당 값////////////////////
		var per_p = parseInt(product_price / stat); // 1개 상품 금액
		var per_d = parseInt(discount_price / stat); // 1개 상품 할인 금액
		alert("1개 할인금액" + per_d);
		alert("개수 " + stat);
		//////////////변경 값////////////////////
		product_price -= per_p;  // 변경된 선택상품의 상품총액
		discount_price -= per_d; // 변경된 선택상품의 할인총액
		
		////////////// 수량 변경//////////////
		stat--;
			if (stat <= 0) {
				alert('더이상 줄일수 없습니다.');
				stat = 1;
			}
		$(element).next().text(stat);
		/////// DB & Session update 및 화면처리///////
		if(user_no != null){
			$.ajax({
				url:'/test/updateCartNum.do',
			    type:'POST',
			   	cache:false,
				data: {"cart_no":cart_no, "quantity":stat, "total_price":product_price, "user_no":user_no },
				success:function(data) {
					if(data == 1){
					console.log("db update 완료");
						var p_amount = $('#GNRL_DLV_god_amt').text();
						var ds_amount = $('#GNRL_DLV_dc_amt').text();
						p_amount -= per_p;
						ds_amount -= per_d; 	
						var total_amount = p_amount - ds_amount;
						$('#GNRL_DLV_god_amt').text(p_amount);
						$('#GNRL_DLV_dc_amt').text(ds_amount);
						$('#GNRL_DLV_total_amt').text(total_amount);
						$(element).closest('tbody').find('.product_p').text(product_price);
						$(element).closest('tbody').find('.discountvalue').text(discount_price);
						$(element).closest('tbody').find('.discount').val(discount_price);
					}
				},
				error:function() {
					alert('다시 시도해주세요');
					stat++;
					$(element).next().text(stat);
				}
			});
		}else{
			// 비회원 마이너스 
		}
	}
	
	
	//////////////수량변경 플러스/////////////////
	function plus(element){
		///////////////현재 값////////////////////// 
		var end = $(element).prev().text(); //수량
		var cart_no = $(element).closest('tbody').find('.chBox').val(); // 장바구니 번호
		var product_price = parseInt($(element).closest('tbody').find('.product_p').text()); // 선택상품의 상품총액
		var discount_price = parseInt($(element).closest('tbody').find('.discount').val()); // 선택상품의 할인총액
		alert(discount_price);
		///////////////개당 값////////////////////
		var per_p = parseInt(product_price / end); // 1개 상품 금액
		var per_d = parseInt(discount_price / end); // 1개 상품 할인 금액
		
		//////////////변경 값////////////////////
		product_price += per_p;  // 변경된 선택상품의 상품총액
		discount_price += per_d; // 변경된 선택상품의 할인총액
		
		alert("현재 할인금액" + discount_price);
		alert("1개 할인금액" + per_d);
		alert("개수 " + end);
		//////////////수량 변경//////////////
		end ++;
		if (end > 999) {
			alert('더이상 늘릴 수 없습니다.');
			end = 999;
		}
		$(element).prev().text(end);
		
		/////// DB & Session update 및 화면처리 //////
		if(user_no != null){
			$.ajax({
				url:'/test/updateCartNum.do',
			    type:'POST',
			   	cache:false,
				data: {"cart_no":cart_no, "quantity":end, "total_price":product_price, "user_no":user_no },
				success:function(data) {
					if(data == 1){
					console.log("db update 완료");
						var p_amount = parseInt($('#GNRL_DLV_god_amt').text());
						var ds_amount = parseInt($('#GNRL_DLV_dc_amt').text());
						p_amount += per_p;
						ds_amount += per_d; 	
						var total_amount = p_amount - ds_amount;
						$('#GNRL_DLV_god_amt').text(p_amount);
						$('#GNRL_DLV_dc_amt').text(ds_amount);
						$('#GNRL_DLV_total_amt').text(total_amount);
						$(element).closest('tbody').find('.product_p').text(product_price);
						$(element).closest('tbody').find('.discountvalue').text(discount_price);
						$(element).closest('tbody').find('.discount').val(discount_price);
					}
				},
				error:function() {
					alert('다시 시도해주세요');
					end--;
					$(element).next().text(end);
				}
			});
		}else{
			// 비회원 플러스
		}
	}
	
	function deleteAll(){
		if(user_no != null){
			$.ajax({
				url:'/test/deleteAllCart.do',
			    type:'POST',
				data: {"user_no":user_no },
				success:function(data) {
					if(data == 1){
					console.log("db 삭제 완료");
						$('tr').remove('.row');
						var append = '<tr><td><div style="width:880px; height:200px; padding-top:100px;">장바구니에 담긴 상품이 없습니다.</div></td></tr>';
						$('.add').append(append);
						$('#GNRL_DLV_god_amt').text(0);
						$('#GNRL_DLV_dc_amt').text(0);
						$('#GNRL_DLV_total_amt').text(0);
					}
				},
				error:function() {
					alert('다시 시도해주세요');
				}
			});
		}else{
			location.href="/test/deleteAllCart.do";
		}
	}
 </script>
<%@ include file="/footer.jsp"%>
</body>
</html>