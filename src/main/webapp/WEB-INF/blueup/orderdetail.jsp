<!-- 주문상세조회 -->
<%@ page language="java" contentType="text/ht l; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.co /jsp/jstl/core"%>
<%@ taglib prefix="f t" uri="http://java.sun.co /jsp/jstl/f t"%>
<%@ include file="header.jsp"%>
<style>
/* 팝업창 CSS*/
. odal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 100; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: hidden; /* scroll */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/*  odal Content/Box */
. odal-content {
	background-color: #ffffff;
	 argin: 15% auto; /* 15% fro  the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be  ore or less, depending on screen size */
}
</style>
<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="/javascript/ essage/ ypage_ko.js?v=prod-version-858_20211102145956"></script>

<script src="https://nsp.pay.naver.co /sdk/js/naverpay. in.js?v=prod-version-858_20211102145956"></script>
<script src="https://pg.cnspay.co.kr/dlp/scripts/s ilepay.js" charset="euc-kr"></script>
<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>

<script type="text/javascript" src="https://static. lb-korea.co /pc/static/js/ ypage/ ypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static. lb-korea.co /pc/static/js/ ypage/ ypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static. lb-korea.co /pc/static/js/jquery.serializejson. in.js?v=prod-version-858_20211102145956"></script>

<input type="hidden" id="srch onth" na e="srch onth" value="">
<input type="hidden" id="currentPage" na e="currentPage" value="1">
<input type="hidden" na e="_csrf" value="7d63e77f-174d-4e7f-aee8-c60821db0487" />

