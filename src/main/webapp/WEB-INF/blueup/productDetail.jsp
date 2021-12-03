<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="header.jsp"%>

<!-- 컨텐츠 시작 -->

<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/goods.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="/javascript/message/goods_ko.js?v=prod-version-858_20211102145956"></script>

<acrticle id="container">
<section id="contents" class="product-detail">

	<!-- 컨텐츠 시작  -->
	<div class="contain pd goods" id="contain">
		<div class="container">

			<main class="contents" id="contents">
				<style>
				body {
					height: 100% !important;
				}
				</style>
				<div class="gdsWrap">
					<!-- 상품  -->
					<section class="sect product">
						<div class="area center">
							<div class="photos">
								<div id="pdPhotoSlide" class="pdPhoto">
									<div class="swiper-container">
										<ul class="swiper-wrapper list">
											<!-- 동영상 -->
											<c:forEach var="item_topImage" items="${productDetail}">
												<c:if test="${ item_topImage.content_type == 'top'}">
													<li class="pic swiper-slide">
														<div class="item">
															<a href="javascript:;"
																onclick="ui.pd.goods_zoom.open(this);"> <img
																src="${item_topImage.detailed_product_content }">
															</a>
														</div>
													</li>
												</c:if>
											</c:forEach>
										</ul>
									</div>
									<div class="navigation" id="divNavi">
										<button type="button" class="btnNav prev">이전</button>
										<button type="button" class="btnNav next">다음</button>
									</div>
								</div>
								<div id="pdThumbSlide" class="pdThumb">
									<div class="slide-container">
										<ul class="slide-wrapper list">
											<!-- 동영상 -->
											<c:forEach var="item_topImage" items="${productDetail}">
												<c:if test="${ item_topImage.content_type == 'top'}">
													<li class="pic slide" data-index="0"><a href="javascript:;" class="item"><img src="${item_topImage.detailed_product_content}" style="height: 70px; width: 70px;"></a></li>
												</c:if>
											</c:forEach>
										</ul>
									</div>
									<div class="navigation" id="divNavi">
										<button type="button" class="btnNav prev">이전</button>
										<button type="button" class="btnNav next">다음</button>
									</div>
								</div>
							</div>
							<script>
				pd.visual();
		</script>
						</div>
						<div class="area right">
							<div class="info prds">
								<div class="reserve"></div>
								<div class="name">${productDetail.get(0).product_name}</div>
								<span class="code">${productDetail.get(0).product_no}</span>
								<div class="cupon_msg">
									<span style='color:'></span>
								</div>
								<div class="price norm">
									<div class="prc">
										<fmt:formatNumber var="formatNumber" value="${productDetail.get(0).product_price}" pattern="#,###" />
										<span class="p n">${formatNumber}<em>원</em></span>
									</div>
								</div>
							</div>

							<!-- 일반상품 -->
							<div class="info order">
								<ul class="dlist">
									<li class="color">
										<div class="dt">다른색상</div>
										<div>
											<div>
												<c:forEach var="color" items="${color}">
													<a href="javascript:void(0)" class="btn-color" onclick="chooseColor(this)" style="height: 25px; width: 57px;">
													<span style="border:1px solid lightgray">${color}</span></a>
												</c:forEach>
											</div>
										</div>
									</li>
									<li class="size">
										<div class="dt">사이즈</div>
										<div class="dd">
											<div class="payment-option-size">
												<c:forEach var="size" items="${size}">
													<button type="button" class="btn-size d_radio_select" onclick="chooseSize(this)">
														<span>${size}</span>
													</button>
												</c:forEach>
											</div>
										</div>
									</li>
									<li class="amount">
										<div class="dt">수량</div>
										<div class="dd">
											<div class="quantity-wrap">
												<button type="button" onclick="minus();" class="pq-minus">빼기</button>
												<button type="button" onclick="plus();" class="pq-plus">추가</button>
												<input type="number" id="qty" title="수량" value="1" readonly />
											</div>
										</div>
									</li>
								</ul>
							</div>
							<!--// 일반상품 -->
							<!-- 셋트상품 -->
							<!--// 셋트상품 -->

							<!-- 배송 -->
							<div class="info order">
								<ul class="dlist">
									<li class="deli">
										<div class="dt">배송</div>
										<div class="dd">
											<ul class="radio-list">
												<li><label for="rdoType03">택배(무료배송)</label>
													<div class="tooltip-wrap d_dropdown">
														<button type="button"
															class="tooltip-detail d_dropdown_sel">도움말</button>
														<!-- 툴팁 레이어 -->
														<div class="tooltip-layer d_dropdown_cont">
															<strong class="tooltip-title">무료배송 안내 </strong>
															<div class="tooltip-cnt">
																<ul class="text-list02 col-type01 bul-list">
																- MLB 공식스토어는 모든 상품이 무료배송 됩니다.
																</ul>
															</div>
															<button type="button"
																class="tooltip-close d_dropdown_close">닫기</button>
														</div>
														<!-- //툴팁 레이어 -->
													</div></li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
							<!--// 배송 -->

							<div class="info tool">
								<div class="bts def">
									<a class="btn xl bt-buy" href="javascript:void(0)" onclick="addOrder()">바로구매</a> 
									<a class="btn xl bt-cart" href="javascript:void(0)" onclick="addCart();">장바구니</a>
								</div>
							</div>

							<div class="info data">
								<div class="left">
									<a class="btn_go_review" href="javascript:;" onclick="$('.product-detail .tab02 a').trigger('click');" data-ga-category="PC_MLB_상품상세" data-ga-action="상품 리뷰">
										<style>
											.crema-product-reviews-score {
												height: 23px;
												line-height: 23px;
											}
											
											.crema_product_reviews_score_star_wrapper {
												width: 18px;
												height: 23px;
											}
									</style>		
								 </a>
								</div>
								<span class="hits"> 
									<span class="wish"> 
										<p>
											<c:choose>
												<c:when test="${productDetail.get(0).wish_no ne 0}">
													<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png" alt="찜" width="25" height="23" onclick="heart(this)">
												</c:when>
												<c:otherwise>
													<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png" alt="찜" width="25" height="23" onclick="heart(this)">
												</c:otherwise>
											</c:choose>
										</p>
									</span>
								</span>
						</div>
				</div>
		</div>
