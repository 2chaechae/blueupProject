<!-- 주문상세조회 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="header.jsp"%>
<style>
/*전체취소 팝업창 CSS*/
.modal {
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

/* Modal Content/Box */
.modal-content {
	background-color: #ffffff;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}
</style>
<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js?v=prod-version-858_20211102145956"></script>
<script src="https://pg.cnspay.co.kr/dlp/scripts/smilepay.js" charset="euc-kr"></script>
<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>

<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js?v=prod-version-858_20211102145956"></script>

<input type="hidden" id="srchMonth" name="srchMonth" value="">
<input type="hidden" id="currentPage" name="currentPage" value="1">
<input type="hidden" name="_csrf" value="7d63e77f-174d-4e7f-aee8-c60821db0487" />

<!-- 컨텐츠 시작 -->
<div class="contain my od lnblist-Wrap" id="contain">
	<div class="container">
		<h2 class="title01">주문/배송상세</h2>
		<nav id="lnb" class="lnb-nav">
			<strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
			<p><b>ㅇㅇㅇ</b>님<br />반갑습니다.</p>
			<hr class="hr-ddd" />
			<ul class="nav-mnlist">
				<li id="myNavi1"><a href="javascript:;"><span>주문정보</span></a>
					<ul>
						<li><a href="/orderlist.jsp"><span>주문/배송조회</span></a></li>
						<li><a href="/mypage/claim/list"><span>취소/교환/반품 조회</span></a></li>
					</ul></li>
				<li id="myNavi2"><a href="javascript:;"><span>활동정보</span></a>
					<ul>
						<li><a href="/mypage/wishlist/list"><span>위시리스트</span></a></li>
						<li><a href="/mypage/goods/reviewView"><span>상품리뷰</span></a></li>
						<li><a href="/mypage/inquiry/list"><span>1:1 문의</span></a></li>
					</ul></li>
				<li id="myNavi3"><a href="javascript:;"><span>혜택정보</span></a>
					<ul>
						<li><a href="/mypage/benefit/listPoint"><span>포인트</span></a></li>
						<li><a href="/mypage/benefit/listCoupon"><span>쿠폰함</span></a></li>
						<li><a href="/mypage/benefit/membershipRateInfo"><span>회원혜택안내</span></a></li>
					</ul></li>
				<li id="myNavi4"><a href="javascript:;"><span>회원정보</span></a>
					<ul>
						<li><a href="/mypage/member/modifyMemberView"><span>회원정보 수정</span></a></li>
						<li><a href="/mypage/member/secessionMemberView"><span>회원탈퇴</span></a>
						</li>
					</ul></li>
			</ul>
		</nav>
		<main class="contents" id="contents">
			<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span> 
					<span><a href="/mypage/view">마이페이지</a></span> <span>주문정보</span> <strong>주문/배송상세</strong>
				</p>
			</div>
			<!-- 일반주문 상세  -->
			<div class="orderInfoCon">
				<div class="odSearchResult odPdModify odDetail">
					<!-- 주문번호, 상품 리스트 -->
					<div class="odResulCon">
						<div class="odResulBox">
							<!-- 주문정보 -->
							<div class="orderNb ">
								<span><em>주문일</em> <fmt:formatDate value="${orderdetail.get(0).order_time}" pattern="yyyy-MM-dd hh:mm" /></span> 
								<span><em>주문번호</em>${orderdetail.get(0).order_no }</span>
							</div>
							<!-- 상품 전체 취소 -->
							<div class="btnOdTop">
	                              	<a href="#" id="cancelAllBtn" class="btn sm gray d_layer_open">전체취소</a>
									<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">1:1 문의</a>
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
									<c:forEach items="${orderdetail }" var="orderdetail">
										<tr>
											<td class="tleft">
												<div class="product-info ">
													<div class="product-info-img">
														<a href="javascript:mypageorder.goGoodsInfo('GM0021073028544');">
															<img src="${orderdetail.product_img }" alt="상품이미지" onerror="errorImgShow(this, 100);">
														</a>
													</div>
													<div class="product-info-text">
														<div class="product-info-box">
															<p class="product-name">
																<a href="javascript:mypageorder.goGoodsInfo('GM0021073028544');">
																	${orderdetail.product_name }</a>
															</p>
															<div class="product-price">
																<span><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.product_price }" />원</span>
															</div>
														</div>
														<div class="product-option">
															<span> ${orderdetail.product_color } / ${orderdetail.product_size }</span>
														</div>
													</div>
												</div>
											</td>
											<td>${orderdetail.quantity }</td>
											<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.product_price }" />원</td>
											<td>${orderdetail.order_status }</td>
											
											<!-- 입금대기 / 결제완료 / 배송준비중 / 배송지연(예상일자) => 주문취소 버튼 -->
											<c:if test="${orderdetail.order_status == '입금대기' }">
											<td class="selBox">
			                                  	<span><a href="javascript:void(0)" class="btn gray sm d_layer_open" id="cancelBtn">주문취소</a></span>
											</td>
											</c:if>
											<!-- 배송완료 / 구매확정취소 => 구매확정/반품요청/교환요청 버튼 -->
											<c:if test="${orderdetail.order_status == '배송완료' }">
											<td class="selBox">
			                                  	<span><a href="#none;" class="btn gray sm d_layer_open" id="confirmedBtn">구매확정</a></span>
			                                  	<span><a href="#none;" class="btn gray sm d_layer_open" id="returnBtn">반품요청</a></span>
			                                  	<span><a href="#none;" class="btn gray sm d_layer_open" id="exchangeBtn">교환요청</a></span>
											</td>
											</c:if>
											
											<!-- 반품요청 => 반품철회 버튼 -->
											<c:if test="${orderdetail.order_status == '반품요청' }">
											<td class="selBox">
			                                  	<span><a href="#none;" class="btn gray sm d_layer_open" id="Withdrawal of return">반품철회</a></span>
											</td>
											</c:if>
											
											<!-- 교환요청 => 교환철회 버튼 -->
											<c:if test="${orderdetail.order_status == '교환요청' }">
											<td class="selBox">
			                                  	<span><a href="#none;" class="btn gray sm d_layer_open" id="Withdrawal of exchange">교환철회</a></span>
											</td>
											</c:if>
											
											<!-- 구매확정 => 리뷰작성 버튼 -->
											<c:if test="${orderdetail.order_status == '구매확정' }">
											<td class="selBox">
			                                  	<span><a href="#none;" class="btn gray sm d_layer_open" id="reviewBtn">리뷰작성</a></span>
											</td>
											</c:if>
											
											<!-- 주문취소 => 주문취소 철회 -->
											<c:if test="${orderdetail.order_status == '주문취소' }">
											<td class="selBox">
			                                  	<span><a href="#none;" class="btn gray sm d_layer_open" id="Withdrawal of cancel">주문취소 철회</a></span>
											</td>
											</c:if>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--  결제 정보 -->
							<div class="mgInfoBox">
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
											<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).order_price }" />원</td>
										</tr>
										<tr class="selLineBoxBt">
											<th>배송비</th>
											<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).delivery_fee }" />원</td>
										</tr>
										<tr class="selMgT">
											<th>주문할인</th>
											<td colspan="2">0원</td>
										</tr>
										<tr>
											<th>쿠폰할인</th>
											<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).coupon_discount }" />원</td>
										</tr>
										<tr>
											<th>사용 포인트</th>
											<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).used_point }" />원</td>
										</tr>
									</tbody>
									<tfoot>
										<tr class="selLineBoxBt">
											<th>총 결제금액</th>
											<td>
												<span class="selTxtMgL">${orderdetail.get(0).order_means }</span> 
												<span class="selTxtMgL">결제한 은행</span> 
												<span class="selTxtMgL">결제한 계좌</span>
											</td>
											<td><strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).order_price + orderdetail.get(0).delivery_fee -orderdetail.get(0).coupon_discount - orderdetail.get(0).used_point }" /></strong> 원</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- 주문취소 -->
							<c:forEach items="${orderdetail }" var="orderdetail" varStatus="status">
								<c:if test="${orderdetail.order_status == '주문취소'}">
									<c:if test='${status.index == 0 }'>
										<div class="mgInfoBox">
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
														<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.refund_price}" />원</td>
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
														<td><span class="selTxtMgL">${orderdetail.refund_means }</span>
															<span class="selTxtMgL">${orderdetail.refund_bank }</span>
															<span class="selTxtMgL">${orderdetail.refund_account }</span>
														</td>
														<td><strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.refund_price}" /></strong> 원</td>

													</tr>
													<tr class="selBg">
														<th>진행단계</th>
														<td colspan="2">취소 완료 (<fmt:formatDate value="${orderdetail.cancel_date}" pattern="yyyy-MM-dd hh:mm" />)
														</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</c:if>
								</c:if>
							</c:forEach>

							<!-- 반품정보 -->
							<c:forEach items="${orderdetail }" var="orderdetail" varStatus="status">
								<c:if test="${orderdetail.order_status == '반품'}">
									<c:if test='${status.index == 1 }'>
										<div class="mgInfoBox">
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
														<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="" />원</td>
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
														<td><span class="selTxtMgL">${orderdetail.refund_means }</span>
															<span class="selTxtMgL">${orderdetail.refund_bank }</span>
															<span class="selTxtMgL">${orderdetail.refund_account }</span>
														</td>
														<td><strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.refund_price}" /></strong> 원</td>

													</tr>
													<tr class="selBg">
														<th>진행단계</th>
														<td colspan="2">반품 완료 (<fmt:formatDate value="${orderdetail.cancel_date}" pattern="yyyy-MM-dd hh:mm" />)
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
								<a href="/test/getOrderList.do" class="btn fill">확인</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>

