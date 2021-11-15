<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 컨텐츠 시작 -->
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/order/order.util.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/order/cart.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript"
	src="//script.about.co.kr/templates/script/cm/adbay.cart.controller.js"></script>
<script 
	src="/resources/jquery/jquery/jquery-3.3.1.min.js"></script>

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
							<!-- <div class="tableTopArea">
								<a href="/test/deleteCart.do" class="btn sm gray"
									onclick="deleteCart();"><span>선택상품삭제</span></a>
							</div> -->
							<div class="delBtn">
								<button type="button" class="btn sm gray">
									<span>선택상품삭제</span>
								</button>
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
									<!-- <tr>
										<th scope="col"><span class="check-skin"> <input
												type="checkbox" name="entireCheck" id="GNRL_DLV_entireCheck"
												value="GNRL_DLV" checked="checked" /> <span>선택</span>
										</span></th>

										<th scope="col">상품</th>
										<th scope="col">수량</th>
										<th scope="col">할인/혜택</th>
										<th scope="col">주문금액</th>
										<th scope="col">삭제</th> 
									</tr> -->
								</thead>



								<tr>
									<!--  <th scope="col"><span class="check-skin"> <input
												type="checkbox" name="entireCheck" id="GNRL_DLV_entireCheck"
												value="GNRL_DLV" checked="checked" /> <span>선택</span>
										</span></th> -->
									<th scope="col"><div class="allCheck">
											<input type="checkbox" name="allCheck" id="allCheck" /><label
												for="allCheck">전체</label>

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

									<th scope="col"><input type="hidden"
										value="${cart.cart_no}"></input></th>
									<th scope="col">상품</th>
									<th scope="col">수량</th>
									<th scope="col">할인/혜택</th>
									<th scope="col"></th>
									<th scope="col"><div style="width: 130px;">주문금액</div></th>
								</tr>
								<div class="delBtn">
									<c:forEach var="cart" items="${getcartList}" varStatus="status">
										<tr>
											<!-- 선택 체크 -->
											<td><div class="checkBox">
													<input type="checkbox" name="chBox" class="chBox"
														data-cart_no="${cart.cart_no}" />
														<!-- 개별 체크박스 해제 시 전체 선택 해제 -->
														<script>
														$(".chBox").click(function(){
															$("#allCheck").prop("chekced", false);
														});
														</script>
												</div></td>
											<td><img
												src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg"
												width="100" height="110"></td>
											<td>${cart.product_name }<br>${cart.product_color}/${cart.product_size}
												&nbsp;<input type="button" value="변경" class="option" onclick="option(this);" />
											</td>
											<!-- 수량 -->
											<td>
												<div class="number">
													<button type="button" class="decreaseQuantity" onclick="decreaseQuantity(this);">
														<img
															src="https://static.mlb-korea.com/pc/static/images/my/btn_minus.png">
													</button>
													<!-- 수량 증가 감소하는 --> 
													<span class="numberUpDown">${cart.quantity }</span>
													<button type="button" class="increaseQuantity" onclick="increaseQuantity(this);">
														<img 
															src="https://static.mlb-korea.com/pc/static/images/my/btn_plus.png">
													</button>
													<br>
													<script>
													</* 장바구니창 수량추가감소 */>
													function increaseQuantity(element) {
															var (".numberUpDown") = $('increaseQuantity').val();
															quantity++;
															${cart.quantity }.val('increaseQuantity ');
														}
													function decreaseQuantity(element) {
															var (".numberUpDown") = $('decreaseQuantity').val();
														   quantity--; 
														   ${cart.quantity }.val('decreaseQuantity');
														}
													
													</script>
												</div>
											</td>
											<!--///////// 수량 -->
											<td id="sale"><input type="hidden"
												value="${cart.cart_no}"></input></td>

											<td></td>
											<td width="140px;"><div style="width: 130px;">${cart.total_price }원</div></td>

										</tr>


										<tr>

										</tr>

									</c:forEach>
								</div>
								<!-- 	주석 -->
								<%-- <c:forEach var="cart" items="${getcartList}" varStatus="status">
								<td class="tleft">
				<input type="hidden" value="${cart.cart_no}"></input>
									<div class="product-info ">

										<div class="product-info-img">
											<a href="/goods/GM0021073028523/view"><img
												src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg"
												alt="상품이미지" onerror="errorImgShow(this, 100);"></a>
										</div>
										<input type="hidden" class="recommendProduct"
											value="3ACVVC11N-50GRS">

										<div class="product-info-text">
											<div class="product-info-box">
												<div class="product-more-info">



													<p class="product-name">
														<a href="/goods/GM0021073028523/view">
														
															<th>빅볼청키<br> (PLAYBALL MONO JACQUARD)<br>
																뉴욕양키스<br>
																<div class="product-price">89,000 원</div> <br>
																<div class="product-option">
																	GRS / 260 <a href="#layerPopupOption" data-godturn="1"
																		data-godno="GM0021073028523" data-itmqty="1"
																		class="btn_txt btn_modify d_layer_open"> <em>변경</em>
																		<!-- 팝업내용 -->
																		<div class="modal-wrapper"></div>
																	</a>
																</div>
														</a>
												</div>
												</th> </a>
												</p>



												<!-- 	<div class="product-option">
					<th> GRS / 260<th>				
						<a href="#layerPopupOption" data-godturn="1" data-godno="GM0021073028523" data-itmqty="1" class="btn_txt btn_modify d_layer_open">
						<em>변경</em></a>					
				</div>
					 -->
											</div>

										</div>
									</div> <!--             수량            -->
								<td>

									<div class="number">
										<button type="button" id="decreaseQuantity">
											<img
												src="https://static.mlb-korea.com/pc/static/images/my/btn_minus.png">
										</button>
										<span id="numberUpDown">1</span>
										<button type="button" id="increaseQuantity">
											<img
												src="https://static.mlb-korea.com/pc/static/images/my/btn_plus.png">
										</button>
										<br>
									</div>

								</td>
								<!-- //////////수량 -->

								<!-- 할인 -->
								<td>

									<div id="dcLayerBtnOuter_1" style="display: none">
										<span id="totDcTitleInfo_1" style="display: none;">NaN
											원</span>
										<div class="tooltip-wrap d_dropdown layer_discount">
											<button type="button" class="btn_pay_view d_dropdown_sel"
												style="display: none;" id="dcLayerBtn_1" title="할인/혜택 상세보기">툴팁
												열기, 닫기</button>
											<!-- 툴팁 레이어  -->
											<div class="tooltip-layer" id="dcLayerInfo_1">
												<div class="tooltip-cnt">

													<dl id="bskDcInfo_1">
														<dt class="left"></dt>
														<dd class="right"></dd>
													</dl>
													<dl id="totDcInfo_1">
														<dt class="left fw_bold">총할인금액</dt>
														<dd class="right fw_bold">NaN 원</dd>
													</dl>
												</div>
												<button type="button" class="tooltip-close d_dropdown_close">닫기</button>
											</div>
										</div>
									</div> <!-- //툴팁 레이어  -->
								</td>
								<!-- //////할인 -->
								<td><strong class="fw_bold" id="item-price_1${total_price}">${total_price} <!-- 10,900원 --></strong> 
								<input type="hidden" value="${total_price }"></input>
								</td>
								
								<td><a href="#" class="btn_list_del"
									onclick="cart.deleteCart('GNRL_DLV','1');">삭제</a></td>