</section>
<!-- STYLE IN MLB(브랜드상품공지사항) -->
<section class="mds-section brand">
	<!-- div class="hdt"><span class="tit">STYLE IN MLB</span></div -->
	<c:forEach var="banner" items="${banner}">
		<div class="html-box">
			<a href="${banner.noticeurl}"><img height="70" src="${banner.banner_image}"
				width="900" /></a>
		</div>
	</c:forEach>
</section>
<div class="product-content-tab tab-scroll-wrap d_fix">
	<ul class="tab-type04 d_scroll_tab d_fix_obj">
		<li class="on tab01"><a href="#productInfo01">상품 정보</a></li>
		<li class="tab02"><a href="#productInfo02">상품 리뷰</a></li>
		<li class="tab03"><a href="#productInfo03">상품 고시 정보</a></li>
	</ul>
</div>

<!-- 상품정보  -->
<div id="productInfo01" class="product-detail-section box-info">
	<div class="html-box">
		<br />
		<br />
		<c:forEach var="image" items="${productDetail}">
			<c:if test="${ image.content_type == 'main'}">
				<img src="${image.detailed_product_content}" />
				<br />
				<br />
			</c:if>
		</c:forEach>
		&nbsp;

		<div id="productInfo02" class="product-detail-section box-review" style="width: 1000px;">
			<h2 class="title03" style="padding-bottom: 30px;">상품리뷰</h2>
			<hr style="color: gray">
			<div
				style="display: flex; margin-left: 372px; height: 83px; margin-top: 17px;">
				<img
					src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star.png"
					style="width: 50px; height: 50px;">
				<lable style="font-size:50px; margin-left:22px;"> <c:choose>
					<c:when test="${review == null}">0.0</c:when>
					<c:otherwise>
						<fmt:formatNumber value="${review.get(0).avgstar}" pattern=".0" />
					</c:otherwise>
				</c:choose> </lable>
			</div>
			<hr style="color: gray">
			<div>
				<label style="font-size: 18px; padding-right: 15px;">별점 기준
					조회 : </label> 
				<select id="starSearch" style="width: 170px; height: 30px; text-align: center">
					<option value='null' selected>-- 선택 --</option>
					<option value="1">1점</option>
					<option value="2">2점</option>
					<option value="3">3점</option>
					<option value="4">4점</option>
					<option value="5">5점</option>
				</select>
			</div>
			<div id="reviewTabel">
				<table id="remove">
					<c:choose>
						<c:when test="${review == null}">
							<div style="display: grid; width: 800px; margin: 50px;">
								<span style="font-size: 20px; text-align: center;">등록된
									리뷰가 없습니다.</span>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="review" items="${review}">
								<tr style="heigth: 100px; border: 1px none none solid none">
								<c:choose>
									<c:when test="${review.photo1 != null }">
										<td style="font-size: 16px;" colspan="5"><img
											src="${review.photo1}"
											style="height: 200px; width: 200px; margin: 10px;"></td>
									</c:when>
									<c:otherwise>	
										<td style="font-size: 16px;" colspan="5"><div style="height: 200px; width: 200px; margin: 10px;"></div></td>
									</c:otherwise>
								</c:choose>
									<td style="font-size: 16px; text-align: left" colspan="7">
										<c:choose>
											<c:when test="${review.star == 1}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star1.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:when test="${review.star == 2}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star2.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:when test="${review.star == 3}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star3.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:when test="${review.star == 4}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star4.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:otherwise>
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star5.png"
													style="height: 27px; width: 117px;">
											</c:otherwise>
										</c:choose> <br>${review.review_title}<br>${review.review_content}</td>
									<fmt:formatDate var="formatRegDate" value="${review.review_time}" pattern="yyyy.MM.dd" />
									<td style="font-size: 16px; text-align: center" colspan="3">${formatRegDate }</td>
									<td style="font-size: 16px; text-align: right" colspan="4">${review.user_id}님의
										리뷰입니다.<br>${review.product_size}<br>${review.product_color}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<div id="paging" style="display: block; text-align: center; width:1200px; margin : 50px 0;">
			<c:if test="${review.get(0).user_no != 0 }">
					<c:if test="${pageMaker.startPage != 1 }">
						<a href="javascript:void(0)" onclick="beforePage()">&lt;</a>
					</c:if>
					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="p">
						<c:choose>
							<c:when test="${p == cri.page }">
								<b>|&nbsp;${p}&nbsp;|</b>
	
							</c:when>
							<c:when test="${p != cri.page }">
								<a href="javascript:void(0)" onclick="numberPage(this)">|&nbsp;${p}&nbsp;|</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${pageMaker.endPage != pageMaker.tempEndPage}">
						<a href="javascript:void(0)" onclick="afterPage()">&gt;</a>
					</c:if>
				</c:if>
			</div>
		</div>
	</div>