<!-- 컨텐츠 시작 -->
<div class="contain  y od lnblist-Wrap" id="contain">
	<div class="container">
		<h2 class="title01">주문/배송상세</h2>
		<%@ include file=" ypage enu.jsp" %>
		< ain class="contents" id="contents">
			<div class="location-contents">
				<p class="location">
					<span><a href="/ ain/ all/view">Ho e</a></span> 
					<span><a href="/ ypage/view">마이페이지</a></span> <span>주문정보</span> <strong>주문/배송상세</strong>
				</p>
			</div>
			<!-- 일반주문 상세  -->
			<div class="orderInfoCon">
				<div class="odSearchResult odPd odify odDetail">
					<!-- 주문번호, 상품 리스트 -->
					<div class="odResulCon">
						<div class="odResulBox">
							<!-- 주문정보 -->
							<div class="orderNb ">
								<span>주문</span>
								<span><e >주문일</e > <f t:for atDate value="${orderdetail.get(0).order_ti e}" pattern="yyyy-  -dd hh:  " /></span> 
								<span><e >주문번호</e >${orderdetail.get(0).order_no }</span>
							</div>
							<!-- 상품 전체 취소 -->
							<div class="btnOdTop">
	                              	<a href="#" id="cancelAllBtn" class="btn s  gray d_layer_open">전체취소</a>
									<a href="javascript:void(0)" class="btn s  fill" onclick=" ove()">1:1 문의</a>
                             </div>
							<!-- 배송지 -->
							<div class="orderAdd odAddBox">
								<dl>
									<dt>받는 분</dt>
									<dd>${orderdetail.get(0).receiver }</dd>
								</dl>
								<dl>
									<dt>주소</dt>
									<dd>${orderdetail.get(0).address }</dd>
								</dl>
								<dl>
									<dt>연락처</dt>
									<dd>${orderdetail.get(0).phone1 } - ${orderdetail.get(0).phone2 } - ${orderdetail.get(0).phone3 }</dd>
								</dl>
								
							</div>

							<!-- 주문상품 리스트  -->
							<table class="board-list orderTable">
								<colgroup>
									<col>
									<col style="width: 80px">
									<col style="width: 114px">
									<col style="width: 90px">
									<col style="width: 146px">
								</colgroup>
								<tbody>
									<c:forEach ite s="${orderdetail }" var="orderdetail" varStatus="status">
										<tr>
											<td class="tleft">
												<div class="product-info ">
													<div class="product-info-i g">
														<a href="javascript: ypageorder.goGoodsInfo('G 0021073028544');">
															<i g src="${orderdetail. ain_i age }" alt="상품이미지" onerror="errorI gShow(this, 100);">
														</a>
													</div>
													<div class="product-info-text">
														<div class="product-info-box">
															<p class="product-na e">
																<a href="javascript: ypageorder.goGoodsInfo('G 0021073028544');">
																	${orderdetail.product_na e }</a>
															</p>
															<div class="product-price">
																<span><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.product_price }" />원</span>
															</div>
														</div>
														<div class="product-option">
															<span> ${orderdetail.product_color } / ${orderdetail.product_size }</span>
														</div>
													</div>
												</div>
											</td>
											<td>${orderdetail.quantity }</td>
											<td><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.product_price }" />원</td>
											<td>${orderdetail.order_status }</td>
											<c:choose>
												<c:when test="${orderdetail.order_status == '결제완료' or orderdetail.order_status == '배송지연'}">
												<!-- 결제완료 / 배송지연(예상일자) => 주문취소 버튼 -->
													<td class="selBox">
				                                  		<span><a href="#none;" class="btn gray s  d_layer_open" id="cancelBtn${status.index }" onclick="cancelOrder(${orderdetail.user_no }, ${orderdetail.order_no },${orderdetail.product_no });">주문취소</a></span>
													</td>
												</c:when>
												<c:when test="${orderdetail.order_status == '배송완료' or orderdetail.order_status == '교환완료'}">
												<!-- 배송완료 / 교환완료 => 구매확정/반품요청/교환요청 버튼 -->
													<td class="selBox">
					                                  	<span><a href="#none;" class="btn gray s  d_layer_open" id="confir edBtn${status.index }" onclick="confir edOrder(${orderdetail.user_no }, ${orderdetail.order_no }, ${orderdetail.product_no });">구매확정</a></span>
					                                  	<span><a href="#none;" class="btn gray s  d_layer_open" id="returnBtn${status.index }" onclick="returnRequest(${orderdetail.user_no }, ${orderdetail.order_no }, ${orderdetail.product_no });">반품요청</a></span>
					                                  	<span><a href="#none;" class="btn gray s  d_layer_open" id="exchangeBtn${status.index }" onclick="exchangeRequest(${orderdetail.user_no }, ${orderdetail.order_no },${orderdetail.product_no });">교환요청</a></span>
													</td>
												</c:when>
												<c:when test="${orderdetail.order_status == '구매확정' }">
												<!-- 구매확정 => 리뷰작성 버튼 -->
													<c:if test="${orderdetail.review_status == false }">
													<td class="selBox">
					                                  	<span><a href="#none;" class="btn gray s  d_layer_open" id="reviewBtn${status.index }" onclick="reviewOrder(${orderdetail.user_no }, ${orderdetail.order_detail_no },${orderdetail.product_no });">리뷰작성</a></span>
													</td>
													</c:if>
												</c:when>
												<c:when test="${orderdetail.order_status == '반품요청' }">
												<!-- 반품요청 => 반품철회 버튼 -->
													<td class="selBox">
					                                  	<span><a href="#none;" class="btn gray s  d_layer_open" id="Withdrawal of return${status.index }" onclick="withdrawalReturn(${orderdetail.user_no }, ${orderdetail.order_no },${orderdetail.product_no });">반품철회</a></span>
													</td>
												</c:when>
												<c:when test="${orderdetail.order_status == '교환요청' }">
												<!-- 교환요청 => 교환철회 버튼 -->
													<td class="selBox">
					                                  	<span><a href="#none;" class="btn gray s  d_layer_open" id="Withdrawal of exchange${status.index }" onclick="withdrawalExchange(${orderdetail.user_no }, ${orderdetail.order_no },${orderdetail.product_no });">교환철회</a></span>
													</td>
												</c:when>
												<c:when test="${orderdetail.order_status == '주문취소' }">
												<!-- 주문취소 => 주문취소철회 버튼 -->
													<td class="selBox">
					                                  	<span><a href="#none;" class="btn gray s  d_layer_open" id="Withdrawal of Cancel${status.index }" onclick="withdrawalCancel(${orderdetail.user_no }, ${orderdetail.order_no },${orderdetail.product_no });">주문취소철회</a></span>
													</td>
												</c:when>
												<c:otherwise>
													<td class="selBox">
													</td>
												</c:otherwise>
											</c:choose>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--  결제 정보 -->
							<div class=" gInfoBox">
								<h3>결제 정보</h3>
								<table class="tbTotalList">
									<caption>결제 정보</caption>
									<colgroup>
										<col style="width: 20%">
										<col style="width:">
										<col style="width:">
									</colgroup>
									<tbody>
										<tr>
											<th>상품주문금액</th>
											<td colspan="2"><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.get(0).order_price }" />원</td>
										</tr>
										<tr class="selLineBoxBt">
											<th>배송비</th>
											<td colspan="2"><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.get(0).delivery_fee }" />원</td>
										</tr>
										<tr class="sel gT">
											<th>주문할인</th>
											<td colspan="2">0원</td>
										</tr>
										<tr>
											<th>쿠폰할인</th>
											<td colspan="2"><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.get(0).coupon_discount }" />원</td>
										</tr>
										<tr>
											<th>사용 포인트</th>
											<td colspan="2"><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.get(0).used_point }" />원</td>
										</tr>
									</tbody>
									<tfoot>
										<tr class="selLineBoxBt">
											<th>총 결제금액</th>
											<td>
												<span class="selTxt gL">${orderdetail.get(0).order_ eans }</span> 
												<span class="selTxt gL">결제한 은행</span> 
												<span class="selTxt gL">결제한 계좌</span>
											</td>
											<td><strong><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.get(0).order_price + orderdetail.get(0).delivery_fee -orderdetail.get(0).coupon_discount - orderdetail.get(0).used_point }" /></strong> 원</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- 주문취소 -->
							<c:forEach ite s="${orderdetail }" var="orderdetail" varStatus="status">
								<c:if test="${orderdetail.order_status == '주문취소'}">
									<c:if test='${status.index == 0 }'>
										<div class=" gInfoBox">
											<h3>취소 정보</h3>
											<table class="tbTotalList">
												<caption>취소 정보</caption>
												<colgroup>
													<col style="width: 20%">
													<col style="width:">
													<col style="width:">
												</colgroup>
												<tbody>
													<tr>
														<th>상품주문금액</th>
														<td colspan="2"><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.refund_price}" />원</td>
													</tr>
													<tr>
														<th>주문할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>쿠폰할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>포인트 환급</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>배송비</th>
														<td colspan="2">0원</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<th>환불 금액</th>
														<td><span class="selTxt gL">${orderdetail.refund_ eans }</span>
															<span class="selTxt gL">${orderdetail.refund_bank }</span>
															<span class="selTxt gL">${orderdetail.refund_account }</span>
														</td>
														<td><strong><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.refund_price}" /></strong> 원</td>

													</tr>
													<tr class="selBg">
														<th>진행단계</th>
														<td colspan="2">취소 완료 (<f t:for atDate value="${orderdetail.cancel_date}" pattern="yyyy-  -dd hh:  " />)
														</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</c:if>
								</c:if>
							</c:forEach>

							<!-- 반품정보 -->
							<c:forEach ite s="${orderdetail }" var="orderdetail" varStatus="status">
								<c:if test="${orderdetail.order_status == '반품완료'}">
									<c:if test='${status.index == 1 }'>
										<div class=" gInfoBox">
											<h3>반품 정보</h3>
											<table class="tbTotalList">
												<caption>반품 정보</caption>
												<colgroup>
													<col style="width: 20%">
													<col style="width:">
													<col style="width:">
												</colgroup>
												<tbody>
													<tr>
														<th>상품주문금액</th>
														<td colspan="2"><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="" />원</td>
													</tr>
													<tr>
														<th>주문할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>쿠폰할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>포인트 환급</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>배송비</th>
														<td colspan="2">0원</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<th>반품 금액</th>
														<td><span class="selTxt gL">${orderdetail.refund_ eans }</span>
															<span class="selTxt gL">${orderdetail.refund_bank }</span>
															<span class="selTxt gL">${orderdetail.refund_account }</span>
														</td>
														<td><strong><f t:for atNu ber type="nu ber"  axFractionDigits="3" value="${orderdetail.refund_price}" /></strong> 원</td>

													</tr>
													<tr class="selBg">
														<th>진행단계</th>
														<td colspan="2">반품 완료 (<f t:for atDate value="${orderdetail.cancel_date}" pattern="yyyy-  -dd hh:  " />)
														</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</c:if>
								</c:if>
							</c:forEach>
							<!-- 확인버튼 -->
							<div class="btnWrapBox">
								<a href="#" id="confir Btn" class="btn fill">확인</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</ ain>
	</div>
