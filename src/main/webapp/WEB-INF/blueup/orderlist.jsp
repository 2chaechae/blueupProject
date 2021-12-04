<!-- 주문배송 조회 -->
<%@ page la guage="java" co te tType="text/html; charset=UTF-8" pageE codi g="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.su .com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.su .com/jsp/jstl/fmt"%>
<%@ taglib prefix="f " uri="http://java.su .com/jsp/jstl/fu ctio s" %>
<%@ i clude file="header.jsp"%>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-versio -858_20211102145956"></script>

<script src="https:// sp.pay. aver.com/sdk/js/ averpay.mi .js?v=prod-versio -858_20211102145956"></script>
<script src="https://pg.c spay.co.kr/dlp/scripts/smilepay.js" charset="euc-kr"></script>
<script type="text/javascript" src="https://pay.kcp.co.kr/plugi /payplus_ eb.jsp"></script>

<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-versio -858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-versio -858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejso .mi .js?v=prod-versio -858_20211102145956"></script>

<i put type="hidde " id="srchMo th"  ame="srchMo th" value="">
<i put type="hidde " id="curre tPage"  ame="curre tPage" value="1">
<i put type="hidde "  ame="_csrf" value="7d63e77f-174d-4e7f-aee8-c60821db0487" />

<!-- 컨텐츠 시작 -->
<div class="co tai  my od l blist- rap" id="co tai ">
	<div class="co tai er">
		<h2 class="title01">주문/배송조회</h2>
		<%@ i clude file="mypageMe u.jsp" %>
		<mai  class="co te ts" id="co te ts">
			<div class="locatio -co te ts">
				<p class="locatio ">
					<spa ><a href="#">Home</a></spa > 
					<spa ><a href="#">마이페이지</a></spa > <spa >주문정보</spa > <stro g>주문/배송조회</stro g>
				</p>
			</div>
			
			<!--  주문/배송조회   -->
			<div class="orderI foCo ">
				<ul class="text-list02"><li>구매확정 후 리뷰 작성시 포인트 증정 해드립니다.(포토 1,000원/텍스트 500원)</li></ul>
				<div class="odSearchOptBox">
						<dl class="period- rap period-type02 clearfix">
							<dt class="bli d">상태</dt>
							<dd class="fl">
								<!-- select -->
								<div class="select-style02 d_select">
									<butto  type="butto " class="d_select_sel" style=" idth: 152px;">
										<spa >주문</spa >
									</butto >
								</div>
							</dd>
							<dt>조회기간</dt>
							<dd>
								<i put type="text" class="cale dar" id="dateStart"  ame="dateStart" value="" reado ly />
								<i put type="text" class="cale dar" id="dateE d"  ame="dateE d" value="" reado ly />
								<a href="# o e" class="bt  sm" o click="goMyPageClaimList(); retur  false;">검색</a>
								<a href="# o e" class="bt  sm" o click="reset();">초기화</a>
							</dd>
						</dl>
					</div>
				
				<div class="odSearchResult">
						<div class="odResultTop">
						 <stro g class="listTotal">주문내역(<em class="fc_red" id="orderCou t">${f :le gth( e List)}</em>건)</stro g>
							<a href="#lypopDvGuide" class="bt  sm gray d_layer_ope ">주문배송 절차안내</a> 
						</div>
					<!--주문내역이 없을 떄 -->
					<div class="odResulCo " id="i cludeOrderList">
						<c:if test="${empty order um }" var="orderlist">
						<div class="odResulCo ">
							<!--   O Result -->
							<div class="odResulBox">
								<div class="order b  oResult">주문내역이 없습니다.</div>
							</div>
						</div>
						</c:if>
					</div>
					
					<!-- 주문내역이 있을 때 -->
					<div class="odResulCo " id="i cludeClaimList">
						<c:forEach items="${ e List }" var=" e List">
						<c:forEach items="${order um }" var="orderlist" varStatus="status">
						<div class="odResulBox">
							<c:if test='${status.i dex == 0 }'>
							<div class="order b">
								<spa >주문</spa >
								<spa ><em>신청일</em> <fmt:formatDate value="${orderlist.order_time}" patter ="yyyy-MM-dd hh:mm"/></spa >
								<spa ><em>주문번호</em> <a href="javascript:void(0)" o click="getorder(this)" class="order um">${ e List }</a></spa >
							</div>
							</c:if>
							<table class="board-list orderTable">
								<colgroup>
									<col style=" idth:">
									<col style=" idth: 120px">
									<col style=" idth: 145px">
								</colgroup>
								<tbody id="tbody">
									<tr>
										<c:if test="${ e List == orderlist.order_ o}">
										<td class="tleft">
											<div class="product-i fo">
												<div class="product-i fo-img">
													<a href="javascript:mypageorder.goGoodsI fo('GM0021073028544');">
													<img src="${orderlist.mai _image }" alt="상품이미지" o error="errorImgSho (this, 100);"></a>
												</div>
												<div class="product-i fo-text">
													<div class="product-i fo-box">
														<p class="product- ame">
															<a href="javascript:mypageorder.goGoodsI fo('GM0021073028544');">
															${orderlist.product_ ame }</a>
														</p>	
														<div class="product-price">
															<spa ><fmt:format umber type=" umber" maxFractio Digits="3" value="${orderlist.product_price}" />원</spa >
														</div>
													</div>
													<div class="product-optio ">
														<spa > ${orderlist.product_color } / ${orderlist.product_size }</spa >
													</div>
												</div>
											</div>
										</td>
										<td>${orderlist.qua tity }</td>
										<td><fmt:format umber type=" umber" maxFractio Digits="3" value="${orderlist.product_price}" />원</td>
										<td class="selBox"><spa > ${orderlist.order_status } </spa ></td>
										</c:if>
									</tr>
								</tbody>
							</table>
						</div>
						</c:forEach>
						</c:forEach>
						<div class="page">
							<spa > <stro g title="현재 페이지">1</stro g></spa >
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
		</mai >
	</div>
