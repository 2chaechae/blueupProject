<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211109175335"></script>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-865_20211109094744"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-865_20211109094744"></script>

<!-- 컨텐츠 시작 -->
<div class="contain my od lnblist-Wrap" id="contain">
	<div class="container">
		<form name="frmClaimInfo" id="frmClaimInfo" method="post" action="/">
			<h2 class="title01">상품 취소신청</h2>
			<%@ include file="mypageMenu.jsp" %>
			<main class="contents" id="contents">
				<div class="location-contents">
					<p class="location">
						<span><a href="/main/mall/view">Home</a></span> 
						<span><a href="/mypage/view">마이페이지</a></span> <span>주문정보</span> <strong>상품 취소신청</strong>
					</p>
				</div>
				<!-- 취소상품 선택  -->
				<div class="orderInfoCon">
					<!-- order Result -->
					<div class="odSearchResult odCancel">
						<!--  order Result List -->
						<div class="odResulCon">
							<!--  order LIst  -->
							<div class="odResulBox">
								<div class="orderNb">
									<span><em>주문일</em> <fmt:formatDate value="${ordercancel.get(0).order_time}" pattern="yyyy-MM-dd hh:mm" /></span> 
									<span><em>주문번호</em>${ordercancel.get(0).order_no }</span>
								</div>
								<h3>취소상품 선택</h3>
								<table class="board-list orderTable">
									<colgroup>
										<col style="width: 15px">
										<col style="width:">
										<col style="width: 140px">
										<col style="width: 144px">
									</colgroup>
									<thead>
										<tr>
											<th>
												<span class="check-skin"> 
												<input type="checkbox" id="chkReply" onchange="allSelect($(this));"> <span>선택</span>
												</span>
											</th>
											<th colspan="2">상품정보/옵션</th>
											<th>주문수량</th>
											<th>취소수량</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${ordercancel }" var="ordercancel" varStatus="status">
										<tr id="TR_0_0">
											<td>
												<span class="check-skin"> 
													<input type="checkbox" id="clmVal00" name="anceCheck" value="" > <span>선택</span>
												</span>
											</td>
											<td class="tleft" colspan="2">
												<div class="product-info">
													<div class="product-info-img">
														<a href="javascript:mypageorder.goGoodsInfo('GM0021082429406');">
														<img src="${ordercancel.main_image }" alt="상품이미지" onerror="errorImgShow(this, 100);"></a>
													</div>
													<div class="product-info-text">
														<div class="product-info-box">
															<p class="product-name">
																<a href="javascript:mypageorder.goGoodsInfo('GM0021082429406');" id="pdn${status.index }">${ordercancel.product_name }</a>
															</p>
															<div class="product-price">
																<span><fmt:formatNumber type="number" maxFractionDigits="3" value="${ordercancel.product_price }" />원</span>
															</div>
														</div>
														<div class="product-option">
															<span>${ordercancel.product_color } / ${ordercancel.product_size }</span><br />
														</div>
													</div>
												</div>
											</td>
											<td>${ordercancel.quantity }</td>
											<td>
												<div class="quantity-wrap">
													<input type="button" class="pq-minus" id="downBtn${status.index }" onclick="minus('${status.index}', '${ordercancel.quantity}')" value="-"/>
													<input type="number" id="quantity${status.index }" class="pdNumber clmQtyClass" value="${ordercancel.quantity }"/>
													<input type="button" class="pq-plus" id="upBtn${status.index }" onclick="plus('${status.index}', '${ordercancel.quantity }')" value="+"/>
												</div>
											</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="mgInfoBox" id="refundInfoDiv"></div>
						<div class="btnWrapBox">
							<a href="#none;" class="btn" onclick="javascript:history.back();">취소</a>
							<a href="#none;" class="btn fill" id="acceptCancel">선택주문취소</a>
						</div>
					</div>
					<ul class="text-list02">
						<li>주문상품 중 일부만 취소하시면 취소 조건에 따라 이미 사용하신 포인트 및 쿠폰을 일부 돌려받으실 수 있습니다.</li>
						<li>배송비 무료가 적용된 주문이 취소를 통해 배송비 무료 조건에 위배되는 경우 추가 배송비가 발생 될 수 있습니다.</li>
						<li>에스크로서비스를 선택한 주문은 부분취소, 부분반품이 허용되지 않습니다.</li>
						<li>에스크로서비스를 선택한 주문은 전체취소만 가능하며, 에스크로서비스를 사용한 주문의 전체 반품은 배송비결제가 필요합니다.</li>
					</ul>
				</div>
			</main>
		</form>
		<form id="movedAjaxFrm" method="post" action="/test/getOrderCancel.do">
			<input type="hidden" id="size" name="size" value=""/>
		</form>
	</div>
</div>
<%@ include file="footer.jsp"%>

<script type="text/javascript">
$(function(){
	$('#acceptCancel').click(()=>{
		var size = "${size}";
		var userNo = "${ordercancel.get(0).user_no }";
		var orderNo = "${ordercancel.get(0).order_no }";
		var productNo = "${ordercancel.get(0).product_no }";
		console.log("size", size);
		var string = "";
		var productNm = "";
		for(var i=0; i<size; i++){
			string = string + $('#quantity'+i).val();
			productNm = productNm + $('#pdn'+i).text() + "/";
			
		}
		
		console.log("qweqwe___ string", string);
		console.log("qweqwe___ productNm", productNm);
		
		$.ajax({
			type:'post',
			url:'/test/getOrderCancel.do',
			data:{size : string, pdn : productNm, user_no : userNo, order_no : orderNo, product_no : productNo},
			dataType:'json',
			success:function(data){
				console.log(data);
				alert("주문이 취소되었습니다.");
				location.href="/test/getOrderList.do?user_no="+userNo;
			}
		});
	});
});

function minus(idx,pq){
	var value = $("#quantity"+idx).val();
	value = parseInt(value) - 1;
	if(value > 0){
		$("#quantity"+idx).val(value);
	}
}

function plus(idx, pq){
	var value = $("#quantity"+idx).val();
	value = parseInt(value) + 1;
	if(pq >= value){
		$("#quantity"+idx).val(value);
	}
}
</script>
</html>