</div>

<!-- 전체취소 popup-->
<div id="allCancelPopup" class=" odal" style="display: none;">
	<div class=" odal-content" style="width: 529px;">
		<h2>주문 전체취소</h2>
		<div class="layer-cont ly-box">
			<table class="board-write sel gS ">
				<caption>주문 전체취소</caption>
				<colgroup>
					<col style="width: 125px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">주문일</th>
						<td>
							<div class="board-write-text"><f t:for atDate value="${orderdetail.get(0).order_ti e}" pattern="yyyy-  -dd hh:  " /></div>
						</td>
					</tr>
					<tr>
						<th scope="row">주문번호</th>
						<td>
							<div class="board-write-text">${orderdetail.get(0).order_no }</div>
						</td>
					</tr>
				</tbody>
			</table>
			<!--  button -->
			<div class="lyBtnArea">
				<a href="#" class="btn w160 d_layer_close" id="escBtn">취소</a> 
				<a href="#" class="btn fill w160" id="acceptBtn">주문취소</a>
			</div>
		</div>
	</div>
</div>
<!-- 교환요청 popup -->
<div id="exchangePopup" class=" odal" style="display: none;">
	<div class=" odal-content" style="width: 529px;">
		<h2>교환요청</h2>
		<div class="layer-cont ly-box">
			<table class="board-write sel gS ">
				<caption>교환요청</caption>
				<colgroup>
					<col style="width: 125px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">주문일</th>
						<td>
							<div class="board-write-text"><f t:for atDate value="${orderdetail.get(0).order_ti e}" pattern="yyyy-  -dd hh:  " /></div>
						</td>
					</tr>
					<tr>
						<th scope="row">주문번호</th>
						<td>
							<div id="orderNu " class="board-write-text">${orderdetail.get(0).order_no }</div>
						</td>
					</tr>
					<tr>
						<th scope="row">상품번호</th>
						<td>
							<div id="productNu " class="board-write-text">${orderdetail.get(0).product_no }</div>
						</td>
					</tr>
				</tbody>
			</table>
			<!--  button -->
			<div class="lyBtnArea">
				<a href="#" class="btn w160 d_layer_close" id="exchangeEscBtn">취소</a> 
				<a href="#" class="btn fill w160" id="exchangeRequest">교환요청</a>
			</div>
		</div>
	</div>