</div>


<!-- 상품정보 -->
<div id="#productInfo03" class="lypopGoodsDetail lyTabCont on" style="width:1000px; margin: 0 auto;">
	<img
		src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/shoes/bottom01.png" style="width:1000px;">
</div>

<!-- 교환반품 -->
<div class="product-detail-section box-ship">
	<div class="fold">
		<div class="fold-header">
			<h2 class="title03">배송/교환/반품/환불</h2>
		</div>
		<div class="fold-content">
			<!-- 배송안내  -->
			<h3 class="ly_tit mt0">배송정보</h3>
			<table class="board-list lyType01">
				<colgroup>
					<col style="width: 118px">
					<col style="width:">
				</colgroup>
				<tbody>
					<tr>
						<th>배송업체</th>
						<td>로젠택배 (단, 매장배송의 경우 CJ대한통운택배)</td>
					</tr>
					<tr>
						<th>배송정보</th>
						<td>평균 결제완료일 기준 2일 소요 (토/일/공휴일 제외)<br> (지역, 물류, 택배사 사정에
							따라 차이가 날 수 있습니다.)
						</td>
					</tr>
					<tr>
						<th>배송비</th>
						<td>MLB 공식스토어는 구매금액 상관없이 모든 상품이 무료배송됩니다.</td>
					</tr>
				</tbody>
			</table>
			<!-- // 배송안내 -->

			<!-- 교환/반품 안내  -->
			<h3 class="ly_tit">교환/반품 안내</h3>
			<table class="board-list lyType01">
				<colgroup>
					<col style="width: 118px">
					<col style="width:">
				</colgroup>
				<tbody>
					<tr>
						<th>신청기간</th>
						<td>신청 기간 : 상품 수령 후 7일 이내</td>
					</tr>
					<tr>
						<th>교환/반품 방법</th>
						<td>
							<ul class="text-list02 txtTypeGray">
								<li>배송완료 7일 이내</li>
								<li>마이페이지 > 취소/교환/반품 신청 선택 후 상세 주문내역에서 반품/교환 버튼선택</li>
								<li>교환/ 반품 접수 페이지에서 택배비 결제(선불지급 및 상품과 함께 동봉 불가)</li>
								<li>접수 후 3일 이내 택배기사님이 수거 방문 예정</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>교환/반품 배송비</th>
						<td>
							<ul class="text-list02 txtTypeGray">
								<li>단순 변심, 사이즈 착오 등 고객에게 귀책 사유가 있는 경우, 배송비는 고객 부담. (교환/전체
									반품시 5,000원, 부분 반품시 2,500원)</li>
								<li>상품불량 및 오배송 등의 이유로 교환/반품하실 경우, 배송비는 본사 부담.</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>반품/교환<br>불가사유
						</th>
						<td>
							<ul class="text-list02 txtTypeGray">
								<li>교환/반품 요청이 상품 수령하신 날부터 7일을 경과한 경우</li>
								<li>상품 및 구성품 분실 및 취급부주의로 인한 파손/고장/오염된 경우. (착용흔적이나 세탁, 수선,
									오염, 택 또는 라벨 제거 및 훼손)</li>
								<li>신발, 잡화 등의 상품 포장, 케이스의 멸실 또는 훼손의 경우</li>
								<li>시간의 경과에 의하여 재판매가 곤란한 경우</li>
								<li>구매확정 된 경우(배송완료일로부터 7일 이후 자동 구매 확정됩니다)</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>기타</th>
						<td>
							<ul class="text-list02 txtTypeGray">
								<li>교환/환불은 반송제품 확인 후 진행되며 맞교환은 불가합니다</li>
								<li>교환의 경우 물류센터 도착일 기준의 재고를 파악하여, 교환 처리되며 품절로 인해 취소처리 될 수
									있습니다.</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- // 교환/반품 안내 -->
			<input type="hidden" id="dmstcDlvCstExmStdrAmt" value="100" /> <input
				type="hidden" id="dmstcDlvCst" value="2,500" /> <input type="hidden"
				id="repairDlvCst" value="2,500" /> <input type="hidden"
				id="dmstcDlvComNm" value="로젠택배
