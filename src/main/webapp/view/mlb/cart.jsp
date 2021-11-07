<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/order/order.util.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/order/cart.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="//script.about.co.kr/templates/script/cm/adbay.cart.controller.js"></script>

<script type="text/javascript" src="/javascript/message/cart_ko.js?v=prod-version-858_20211102145956"></script>

<div id="adbay_cart" style="display:none;"></div>

<!-- 컨텐츠 시작 -->
	<div class="contain od list" id="contain">
		<div class="container">
            <div class="location-container">
                <div class="location-contents">
                    <h2 class="title01">장바구니</h2>
                    <p class="location">                    
	                    <span><a href="/">Home</a></span>
								<strong>장바구니</strong>
								</p>
                 </div>
            </div><main class="contents" id="contents">
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
                        <div class="orderInfoArea d_tab02_cont" style="display:block;">

                            <!-- order list -->
                            <div class="orderTable">
                                <div class="tableTopArea"><a href="#" class="btn sm gray" onclick="cart.deleteCart('GNRL_DLV')"><span>선택상품삭제</span></a></div>
                                <table class="board-list">
                                    <colgroup>
                                        <col style="width:35px">
                                        <col style="width:">
                                        <col style="width:110px">
                                        <col style="width:110px">
                                        <col style="width:110px">
                                        <col style="width:50px">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">
                                                <span class="check-skin">
                                                  	<input type="checkbox" name="entireCheck" id="GNRL_DLV_entireCheck" value="GNRL_DLV" checked="checked"/>
													<span>선택</span>
                                                </span>
                                            </th>
                                            <th scope="col">상품</th>
                                            <th scope="col">수량</th>
                                            <th scope="col">할인/혜택</th>
                                            <th scope="col">주문금액</th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody id="GNRL_DLV_ViewLayer">
                                    <tr>
                                    	<td colspan="6" class="no-result">
                                    	<div class="noProductMs">
                                    	<p>장바구니에 담긴 상품이 없습니다<span>MLB의 특별한 제안을 받아보세요</span></p>
    			<div class="linkBox">
        			<a href="javascript:cateLink('MBMA01', '1', 'GNRL_CTGRY', 'MBMA01');" data-ga-category="PC_MLB_장바구니" data-ga-action="특별 제안" data-ga-label="MEN">MEN</a>
					<a href="javascript:cateLink('MBMA02', '1', 'GNRL_CTGRY', 'MBMA02');" data-ga-category="PC_MLB_장바구니" data-ga-action="특별 제안" data-ga-label="WOMEN">WOMEN</a>
					<a href="javascript:cateLink('MBMA03', '1', 'GNRL_CTGRY', 'MBMA03');" data-ga-category="PC_MLB_장바구니" data-ga-action="특별 제안" data-ga-label="CAP">CAP</a>
					<a href="javascript:cateLink('MBMA10', '1', 'GNRL_CTGRY', 'MBMA10');" data-ga-category="PC_MLB_장바구니" data-ga-action="특별 제안" data-ga-label="SHOES">SHOES</a>
					<a href="javascript:cateLink('MBMA04', '1', 'GNRL_CTGRY', 'MBMA04');" data-ga-category="PC_MLB_장바구니" data-ga-action="특별 제안" data-ga-label="ACC">ACC</a>
					<a href="javascript:cateLink('MBMA05', '1', 'GNRL_CTGRY', 'MBMA05');" data-ga-category="PC_MLB_장바구니" data-ga-action="특별 제안" data-ga-label="KIDS">KIDS</a>
    			</div>
			</div>
		</td>
	</tr>

</tbody>
                                    