</div>

<!-- 반품요청 popup -->
<div id="returnPopup" class=" odal" style="display: none;">
	<div class=" odal-content" style="width: 529px;">
		<h2>반품요청</h2>
		<div class="layer-cont ly-box">
			<table class="board-write sel gS ">
				<caption>반품요청</caption>
				<colgroup>
					<col style="width: 125px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">주문일</th>
						<td>
							<div class="board-write-text"><f t:for atDate value="${orderdetail.get(0).order_ti e}" pattern="yyyy-  -dd hh:  " /></div>
						</td>
					</tr>
					<tr>
						<th scope="row">주문번호</th>
						<td>
							<div id="orderNu " class="board-write-text">${orderdetail.get(0).order_no }</div>
						</td>
					</tr>
					<tr>
						<th scope="row">상품번호</th>
						<td>
							<div id="productNu " class="board-write-text">${orderdetail.get(0).product_no }</div>
						</td>
					</tr>
				</tbody>
			</table>
			<!--  button -->
			<div class="lyBtnArea">
				<a href="#" class="btn w160 d_layer_close" id="returnEscBtn">취소</a> 
				<a href="#" class="btn fill w160" id="returnRequest">반품요청</a>
			</div>
		</div>
	</div>
</div>
<!-- 선택한 상품 주문취소 -->
<for  id=" ovedProductCancelFor "  ethod="post" action="/test/getOrderCancelPage.do">
	<input type="hidden" id="user_no" na e="user_no" value="${orderdetail.get(0).user_no }"/>
	<input type="hidden" id="order_no" na e="order_no" value="${orderdetail.get(0).order_no }"/>
	<input type="hidden" id="product_no" na e="product_no" value="${orderdetail.get(0).product_no }"/>