<!-- 전체취소 popup-->
<div id="modalPopup" class="modal" style="display: none;">
	<div class="modal-content" style="width: 529px;">
		<h2>주문 전체취소</h2>
		<div class="layer-cont ly-box">
			<table class="board-write selMgSm">
				<caption>주문 전체취소</caption>
				<colgroup>
					<col style="width: 125px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">주문일</th>
						<td>
							<div class="board-write-text"><fmt:formatDate value="${orderdetail.get(0).order_time}" pattern="yyyy-MM-dd hh:mm" /></div>
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
<form id="movedProductCancelForm" method="post" action="/test/getOrderCancel.do">
	<input type="hidden" id="order_no" name="order_no" value="${orderdetail.get(0).order_no }"/>
</form>
<script type="text/JavaScript">
$(function(){
	/* 전체주문취소*/
	$('#cancelAllBtn').click(()=>{
		var orderNo = "${orderdetail.get(0).order_no }";
		$.ajax({
			url:'/test/getOrderCancelAll.do',
		    type:'POST',
			data: {order_no : orderNo},
			dataType:'json',
			success:function(data) {
				var num = data.num;
				console.log(num);
				$('#modalPopup').show();
			}
		});
	});
	$('#escBtn').click(()=>{
		$('#modalPopup').hide();
	});
	
	$('#acceptBtn').click(()=>{
		var result = confirm("주문을 취소하시겠습니까?");
		if(result) { //yes 
			alert("주문이 취소되었습니다.");
			location.replace('/test/getOrderList.do'); 
		} else { //no 
		}
	});
	/* 선택한상품 주문취소 */
	$('#cancelBtn').click(()=>{
		$('#movedProductCancelForm').submit();
		
	});
});
</script>