" />
		</div>
	</div>
</div>
<script>
    pd.fold();
</script> <!--// 컨텐츠 끝 -->

</section>
</acrticle>

<!-- 상품상세 팝업 -->
<article id="lypopGoodsDtInfo" class="layer-popup lyPopStyle">
	<section class="layer-popup-cont" tabindex="0" style="width: 850px">
		<div class="layer-top">
			<ul class="lyTabStyle">
				<li class="on"><a href="javascript:;">상품세부정보</a></li>
				<li><a href="javascript:;">상품리뷰</a></li>
				<li><a href="javascript:;">배송/교환/반품/환불</a></li>
			</ul>
		</div>
		<div class="layer-cont ly-box scroll">

			<!-- ** 상품세부정보 -->
			<div class="lypopGoodsDetail lyTabCont on">
				<img
					src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/shoes/bottom01.png"
					style="width: 700px; height: 600px;">
			</div>
			<!--// ** 상품세부정보 -->

			<!-- ** 배송/교환/반품/환불 -->
			<div class="lypopGoodsGuide lyTabCont">
				<!-- 배송안내  -->
				<h3 class="ly_tit mt0">배송정보</h3>
				<table class="board-list lyType01">
					<colgroup>
						<col style="width: 118px">
						<col style="width:">
					</colgroup>
					<tbody>
						<tr>
							<th>배송업체</th>
							<td>로젠택배 (단, 매장배송의 경우 CJ대한통운택배)</td>
						</tr>
						<tr>
							<th>배송정보</th>
							<td>평균 결제완료일 기준 2일 소요 (토/일/공휴일 제외)<br> (지역, 물류, 택배사 사정에
								따라 차이가 날 수 있습니다.)
							</td>
						</tr>
						<tr>
							<th>배송비</th>
							<td>MLB 공식스토어는 구매금액 상관없이 모든 상품이 무료배송됩니다.</td>
						</tr>
					</tbody>
				</table>
				<!-- // 배송안내 -->

				<!-- 교환/반품 안내  -->
				<h3 class="ly_tit">교환/반품 안내</h3>
				<table class="board-list lyType01">
					<colgroup>
						<col style="width: 118px">
						<col style="width:">
					</colgroup>
					<tbody>
						<tr>
							<th>신청기간</th>
							<td>신청 기간 : 상품 수령 후 7일 이내</td>
						</tr>
						<tr>
							<th>교환/반품 방법</th>
							<td>
								<ul class="text-list02 txtTypeGray">
									<li>배송완료 7일 이내</li>
									<li>마이페이지 > 취소/교환/반품 신청 선택 후 상세 주문내역에서 반품/교환 버튼선택</li>
									<li>교환/ 반품 접수 페이지에서 택배비 결제(선불지급 및 상품과 함께 동봉 불가)</li>
									<li>접수 후 3일 이내 택배기사님이 수거 방문 예정</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>교환/반품 배송비</th>
							<td>
								<ul class="text-list02 txtTypeGray">
									<li>단순 변심, 사이즈 착오 등 고객에게 귀책 사유가 있는 경우, 배송비는 고객 부담. (교환/전체
										반품시 5,000원, 부분 반품시 2,500원)</li>
									<li>상품불량 및 오배송 등의 이유로 교환/반품하실 경우, 배송비는 본사 부담.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>반품/교환<br>불가사유
							</th>
							<td>
								<ul class="text-list02 txtTypeGray">
									<li>교환/반품 요청이 상품 수령하신 날부터 7일을 경과한 경우</li>
									<li>상품 및 구성품 분실 및 취급부주의로 인한 파손/고장/오염된 경우. (착용흔적이나 세탁, 수선,
										오염, 택 또는 라벨 제거 및 훼손)</li>
									<li>신발, 잡화 등의 상품 포장, 케이스의 멸실 또는 훼손의 경우</li>
									<li>시간의 경과에 의하여 재판매가 곤란한 경우</li>
									<li>구매확정 된 경우(배송완료일로부터 7일 이후 자동 구매 확정됩니다)</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>기타</th>
							<td>
								<ul class="text-list02 txtTypeGray">
									<li>교환/환불은 반송제품 확인 후 진행되며 맞교환은 불가합니다</li>
									<li>교환의 경우 물류센터 도착일 기준의 재고를 파악하여, 교환 처리되며 품절로 인해 취소처리 될 수
										있습니다.</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close"
				onclick="javascript:closeLayerPopAndReset('lypopGoodsDtInfo');">닫기</button>
		</div>
	</section>