</div>

<!--// 컨텐츠 끝 -->

<!-- 팝업 : 주문배송 절차안내 -->
<article id="lypopDvGuide" class="layer-popup lypopDvGuide">
	<sectio  class="layer-popup-co t" tabi dex="0" style=" idth:851px">
		<h2>주문배송 절차안내</h2>
		<div class="layer-co t ly-box">	
			<div class="dvStepBox">
				<ul>
					<li><p><stro g>입금대기</stro g>결제수단변경, 배송지 변경이 가능합니다. 주문 후 1일 이내에 입금하셔야 합니다.</p></li>
					<li><p><stro g>결제완료</stro g>주문의 결제를 완료하여, MLB에서 주문정보를 확인하는 단계입니다.</p></li>
					<li><p><stro g>배송준비</stro g>MLB에서 주문에 대한 배송을 준비중입니다.</p></li>		
					<li><p><stro g>배송중</stro g>주문하신 상품이 발송되어 고객님께 배송중 입니다.</p></li>
					<li><p><stro g>배송완료</stro g>수령하신 상품을 구매확정 하시면 마일리지가 적립됩니다.</p></li>
				</ul>			
			</div>	
			<!--  butto  -->
			<div class="lyBt Area"><a href="#" class="bt  fill  160 d_layer_close">확인</a></div>
		</div>
		<div class="layer-popup-close">
			<butto  type="butto " class="d_layer_close">닫기</butto >
		</div>
	</sectio >
</article>

<!-- 주문/배송 조회 => 주문/배송 상세조회  post 방식으로 이동-->
<form id="order umFrm" method="post" actio ="/test/getOrderDetail.do">
	<i put type="hidde " id="order_ o"  ame="order_ o" value=""/>
</form>
</body>
<script type="text/javascript">
/* 주문,배송조회 => 주문,배송 상세조회 */
fu ctio  getorder(eleme t){
	var order um = $(eleme t).closest('.order um').text();
	co sole.log("order um", order um);
	$('#order_ o').val(order um);
	$('#order umFrm').submit();
}
fu ctio  reset(){
	$('#dateStart').val('');
	$('#dateE d').val('');
}
</script>

<%@ i clude file="footer.jsp"%>
</html>