</for >
<script type="text/javascript">
$(function(){
	/* order_detail에서 확인버튼*/
	$('#confir Btn').click(()=>{
		var userNo = "${orderdetail.get(0).user_no }";
		location.href="/test/getOrderList.do?user_no="+userNo;
	});
	/* 전체 주문 취소*/
	$('#cancelAllBtn').click(()=>{
		$('#allCancelPopup').show();
	});
	
	$('#escBtn').click(()=>{
		$('#allCancelPopup').hide();
	});
	
	$('#acceptBtn').click(()=>{
		var result = confir ("주문을 취소하시겠습니까?");
		if(result) { //yes 
			var userNo = "${orderdetail.get(0).user_no }";
			var orderNo = "${orderdetail.get(0).order_no }";
			var productNo = "${orderdetail.get(0).product_no }";
			$.ajax({
				url:'/test/getOrderCancelAll.do',
			    type:'POST',
				data: {user_no : userNo, order_no : orderNo, product_no : productNo},
				dataType:'json',
				success:function(data) {
					var nu  = data.nu ;
					console.log(nu );
				}
			});
			alert("주문이 취소되었습니다.");
			location.href="/test/getOrderList.do?user_no="+userNo;
		} else { //no 
		}
	});
	
	/* 1:1 문의글 이동 */
	function  ovd(){
		var user_no = localStorage.getIte ("user_no");
		location.href="/test/qnaList.do?user_no=" + user_no + "&pageNu =1";
	}
	
	/* 교환요청 */
	$('#exchangeRequest').click(()=>{
		var result = confir ("교환 요청하시겠습니까?");
		if(result) { //yes 
			var userNo = "${orderdetail.get(0).user_no }";
			var orderNo = "${orderdetail.get(0).order_no }";
			var productNo = "${orderdetail.get(0).product_no }";
			$.ajax({
				url:'/test/getExchangeRequest.do',
			    type:'POST',
				data: {user_no : userNo, order_no : orderNo, product_no : productNo},
				dataType:'json',
				success:function(data) {
					var nu  = data.nu ;
					console.log(nu );
				}
			});
			alert("교환요청이 완료되었습니다.");
			location.href="/test/getOrderList.do?user_no="+userNo;
		} else { //no 
		}
	});
	
	$('#exchangeEscBtn').click(()=>{
		$('#exchangePopup').hide();
	});
	
	/* 반품요청 */
	$('#returnRequest').click(()=>{
		var result = confir ("반품 요청하시겠습니까?");
		if(result) { //yes 
			var userNo = "${orderdetail.get(0).user_no }";
			var orderNo = "${orderdetail.get(0).order_no }";
			var productNo = "${orderdetail.get(0).product_no }";
			$.ajax({
				url:'/test/getReturnRequest.do',
			    type:'POST',
				data: {user_no : userNo, order_no : orderNo, product_no : productNo},
				dataType:'json',
				success:function(data) {
					var nu  = data.nu ;
					console.log(nu );
				}
			});
			alert("반품요청이 완료되었습니다.");
			location.href="/test/getOrderList.do?user_no="+userNo;
		} else { //no 
		}
	});
	
	$('#returnEscBtn').click(()=>{
		$('#returnPopup').hide();
	});
	
	
});