</article>

<div id="wp_tg_cts" style="display: none;"></div>

<script type="text/javascript">
/* 
	웹사이트 행동 : 표준 이벤트 코드
	콘텐츠 조회 : ViewContent
	검색 : Search
	장바구니 담기 : AddToCart
	위시리스트 추가 : AddToWishlist
	결제 시작 : InitiateCheckout
	결제 정보 추가 : AddPaymentInfo {value: '0.00', currency: 'USD'}
	구매 : Purchase
	READ : Lead
	등록 완료 : CompleteRegistration
 */

</script>
<!-- PIXEL  SCRIPT START 2018.8.10 -->
<script>
	if(localStorage.getItem('goodsListScrollPositionFlag') == "Y"){
		localStorage.removeItem('goodsListScrollPositionFlag');
		localStorage.goodDetailFlag = 'Y';
	}else{
		localStorage.removeItem('goodsListScrollPositionFlag');
		localStorage.removeItem('goodDetailFlag');
	}
</script>
<script type="text/javascript">
var product_color = "";
var product_size = "";
var quantity = 1;
var product_no = ${productDetail.get(0).product_no};
var wish_no = ${productDetail.get(0).wish_no};
var product_price = ${productDetail.get(0).product_price};
var discount = ${productDetail.get(0).discount};
var main_image = "${productDetail.get(0).main_image}";
var product_name = "${productDetail.get(0).product_name}";
$(document).ready(function(){
	/* 별점별 리뷰 조회*/
	var user_no = localStorage.getItem("user_no");
	$('#starSearch').on('change', function(){
		var star = $('#starSearch option:selected').val();
		$.ajax({
			url:'/test/selectReivew.do',
		    type:'POST',
		   	cache:false,
			data: {"user_no":user_no, "product_no":product_no, "star" : star}
		}).done(function(data){
			console.log("data받음");
			$('#remove').remove();
			$('#paging').remove();
			$('#reviewTabel').html(data);
		}).fail(function(){
			console.log("에러");
		});
	});
});

