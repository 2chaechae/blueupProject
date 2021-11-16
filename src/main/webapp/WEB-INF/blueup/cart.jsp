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
								<a href="/test/deleteAllCart.do" class="btn sm gray">
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
									<th scope="col"><div class="allCheck" style="display:flex;">
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
								<c:if test="${emptyCart eq '없음'}">
									<tr>
										<td><div style="width:880px; height:200px; padding-top:100px;">장바구니에 담긴 상품이 없습니다.</div></td>
									</tr>
								</c:if>
								<c:forEach var="cart" items="${getcartList}" varStatus="status">
									<tr>
									<!-- 선택 체크 -->
									<tbody id="delRow">
										<td>
											<div class="checkBox">
												<input type="checkbox" name="chBox" class="chBox" data-cart_no="${cart.cart_no}" />
													<!-- 개별 체크박스 해제 시 전체 선택 해제 -->
													<script>
													$(".chBox").click(function(){
														$("#allCheck").prop("chekced", false);
													});
													</script>
											</div>
										</td>
												
										<td><img src="${cart.main_image}" style="width:100px; height:110px;"></td>
										<td>${cart.product_name}
											<br>${cart.product_color}/${cart.product_size} &nbsp;
											<input type="button" value="변경" class="option" onclick="option(this)"/>
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
										<td id="sale"> - ${cart.discount}원</td>
										
										<!-- 할인 -->
										<td><input type="hidden"value="${cart.cart_no}"/></td>
										<td width="140px;"><div style="width: 130px;">${cart.total_price }원</div></td>
										<td><a href="#" class="btn_list_del" onclick="deleteSelectCart(this);">삭제</a></td>
										</tbody>
									</tr>
								</c:forEach>

								<tfoot id="GNRL_DLV_cart_foot" style="display: none;">
									<tr>
										<td colspan="6" class="dvTotal"><strong>배송비</strong>
										<em id="total_GNRL_DLV_dlv_amt">0원</em></td>
									</tr>
								</tfoot>
							</table>
							<div class="tableBtarea" id="GNRL_DLV_tableBtarea" style="display: none;">
								<a href="#"><span>선택상품삭제</span></a>
							</div>
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
									<dl>
										<dt>선택상품금액</dt>
										<dd id="GNRL_DLV_god_amt"></dd>
										<dt>선택할인금액</dt>
										<dd class="c_r" id="GNRL_DLV_dc_amt"></dd>

									</dl>
									<dl>
										<dt>총 주문금액</dt>
										<dd>
											<strong id="GNRL_DLV_total_amt"></strong>
										</dd>
									</dl>
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
$(document).ready(function(){
	var price = 0;
	var discount = 0;
	var total = 0;
	var count = ${fn:length(getcartList)};
	alert(count)
	for(m in count){
		price += ${getcartList.get(m).total_price};
		discount -= ${getcartList.get(m).discount};
		total += (${getcartList.get(m).total_price} - ${getcartList.get(m).discount});
	}
	alert(price);
	alert(total);
	$('#GNRL_DLV_god_amt').text(price);
	$('#GNRL_DLV_dc_amt').text(discount);
	$('#GNRL_DLV_total_amt').text(total);
	
});
	/* +, -  수량버튼*/
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


/* 전체상품삭제 */


/* 옵션 변경 창*/
  function option(element){
		alert("장바구니 변경 창");
		var product_no = $(element).next().val();
		alert(product_no);
		window.open("/test/getCartOption.do?product_no=" + product_no,"height=300", "width=500");
	}
  
  </script>
<%@ include file="/footer.jsp"%>
</body>
</html>