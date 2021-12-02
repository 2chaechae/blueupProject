<!-- 주문배송 조회 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="header.jsp"%>

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
		<h2 class="title01">주문/배송조회</h2>
		<%@ include file="mypageMenu.jsp" %>
		<main class="contents" id="contents">
			<div class="location-contents">
				<p class="location">
					<span><a href="#">Home</a></span> 
					<span><a href="#">마이페이지</a></span> <span>주문정보</span> <strong>주문/배송조회</strong>
				</p>
			</div>
			
			<!--  주문/배송조회   -->
			<div class="orderInfoCon">
				<ul class="text-list02"><li>구매확정 후 리뷰 작성시 포인트 증정 해드립니다.(포토 1,000원/텍스트 500원)</li></ul>
				<div class="odSearchOptBox">
						<dl class="period-wrap period-type02 clearfix">
							<dt class="blind">상태</dt>
							<dd class="fl">
								<!-- select -->
								<div class="select-style02 d_select">
									<button type="button" class="d_select_sel" style="width: 152px;">
										<span>주문</span>
									</button>
								</div>
							</dd>
							<dt>조회기간</dt>
							<dd>
								<input type="text" class="calendar" id="dateStart" name="dateStart" value="" readonly />
								<input type="text" class="calendar" id="dateEnd" name="dateEnd" value="" readonly />
								<a href="#none" class="btn sm" onclick="goMyPageClaimList(); return false;">검색</a>
								<a href="#none" class="btn sm" onclick="reset();">초기화</a>
							</dd>
						</dl>
					</div>
				
				<div class="odSearchResult">
						<div class="odResultTop">
						 <strong class="listTotal">주문내역(<em class="fc_red" id="orderCount">${fn:length(newList)}</em>건)</strong>
							<a href="#lypopDvGuide" class="btn sm gray d_layer_open">주문배송 절차안내</a> 
						</div>
					<!--주문내역이 없을 떄 -->
					<div class="odResulCon" id="includeOrderList">
						<c:if test="${empty orderNum }" var="orderlist">
						<div class="odResulCon">
							<!--  NO Result -->
							<div class="odResulBox">
								<div class="orderNb noResult">주문내역이 없습니다.</div>
							</div>
						</div>
						</c:if>
					</div>
					
					<!-- 주문내역이 있을 때 -->
					<div class="odResulCon" id="includeClaimList">
						<c:forEach items="${newList }" var="newList">
						<c:forEach items="${orderNum }" var="orderlist" varStatus="status">
						<div class="odResulBox">
							<c:if test='${status.index == 0 }'>
							<div class="orderNb">
								<span>주문</span>
								<span><em>신청일</em> <fmt:formatDate value="${orderlist.order_time}" pattern="yyyy-MM-dd hh:mm"/></span>
								<span><em>주문번호</em> <a href="javascript:void(0)" onclick="getorder(this)" class="ordernum">${newList }</a></span>
							</div>
							</c:if>
							<table class="board-list orderTable">
								<colgroup>
									<col style="width:">
									<col style="width: 120px">
									<col style="width: 145px">
								</colgroup>
								<tbody id="tbody">
									<tr>
										<c:if test="${newList == orderlist.order_no}">
										<td class="tleft">
											<div class="product-info">
												<div class="product-info-img">
													<a href="javascript:mypageorder.goGoodsInfo('GM0021073028544');">
													<img src="${orderlist.main_image }" alt="상품이미지" onerror="errorImgShow(this, 100);"></a>
												</div>
												<div class="product-info-text">
													<div class="product-info-box">
														<p class="product-name">
															<a href="javascript:mypageorder.goGoodsInfo('GM0021073028544');">
															${orderlist.product_name }</a>
														</p>	
														<div class="product-price">
															<span><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderlist.product_price}" />원</span>
														</div>
													</div>
													<div class="product-option">
														<span> ${orderlist.product_color } / ${orderlist.product_size }</span>
													</div>
												</div>
											</div>
										</td>
										<td>${orderlist.quantity }</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderlist.product_price}" />원</td>
										<td class="selBox"><span> ${orderlist.order_status } </span></td>
										</c:if>
									</tr>
								</tbody>
							</table>
						</div>
						</c:forEach>
						</c:forEach>
						<div class="page">
							<span> <strong title="현재 페이지">1</strong></span>
						</div>
					</div>
					
				</div>
					
				<ul class="text-list02">
					<li>배송완료 후 구매확정을 하지 않은 경우에는 배송이 완료된 일로부터 7일 경과 후, 8일째 자동으로 구매확정 됩니다.</li>
					<li>주문이 구매 확정되면 포인트가 적립되며 해당상품은 반품/교환을 할 수 없습니다.</li>
					<li>주문의 취소/교환/반품 신청내역 및 결과는 [취소/교환/반품 조회] 메뉴를 이용해주세요.</li>
					<li>매장 배송상품은 일반배송상품과 별도로 매장에서 발송됩니다. 사은품은 주문 상품과 별도로 배송될 수 있습니다.</li>
					<li>상품을 이미 받았는데 "배송중" 이면, 수령확인을 하시면 배송완료 상태로 변경되며 클레임 신청을 할 수 있습니다.</li>
					<li>상품별 결제금액은 주문 시 총 결제금액과 다를 수 있으며, 주문번호를 클릭 하시면 해당 주문의 상세정보를 보실 수 있습니다.</li>
				</ul>
			</div>
			<!--  //주문/배송조회   -->
		</main>
	</div>
</div>

<!--// 컨텐츠 끝 -->

<!-- 팝업 : 주문배송 절차안내 -->
<article id="lypopDvGuide" class="layer-popup lypopDvGuide">
	<section class="layer-popup-cont" tabindex="0" style="width:851px">
		<h2>주문배송 절차안내</h2>
		<div class="layer-cont ly-box">	
			<div class="dvStepBox">
				<ul>
					<li><p><strong>입금대기</strong>결제수단변경, 배송지 변경이 가능합니다. 주문 후 1일 이내에 입금하셔야 합니다.</p></li>
					<li><p><strong>결제완료</strong>주문의 결제를 완료하여, MLB에서 주문정보를 확인하는 단계입니다.</p></li>
					<li><p><strong>배송준비</strong>MLB에서 주문에 대한 배송을 준비중입니다.</p></li>		
					<li><p><strong>배송중</strong>주문하신 상품이 발송되어 고객님께 배송중 입니다.</p></li>
					<li><p><strong>배송완료</strong>수령하신 상품을 구매확정 하시면 마일리지가 적립됩니다.</p></li>
				</ul>			
			</div>	
			<!--  button -->
			<div class="lyBtnArea"><a href="#" class="btn fill w160 d_layer_close">확인</a></div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<!-- 주문/배송 조회 => 주문/배송 상세조회  post 방식으로 이동-->
<form id="orderNumFrm" method="post" action="/test/getOrderDetail.do">
	<input type="hidden" id="order_no" name="order_no" value=""/>
</form>
</body>
<script type="text/javascript">
/* 주문,배송조회 => 주문,배송 상세조회 */
function getorder(element){
	var ordernum = $(element).closest('.ordernum').text();
	console.log("ordernum", ordernum);
	$('#order_no').val(ordernum);
	$('#orderNumFrm').submit();
}
function reset(){
	$('#dateStart').val('');
	$('#dateEnd').val('');
}
</script>

<%@ include file="footer.jsp"%>
</html>