<tfoot id="GNRL_DLV_cart_foot" style="display:none;">
										<tr>
									    	<td colspan="6" class="dvTotal">
									    		<strong>배송비</strong>
												<em id="total_GNRL_DLV_dlv_amt">0원</em>
									    	</td>
										</tr>
									</tfoot>
                                </table>
                                <div class="tableBtarea" id="GNRL_DLV_tableBtarea" style="display:none;"><a href="#" class="btn sm gray" onclick="cart.deleteCart('GNRL_DLV')"><span>선택상품삭제</span></a></div>
                                <div class="btnWrap">
                                    <a href="/" class="btn lg" data-ga-category="PC_MLB_장바구니" data-ga-action="일반주문" data-ga-label="쇼핑 계속하기">쇼핑 계속하기</a>
                                </div>
                                <ul class="text-list02 line_t">
                                    <li>회원의 장바구니에 담긴 상품은 <strong>90일간</strong> 보관됩니다.</li>
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
	        <dt>배송비</dt>
	        <dd id="GNRL_DLV_dlv_amt">+0원</dd>
	    </dl>
	    <dl>
	        <dt>총 주문금액</dt>
	        <dd><strong id="GNRL_DLV_total_amt">0</strong>원</dd>
	    </dl>
	</div>
	<div class="btn_order" id="GNRL_DLV_order_btn">
	    <a href="#" onclick="javascript:cart.orderCart('GNRL_DLV');" class="btn lg fill" data-ga-category="PC_MLB_장바구니" data-ga-action="일반주문" data-ga-label="주문하기">주문하기</a>
	</div>
</div></div>
                           <!-- // pay box -->

	                    </div>
	                    <!-- //order Contents : 일반주문 상품-->
                    <!-- //장바구니 (일반주문) -->

					<!-- data test -->
					<!-- <textarea rows="10" cols="100" id="jsonTEXT"></textarea> -->
					<form name="mainForm" id="mainForm" method="post" action="/">
						<input type="hidden" name="_csrf" content="f12a2ed4-6048-4fcd-af0a-fa439177b14b"/>
						<input type="hidden" name="_csrf_header" content="X-CSRF-TOKEN"/>
					</form>
				</section>
				<div style="display:none;">
					<a href="#layerPopupSoldout" class="btn-style04 d_layer_open" id="popSoldOut"></a>
				</div>
			</main>

		</div>
	</div>
	<!--// 컨텐츠 끝 -->
<div class="notice-popup" id="notice-POP-center" style="display:none">
	<div class="notice-popup-wrap">
	    <div class="swiper-container">
	        <ul class="swiper-wrapper"></ul>
	    </div>
	    <div class="notice-popup-bottom">
	        <label class="check-skin">
	            <input type="checkbox"><span></span><em>오늘은 그만보기</em>
	        </label>
	    </div>
	    <div class="pagination"></div>
	</div>
	<button class="d_layer_close btn-notice-close">닫기</button>
</div>
		<form id="changeOptionForm" > </form>

		<!-- layerpopup - 옵션 변경 -->
		<article id="layerPopupOption" class="layer-popup optionModi-pop lypopPdMod"><!-- 2018-11-23 -->
			<section class="layer-popup-cont" tabindex="0">
				<h2>옵션 변경</h2><!-- 2018-11-23 -->
				<div class="layer-cont"><!-- 2018-11-23 -->
					<div class="options-GoodsBoxPop">

					</div>
				</div>
				<div class="btnWrapBox">
					<a href="#" class="btn d_layer_close">닫기</a>
					<a href="#"  onclick="javascript:setChangeOption();" class="btn fill">변경하기</a>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>
		<!-- //layerpopup - 옵션 변경 --><!-- layerpopup - 품절 및 수량 부족 안내 -->
<article id="layerPopupSoldout" class="layer-popup layer-type03">
	<section class="layer-popup-cont layer-popup-scroll01" tabindex="0" id="soldoutViewLayer">
	</section>
	
</article>

<article id="orderConfirmCallback" class="layer-popup lyPopSample1">
	<section class="layer-popup-cont" tabindex="0">
		<h2>확인</h2>
		<div class="layer-popup-wrap02">
			<p class="layer-txt"></p>
		</div>
		<div class="layer-cont">
			<div class="btnWrapBox">
				<a href="#" class="btn d_layer_close cancelBtn">취소</a>
				<a href="#" class="btn fill d_layer_close confirmBtn">확인</a>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">close</button>
		</div>
	</section>
</article>
<article id="orderAlertLayer" class="layer-popup layer-type02">
	<section class="layer-popup-cont" tabindex="0">
		<div class="layer-popup-wrap02">
			<p class="layer-txt"></p>
		</div>
		<div class="btnWrapBox">
			<a href="#" class="btn fill d_layer_close">닫기</a>
		</div>UTF-8
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>
<%@ include file="footer.jsp" %>
</body>
</html>