</c:forEach> --%>
								<!-- 주석 -->
								<!-- </tbody> -->


								<!------------------------------------ 장바구니에 없을때 -------------------------------------------------------------------------->
								<%-- <tbody id="GNRL_DLV_ViewLayer">
								<c:if test="${empty cart.cartList }">
                                    <tr>
                      
                                    	<td colspan="6" class="no-result">
                                    	<div class="noProductMs">
                                    	<span>장바구니에 담긴 상품이 없습니다<span>MLB의 특별한 제안을 받아보세요</span></span>
    			
			</div>
		</td>
	</tr>
</c:if>
</tbody>  --%>
								<!--//////// 장바구니에 없을때 ------------------------------------------------------------------------------------------>
								<tfoot id="GNRL_DLV_cart_foot" style="display: none;">
									<tr>
										<td colspan="6" class="dvTotal"><strong>배송비</strong> <em
											id="total_GNRL_DLV_dlv_amt">0원</em></td>
									</tr>
								</tfoot>
							</table>
							<div class="tableBtarea" id="GNRL_DLV_tableBtarea"
								style="display: none;">
								<a href="#" class="btn sm gray"
									onclick="cart.deleteCart('GNRL_DLV')"><span>선택상품삭제</span></a>
							</div>
							<div class="btnWrap">
								<a href="indexmlb.jsp" class="btn lg"
									data-ga-category="PC_MLB_장바구니" data-ga-action="일반주문"
									data-ga-label="쇼핑 계속하기">쇼핑 계속하기</a>
							</div>
							<ul class="text-list02 line_t">
								<li>회원의 장바구니에 담긴 상품은 <strong>90일간</strong> 보관됩니다.
								</li>
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

									</dl>
									<dl>
										<dt>총 주문금액</dt>
										<dd>
											<strong id="GNRL_DLV_total_amt">0</strong>원
										</dd>
									</dl>
								</div>
								<div class="btn_order" id="GNRL_DLV_order_btn">
									<a href="#" onclick="javascript:cart.orderCart('GNRL_DLV');"
										class="btn lg fill" data-ga-category="PC_MLB_장바구니"
										data-ga-action="일반주문" data-ga-label="주문하기">주문하기</a>
								</div>
							</div>
						</div>
						<!-- // pay box -->

					</div>
					<!-- //order Contents : 일반주문 상품-->
					<!-- //장바구니 (일반주문) -->

					<!-- data test -->
					<!-- <textarea rows="10" cols="100" id="jsonTEXT"></textarea> -->
					<form name="mainForm" id="mainForm" method="post" action="/">
						<input type="hidden" name="_csrf"
							content="f12a2ed4-6048-4fcd-af0a-fa439177b14b" /> <input
							type="hidden" name="_csrf_header" content="X-CSRF-TOKEN" />
					</form>
			</section>
			<div style="display: none;">
				<a href="#layerPopupSoldout" class="btn-style04 d_layer_open"
					id="popSoldOut"></a>
			</div>
		</main>

	</div>