function chooseColor(element){
	$(element).css('border', '1px solid black');
	$(element).siblings().css('border', '1px solid lightgray');
	product_color = $(element).find('span').text();
	var spanList = $('.payment-option-size').find('span');
		$(spanList).each(function(){
			$(this).css("text-decoration", "none");
			$(this).prop('disabled',false);
		});
		$.ajax({
			url:'/test/getStockbyProductno.do',
		    type:'POST',
		   	cache:false,
			data: {"product_no":product_no, "product_color" : product_color},
			success:function(data) {
				var sizeList = [];
				var size = $('.payment-option-size').find('span').text();
				var length = size.length;
				for(var i=0; i < length; i+=3){
					sizeList.push(size.substring(i, i+3));
				}

				var spanList = $('.payment-option-size').find('span');
				$(spanList).each(function(){
					for(var i=0; i < data.length; i++){
							if($(this).text() == data[i].product_size && data[i].stock_quantity == 0){
							$(this).css("text-decoration", "line-through");
							$(this).prop('disabled',true);
						}
					}
				});
			},
			error:function() {
				alert('다시 시도해주세요');
			}
		});
	}

function chooseSize(element){
	$(element).css('border', '1px solid black');
	$(element).siblings().css('border', '1px solid lightgray');
	product_size = $(element).children('span').text();
}

function minus(){
	if(quantity == 1){
		alert("더 이상 줄일 수 없습니다.");
	}else{
		quantity--;
	}
	$('#qty').val(quantity);
}

function plus(){
	if(quantity == 999){
		alert("더 이상 추가 할 수 없습니다.");
	}else{
		quantity++;
	}
	$('#qty').val(quantity);
}

/*리뷰 페이지 변경 */
function beforePage(){
	var page_no = ${pageMaker.startPage - 1};
	var user_no = localStorage.getItem("user_no");
	$.ajax({
		url:'/test/selectReivew.do',
	    type:'POST',
	   	cache:false,
		data: {"user_no":user_no , "product_no":product_no, "page_no" : page_no},
		contentType: false, 
		processData: false
	}).done(function(data){
		console.log("data받음");
		var html = jQuery('<table>').html(data);
		$('table').remove();
		$('#paging').remove();
		$('#reviewTabel').html();
	}).fail(function(){
		console.log("에러");
	});
}

