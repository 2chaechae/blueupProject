<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>
					
	<input type="hidden" name="dlvAdbukTurn" id="dlvAdbukTurn" value=""/>
	<input type="hidden" name="callbackType"  id="callbackType" value=""/>
		
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">
		
			<h2 class="title01">마이페이지</h2>


<%@ include file="mypageMenu.jsp" %>

<main class="contents deliveryList-wrap" id="contents">
				
				<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span>
							<span><a href="/mypage/view">마이페이지</a></span>
							<span>회원정보</span>
							<strong>배송지 관리</strong>
							</p>
			</div> 		<div class="tbst-div">
					<div class="mid fl">
						<span>전체</span> (<span class="text-color01"  id="deliveryCnt">0</span>건)
					</div>
				</div>				
				<div class="board-list" id="deliveryListBoard">
					<table>
						<caption>배송지 관리 - 사용가능매장, 구분, 쿠폰명, 할인, 사용기간, 쿠폰적용상품</caption>
						<colgroup>
							<col style="width:40px;">
							<col style="width:140px;">
							<col>
							<col style="width:145px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">받는분</th>
								<th scope="col">배송지정보</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>

							<tr>
										<td colspan="4" class="no-result">등록된 배송지가 없습니다.</td>
									</tr>
								</tbody>
					</table>
				</div>
				<div class="btnWrapBox" id="deliveryListBoardBtn">
					<a href="#" class="btn fill" onclick="getLayerPopupDeliverySetting('insert'); return false;">배송지 추가</a>
				</div>

			</main>
			
		</div>
	</div>

<article id="layerPopup25" class="layer-popup deliveryModi-pop">
					
</article>
<!-- 우편번호 -->
<article id="layerPopupZipcode" class="layer-popup addressFind-pop">
	<section class="layer-popup-cont" tabindex="0">
		<h2>우편번호 찾기</h2> <div class="layer-cont scroll">
			
			<div class="addressFind-popWrap" id="zipSearchBefore">
			
				<!-- 검색S -->
				<div class="addressFindSrch">
					<input type="search" class="input-style02" name="srchKeyword" id="srchKeyword" onkeydown="if(event.keyCode == 13) getSearchZipcode()">
					<a href="#" class="btn sm"  onclick="javascript:getSearchZipcode(); return false;">검색</a>
				</div>
				<!-- //검색E -->
				
				
			</div>	
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close"></button>
		</div>
	</section>
</article>

<%@ include file="footer.jsp" %>
</body>
</html>