</div>
<!--// 컨텐츠 끝 -->
<div class="notice-popup" id="notice-POP-center" style="display: none">
	<div class="notice-popup-wrap">
		<div class="swiper-container">
			<ul class="swiper-wrapper"></ul>
		</div>
		<div class="notice-popup-bottom">
			<label class="check-skin"> <input type="checkbox"><span></span><em>오늘은
					그만보기</em>
			</label>
		</div>
		<div class="pagination"></div>
	</div>
	<button class="d_layer_close btn-notice-close">닫기</button>
</div>
<form id="changeOptionForm"></form>

<!-- layerpopup - 옵션 변경 -->
<article id="layerPopupOption"
	class="layer-popup optionModi-pop lypopPdMod">
	<!-- 2018-11-23 -->
	<section class="layer-popup-cont" tabindex="0">
		<h2>옵션 변경</h2>
		<!-- 2018-11-23 -->
		<div class="layer-cont">
			<!-- 2018-11-23 -->
			<div class="options-GoodsBoxPop">
				<div class="options-Goodsimg list-swiper-dotnav" id="productImg01">
					<div class="swiper-container swiper-container-horizontal">
						<ul class="swiper-wrapper"
							style="transform: translate3d(0px, 0px, 0px);">
							<li class="swiper-slide swiper-slide-active"
								style="width: 145px;"><div class="item-img">
									<img
										src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg"
										alt="GM0021092830153" onerror="errorImgShow(this, 100);">
								</div></li>

						</ul>

					</div>


				</div>
				<div class="options-GoodsList">
					<ul class="optSelBoxList">
						<li>빅볼청키<br> (PLAYBALL MONO JACQUARD)<br> 뉴욕양키스<br></li>
						<li><em>컬러</em>
							<div class="option-Goodscolor">
								<a href="#" data-godno="GM0021092830151"
									onclick="javascript:getChangeGod(this);" class="d_radio_select"
									id="goodsColor">그레이 </a> <a href="#"
									data-godno="GM0021092830152"
									onclick="javascript:getChangeGod(this);" class="d_radio_select"
									id="goodsColor">브라운</a><a href="#" data-godno="GM0021092830153"
									onclick="javascript:getChangeGod(this);" class="d_radio_select"
									id="goodsColor">블랙</a>
							</div></li>
						<li><em>사이즈</em>
							<div class="option-Goodssize">
								<button type="button" class="btn gray xs d_radio_select"
									id="shoeSize" data-index="0" data-itmno="IT202109280135080"
									data-itmnm="120" data-godtpcd="GNRL_GOD"
									onclick="javascript:sizeChange(this);"
									value="IT202109280135080">
									<span>220</span>
								</button>
								<button type="button" class="btn gray xs d_radio_select"
									id="shoeSize" data-index="0" data-itmno="IT202109280135081"
									data-itmnm="130" data-godtpcd="GNRL_GOD"
									onclick="javascript:sizeChange(this);"
									value="IT202109280135081">
									<span>230</span>
								</button>
								<button type="button" class="btn gray xs d_radio_select"
									id="shoeSize" onclick="javascript:sizeChange(this); "
									value="IT202109280135082">
									<span>240</span>
								</button>
								<button type="button" class="btn gray xs d_radio_select"
									id="shoeSize" onclick="javascript:sizeChange(this);"
									value="IT202109280135083">
									<span>250</span>
								</button>
								<button type="button" class="btn gray xs d_radio_select"
									id="shoeSize" data-index="0" data-itmno="IT202109280135084"
									data-itmnm="155" data-godtpcd="GNRL_GOD"
									onclick="javascript:sizeChange(this);"
									value="IT202109280135084">
									<span>260</span>
								</button>
							</div></li>
						<li><em>수량</em>
							<div class="number">
								<button type="button" id="minusQuantity">
									<img
										src="https://static.mlb-korea.com/pc/static/images/my/btn_minus.png">
								</button>
								<span id="numberminplu">1</span>
								<button type="button" id="plusQuantity">
									<img
										src="https://static.mlb-korea.com/pc/static/images/my/btn_plus.png">
								</button>
								<br>
							</div></li>

					</ul>
				</div>
			</div>
		</div>

		<div class="btnWrapBox">
			<a href="#" class="btn d_layer_close">닫기</a> <a href="#"
				onclick="javascript:setChangeOption();" class="btn fill">변경하기</a>
		</div>

		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>