function numberPage(element){
	var star = $('#starSearch option:selected').val();
	var p = $(element).text().split("|");
	var page_no = parseInt(p[1]);
	var user_no = localStorage.getItem("user_no");
	$.ajax({
		url:'/test/selectReivew.do',
	    type:'POST',
	   	cache:false,
		data: {"user_no":user_no, "product_no":product_no, "page_no":page_no, "star" : star}
	}).done(function(data){
		console.log("data받음");
		$('#remove').remove();
		$('#paging').remove();
		$('#reviewTabel').html(data);
	}).fail(function(){
		console.log("에러");
	});
}

function afterPage(){
	var page_no = ${pageMaker.endPage+1};
	var user_no = localStorage.getItem("user_no");
	$.ajax({
		url:'/test/selectReivew.do',
	    type:'POST',
	   	cache:false,
		data: {"user_no":user_no , "product_no":product_no, "page_no" : page_no},
		contentType: false, 
		processData: false
	}).done(function(data){
		console.log("data받음");
		var html = jQuery('<table>').html(data);
		$('table').remove();
		$('#paging').remove();
		$('#reviewTabel').html();
	}).fail(function(){
		console.log("에러");
	});
}


function heart(element){
	var user_no = localStorage.getItem("user_no");
	var img = $(element).attr("src");
		/////////////////회원 위시리스트////////////////
		if(user_no != null){
			if(img == "https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png"){
				$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png");
				console.log(product_no);
					$.ajax({
						url:'/test/insertWishList.do',
					    type:'POST',
					   	cache:false,
						data: {"user_no":user_no , "product_no":product_no},
						success:function() {
							alert('위시리스트에 담겼습니다.');
						},
						error:function() {
							alert('다시 시도해주세요');
						}
					});
			}else{
				$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png");
				console.log(wish_no);
					$.ajax({
						url:'/test/deleteWishList.do',
					    type:'POST',
					   	cache:false,
						data: {"user_no":user_no , "wish_no":wish_no},
						success:function() {
							alert('제외되었습니다.');
						},
						error:function() {	
							alert('다시 시도해주세요');
						}
					});
			}
		}else{
			/////////////////비회원 위시리스트////////////////
			console.log(product_no);
			//쿠키 생성 & 내용 추가
			if(img == "https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png"){
				$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png");
				var getlist = $.cookie('p_list');
					if(getlist == undefined){
						var cookieList = product_no + "/";
						$.cookie('p_list', cookieList);
						console.log("첫번째값 넣기 :" + cookieList);
					}else{
						console.log("기존쿠키: " + getlist);
						getlist += product_no;
						getlist += "/";
						console.log("두번째 쿠키 넣기 : " + getlist);
						$.cookie('p_list', getlist);
					}
			// 쿠키삭제 & 내용 삭제
			}else{
				$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png");
				var cookieValue = $.cookie('p_list');
				console.log("기존쿠기 : " +  cookieValue);
				var remove = cookieValue.split("/");
				var cookieList= "";
				for(var check of remove){
					if( check != product_no){
						console.log(check);
						cookieList += check;
						cookieList += "/";
					}
				}
					console.log(cookieList);
					$.removeCookie('p_list');
					console.log("쿠키삭제");
					$.cookie('p_list', cookieList);
					console.log("쿠키생성");
				}
			}
		}