/* 선택주문취소 */
function cancelOrder(user_no, order_no, product_no){
	var userNo = user_no;
	var orderNo = order_no;
	var productNo = product_no;
	$('#user_no').val(userNo); //히든값 세팅
	$('#order_no').val(orderNo); //히든값 세팅
	$('#product_no').val(productNo);
	$('# ovedProductCancelFor ').sub it();
}
/* 구매확정 */
function confir edOrder(user_no, order_no, product_no){
	var userNo = user_no;
	var orderNo = order_no;
	var productNo = product_no;
	var result = confir ("구매확정하시겠습니까?");
	if(result) { //yes 
		console.log(productNo);
		$.ajax({
			url:'/test/getOrderConfir ed.do',
		    type:'POST',
			data: {user_no : userNo, order_no : orderNo, product_no : productNo},
			dataType:'json',
			success:function(data) {
				var nu  = data.nu ;
				console.log(nu );
			}
		});
		alert("구매확정되었습니다.");
		location.href="/test/getOrderList.do?user_no="+userNo;
		
	} else { //no 
	}
}
/* 반품요청 팝업*/
function returnRequest(user_no, order_no, product_no){
	var userNo = user_no;
	var orderNo = order_no;
	var productNo = product_no;
	$('#orderNu ').ht l(orderNo);
	$('#productNu ').ht l(productNo);
	$('#returnPopup').show();
}

/* 반품요청철회*/
function withdrawalReturn(user_no, order_no, product_no){
	var userNo = user_no;
	var orderNo = order_no;
	var productNo = product_no;
	var result = confir ("반품요청을 철회하시겠습니까?");
	if(result) { //yes 
		$.ajax({
			url:'/test/getWithdrawalReturn.do',
		    type:'POST',
			data: {user_no : userNo, order_no : orderNo, product_no : productNo},
			dataType:'json',
			success:function(data) {
				var nu  = data.nu ;
				console.log(nu );
			}
		});
		alert("반품요청이 철회되었습니다.");
		location.href="/test/getOrderList.do?user_no=" + userNo;
	} else { //no 
	}
}
/* 교환요청 팝업 */
function exchangeRequest(user_no, order_no, product_no){
	var userNo = user_no;
	var orderNo = order_no;
	var productNo = product_no;
	$('#orderNu ').ht l(orderNo);
	$('#exchangePopup').show();
}
/* 교환요청철회*/
function withdrawalExchange(user_no, order_no, product_no){
	var userNo = user_no;
	var orderNo = order_no;
	var productNo = product_no;
	var result = confir ("교환요청을 철회하시겠습니까?");
	if(result) { //yes 
		$.ajax({
			url:'/test/getWithdrawalExchange.do',
		    type:'POST',
			data: {user_no : userNo, order_no : orderNo, product_no : productNo},
			dataType:'json',
			success:function(data) {
				var nu  = data.nu ;
				console.log(nu );
			}
		});
		alert("교환요청이 철회되었습니다.");
		location.href="/test/getOrderList.do?user_no=" + userNo;
	} else { //no 
	}
}


</script>