<!-- //layerpopup - 옵션 변경 -->
<!-- layerpopup - 품절 및 수량 부족 안내 -->
<article id="layerPopupSoldout" class="layer-popup layer-type03">
	<section class="layer-popup-cont layer-popup-scroll01" tabindex="0"
		id="soldoutViewLayer"></section>

</article>

<article id="orderConfirmCallback" class="layer-popup lyPopSample1">
	<section class="layer-popup-cont" tabindex="0">
		<h2>확인</h2>
		<div class="layer-popup-wrap02">
			<p class="layer-txt"></p>
		</div>
		<div class="layer-cont">
			<div class="btnWrapBox">
				<a href="#" class="btn d_layer_close cancelBtn">취소</a> <a href="#"
					class="btn fill d_layer_close confirmBtn">확인</a>
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
		</div>
		UTF-8
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>
<script>
	
	/* 팝업창용 */
	$(function() {
		$('#minusQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberminplu').text();
			var num = parseInt(stat, 10);
			num--;
			if (num <= 0) {
				alert('더이상 줄일수 없습니다.');
				num = 1;
			}
			$('#numberminplu').text(num);
		});
		$('#plusQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberminplu').text();
			var num = parseInt(stat, 10);
			num++;

			if (num > 999) {
				alert('더이상 늘릴수 없습니다.');
				num = 999;
			}
			$('#numberminplu').text(num);
		});
	});
	
</script>

<script>
var goodsColor;
var shoeSize;
function goodsColor(this) {
	$(this)css("border","3px solid blue");
	color = $(this).d_radio_select();
}
function shoeSize(this) {
	$(this)css("border","3px solid blue");
	color = $(this).btn gray xs d_radio_select();
}
</script>
<!-- 장바구니 전체삭제 -->
<!-- <script>
  function(){
	  $("btn sm gray").click(function(){
		  
	        if(confirm("장바구니를 비우시겠습니까?")){
	            location.href="/test/deleteAllCart.do";
	            alert("모두삭제되었습니다.")
	        }
	    });
	}
  
  </script> -->
 <!--  <script>
													</* 장바구니창 수량추가감소 */>
													$(function() {
														$('.decreaseQuantity').click(function(e) {
															e.preventDefault();
															var stat = $('.numberUpDown').text();
															var num = parseInt(stat, 10);
															num--;
															if (num <= 0) {
																alert('더이상 줄일수 없습니다.');
																num = 1;
															}
															$('.numberUpDown').text(num);
														});
														$('.increaseQuantity').click(function(e) {
															e.preventDefault();
															var stat = $('.numberUpDown').text();
															var num = parseInt(stat, 10);
															num++;
												
															if (num > 999) {
																alert('더이상 늘릴수 없습니다.');
																num = 999;
															}
															$('.numberUpDown').text(num);
														});
													});
													</script> -->
<!-- 장바구니 선택삭제 -->
<script>
  /* function deleteCart(element){
	  $(element).click(function(){
		  if(confirm("선택상품을 삭제하겠습니깡??")){
			  location.href="/test/deleteCart.do";
			  alert("선택한 상품이 삭제됐습니당")
		  }
	  });
	  
  } */
  function deleteCart(element){
	  var product_no = $(element).closest('#sale').children('input').val();

	  if(userNO == null){
		  userNO = 0;
	  }
	  $.ajax({
		  url:'/test/deleteCart.do',
	  	  type: 'POST' ,
	  	  cahche: false,
	  	  data: {"product_no":product_no },
	  		success:function(data)  {
	  			if(data == 1){
	  				$(element).closest('.delete_ver').remove();
	  				var now = $('.num').test();
	  				console.log(now);
	  				var new_num = Number(now) - 1;
	  				console.log(new_num);
	  				$('.num').test(new_num);
	  			}
	  			else{
	  			alert("삭제 실패")
	  			}
	  		},
	  		error:function() {
	  			alert('다시 시도해주세여');
	  		}
	  		
	  });
  }
  
  </script>



<script>
  function option(element) {
	  alert("test");
	  var product_no = $(element).closest('.cart').children('.p').val();
	alert(product_no);
	 window.open("/test/getCartOption.do?product_no=" + product_no, " height=300", "width=5000"); }
  
	 
  </script>
<%@ include file="/footer.jsp"%>
</body>
</html>