/* 바로 구매 */
function addOrder(){
	/*비회원 주문*/
	if(product_size == "" || product_color == ""){
		alert("옵션을 선택해주세요.");
	}else{
		var user_no = localStorage.getItem("user_no");
		if(user_no == null){
			var logincheck = confirm("로그인하면 더 많은 해택을 받으실 수 있습니다. \n 로그인하시겠습니까?");
			if(logincheck == true){
				location.href="/test/login.do";
			}else{
				var total_price = product_price * quantity;
				var discount_total = discount * quantity;
					$.ajax({
						url:'/test/addCartNonMemberOne.do',
					    type:'POST',
					   	cache:false,
						data: {"product_color" : product_color, "product_size" : product_size, "quantity" : quantity, "product_no" : product_no, "user_no" : 0,
							"product_price" : product_price, "discount" : discount, "main_image" : main_image, "product_name" : product_name, "total_price" : total_price, "discount_total" : discount_total},
						success:function(data) {
							if(data == 1){
							location.href="/test/getOrder.do";
							}
						},
						error:function() {	
							alert('다시 시도해주세요');
						}
					});
			}
		}else{
			var user_no = localStorage.getItem("user_no");
			var discount_total = discount * quantity;
			var total_price = product_price * quantity;
			var all_discount = discount * quantity;
			var all_price = product_price * quantity;
			
			$.ajax({
				url:'/test/addCartOne.do',
			    type:'POST',
			   	cache:false,
				data: {"product_color" : product_color,"product_name" : product_name, "product_size" : product_size, "quantity" : quantity, "product_no" : product_no, 
					"product_price" : product_price, "discount" : discount, "main_image" : main_image, "discount_total" : discount_total, 
					"total_price" : total_price, "all_discount":all_discount, "all_price" : all_price, "user_no" : user_no},
				success:function(data) {
					if(data == 1){
					location.href="/test/getOrder.do";
					}
				},
				error:function() {	
					alert('다시 시도해주세요');
				}
			});
		}
	}
}
	

/* 장바구니 이동 */
function addCart(){
	if(product_size == "" || product_color == ""){
		alert("옵션을 선택해주세요.");
	}else{
		var user_no = localStorage.getItem("user_no");
		var total_price = product_price * quantity;
		if(user_no != null){
			$.ajax({
				url:'/test/addCheckCart.do',
			    type:'POST',
			   	cache:false,
				data: {"product_no":product_no, "user_no" : user_no, "product_size":product_size, "product_color":product_color},
				success:function(data) {
					if(data == 0){
						$.ajax({
							url:'/test/addCart.do',
						    type:'POST',
						   	cache:false,
							data: {"product_no":product_no, "product_name":product_name, "quantity":quantity, "discount" : discount,
								"total_price":total_price, "product_size":product_size, "product_color":product_color, "main_image" : main_image, "user_no" : user_no
							},
							success:function(data) {
								if(data == 1){
								alert('장바구니에 담겼습니다.');
								location.href="/test/getcartList.do?user_no="+user_no;
								window.close();
								}
							},
							error:function() {
								alert('다시 시도해주세요');
							}
						});
					}else{
						var check = confirm("이미 장바구니에 추가된 상품입니다\n 장바구니로 이동하시겠습니까?");
						if(check) location.href="/test/getcartList.do?user_no="+user_no;
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
				data: {"product_no":product_no, "product_size":product_size, "product_color":product_color },
				success:function(data) {
					if(data == 0){
						$.ajax({
							url:'/test/addCart.do',
						    type:'POST',
						   	cache:false,
							data: {"product_no":product_no, "product_name":product_name, "quantity":quantity, "discount" : discount,
								"total_price":total_price, "product_size":product_size, "product_color":product_color, "main_image" : main_image
							},
							success:function(data) {
								if(data == 1){
								alert('장바구니에 담겼습니다.');
								location.href="/test/getcartList.do";
								window.close();
								}
							},
							error:function() {
								alert('다시 시도해주세요');
							}
						});
					}else{
						var check = confirm("이미 장바구니에 추가된 상품입니다\n 장바구니로 이동하시겠습니까?");
						if(check) location.href="/test/getcartList.do";
						window.close();
				}
			},
			error:function() {
				alert('다시 시도해주세요');
			}
		});
		}
	}
}
</script>


<%@ include file="footer.jsp"%>
</body>
</html>