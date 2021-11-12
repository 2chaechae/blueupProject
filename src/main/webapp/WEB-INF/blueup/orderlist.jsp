<!-- 주문배송 조회 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/header.jsp"%>

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

		<nav id="lnb" class="lnb-nav">
			<strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
			<p>
				<b>ㅇㅇㅇ</b>님<br />반갑습니다.
			</p>
			<hr class="hr-ddd" />
			<ul class="nav-mnlist">
				<li id="myNavi1"><a href="javascript:;"><span>주문정보</span></a>
					<ul>
						<li><a href="/orderlist.jsp"><span>주문/배송조회</span></a></li>
						<li><a href="/mypage/claim/list"><span>취소/교환/반품 조회</span></a></li>
					</ul>
				</li>
				<li id="myNavi2"><a href="javascript:;"><span>활동정보</span></a>
					<ul>
						<li><a href="/mypage/wishlist/list"><span>위시리스트</span></a></li>
						<li><a href="/mypage/todaygood/list"><span>최근 본 상품</span></a></li>
						<li><a href="/mypage/goods/reviewView"><span>상품리뷰</span></a></li>
						<li><a href="/mypage/inquiry/list"><span>1:1 문의</span></a></li>
					</ul>
				</li>
				<li id="myNavi3"><a href="javascript:;"><span>혜택정보</span></a>
					<ul>
						<li><a href="/mypage/benefit/listPoint"><span>포인트</span></a></li>
						<li><a href="/mypage/benefit/listCoupon"><span>쿠폰함</span></a></li>
						<li><a href="/mypage/benefit/membershipRateInfo"><span>회원혜택안내</span></a></li>
					</ul></li>
				<li id="myNavi4"><a href="javascript:;"><span>회원정보</span></a>
					<ul>
						<li><a href="/mypage/member/deliveryLocationList"><span>배송지 관리</span></a></li>
						<li><a href="/mypage/member/modifyMemberView"><span>회원정보 수정</span></a></li>
						<li><a href="/mypage/member/secessionMemberView"><span>회원탈퇴</span></a>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
		<main class="contents" id="contents">
			<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span> 
					<span><a href="/mypage/view">마이페이지</a></span> <span>주문정보</span> <strong>주문/배송조회</strong>
				</p>
			</div>
			
			<!--  주문/배송조회   -->
			<div class="orderInfoCon">
				<ul class="text-list02"><li>구매확정 후 리뷰 작성시 포인트 증정 해드립니다.(포토 1,000원/텍스트 500원)</li></ul>
				<div class="odSearchOptBox">
					<dl class="period-wrap period-type02 clearfix">
						<!-- 기간달력 -->
						<dd class="fl">
							<!-- select -->
							<div class="select-style02 d_select">
								<button type="button" class="d_select_sel" style="width: 152px;">
									<span>전체</span>
								</button>
								 <ul>
									<li><a href="#" onclick="setOrdTpCd('');">전체</a></li>
									<li><a href="#" onclick="setOrdTpCd('GNRL_ORD');">입금대기</a></li>
									<li><a href="#" onclick="setOrdTpCd('RESVE_ORD');">결제완료</a></li>
									<li><a href="#" onclick="setOrdTpCd('SHOP_PKUP_ORD');">상품접수</a></li>
									<li><a href="#" onclick="setOrdTpCd('LAG_QTY_ORD');">상품준비중</a></li>
									<li><a href="#" onclick="setOrdTpCd('LAG_QTY_ORD');">상품준비완료</a></li>
									<li><a href="#" onclick="setOrdTpCd('LAG_QTY_ORD');">상품 취소</a></li>
								</ul> 
							</div>
							<!-- select -->
						</dd>
						<dt>조회기간</dt>
						<dd class="fr">
							<a href="#" class="btn sm d_radio_select on" onclick="setMonth('3month');return false;"><span>3개월</span></a>
							<a href="#" class="btn sm d_radio_select" onclick="setMonth('6month');return false;"><span>6개월</span></a>
							<a href="#" class="btn sm d_radio_select" onclick="setMonth('12month');return false;"><span>12개월</span></a>
							<input type="text" class="calendar" id="dateStart" readonly>
							<input type="text" class="calendar" id="dateEnd" readonly> 
							<a href="#" class="btn sm" onclick="loadOrderList();return false;">검색</a>
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
								<!-- <span>상품 취소</span> -->
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
								<tbody>
									<tr>
										<c:if test="${newList == orderlist.order_no}">
										<td class="tleft">
											<div class="product-info">
												<div class="product-info-img">
													<a href="javascript:mypageorder.goGoodsInfo('GM0021073028544');">
													<img src="${orderlist.product_img }"
														alt="상품이미지" onerror="errorImgShow(this, 100);"></a>
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
										<td>${orderlist.product_quantity }</td>
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
						<script>
							$(document).ready(function() {
								setClaimCnt('1');
							});
						</script>
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
<!-- 팝업 : 이전주문보기 안내 -->
<article id="fomerlyOrderList" class="layer-popup layer-type03">
	<section class="layer-popup-cont" tabindex="0">
		<h2>이전주문보기 안내 팝업</h2>
		<div class="layer-popup-wrap01">
			<ul class="text-list02 col-type01">
				<li>최근 3개월간 회원님의 주문하신 내역이 제공됩니다.</li>
				<li>2019년 2월 25일 이전 주문은 ‘이전 주문보기’ 버튼 클릭 시 주문내역을 확인 하실 수 있습니다.</li>
			</ul>
		</div>
		<div class="btn-wrap">
			<a href="#" class="btn-style02" onclick="goFormerlyOrderList();return false;">이전 주문보기</a>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>
		
<!-- layerpopup - 결제하기 -->
<article id="layerPopupPayment" class="layer-popup lypopPayModify inlayer"></article>
<!-- //layerpopup - 결제하기 완료 -->

<!-- layerpopup - 추가결제 완료 -->
<article id="layerPopupPayComplete" class="layer-popup layer-type02">
	<section class="layer-popup-cont" tabindex="0">
		<h2>결제완료</h2>
		<div class="layer-popup-wrap02">
			<p class="layer-txt03">결제가 정상적으로 완료되었습니다.</p>
			<p class="layer-txt04" id="payComptOrdNo">주문번호</p>
		</div>
		<div class="btn-wrap03">
			<a href="#" class="btn fill w160 d_layer_close" onclick="addPayReload();">확인</a>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close" onclick="addPayReload();">닫기</button>
		</div>
	</section>
</article>

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

<article id="lypopCardPayCf" class="layer-popup lypopCardinfo lypopCardPayCf inlayer">
	<section class="layer-popup-cont" tabindex="0" style="width:850px">
		<h2>공인인증안내</h2>
		<div class="layer-cont ly-box scroll"><!-- 스크롤 필요시 scroll -->
		
			<div class="payTxtBox">
				<p class="fw_bold">2005년 11월 1일부터 공인인증서 사용이 의무화 되었습니다.</p>
				<p>금감원의 전자상거래 안정성 강화정책에 따라 30만원 이상의 모든 신용카드 결제에 공인인증 사용이 의무화됩니다.<br>(단, 30만원 이하 결제시에는 공인인증서 없어도 결제 가능)</p>
				 <table class="board-list">
	                <colgroup>                     
	                  <col style="width:260px">
	                  <col style="width:130px">
	                  <col style="width:">
	                </colgroup>
	                <thead>
	           	   		<tr>
	           	   			<th></th>
	           	   			<th>30만원 미만</th>
	           	   			<th>30만원 이상</th>
	       	   			</tr>
	                </thead>
	                <tbody>
	                	<tr>
	                		<th>BC,국민,우리</th>
	                		<td>안전결제</td>
	                		<td>안전결제+공인인증</td>
	               		</tr>
	                	<tr>
	                		<th>그 외 모든 카드</th>
	                		<td>안전결제</td>
	                		<td>공인인증</td>
	               		</tr>               		
	                </tbody>
	             </table>
	             <p class="txtSize12">그 외 모든 카드 : LG, 삼성, 외환, 신한, 조흥, 롯데, 하나, 한미, 전북, 수협, 제주, 광주은행 카드 등</p>  
			</div>	
			<div class="payTxtBox">
				<h3 class="fw_bold">공인인증 발급</h3>
				<p>공인인증서는 인터넷 뱅킹 또는 카드결제 시에 본인임을 확인하는 보안장치로, 다음과 같이 발급 받으실수 있습니다.</p>
				<ul class="issueBox">
					<li><em>01.</em>거래은행방문</li>
					<li><em>02.</em>인터넷<br>뱅킹신청</li>
					<li><em>03.</em>거래은행<br>홈페이지 접속</li>
					<li><em>04.</em>공인인증서<br>다운로드 및 설치</li>
				</ul>
				<ul class="text-list02">
					<li class="fc_gray">신용카드 결제 시 공인인증서는 범용공인인증서(유료발급) 또는 신용카드용 공인인증서만 사용 가능합니다.</li>
					<li>추가적으로 더 궁금한 사항은 1:1 고객상담으로 문의 주시기 바랍니다.</li>
				</ul>
			</div>
			<div class="btn_custom"><a href="/helpdesk" class="btn sm gray">1:1 고객상담</a></div>		
		</div> 
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="lypopCardPayClick" class="layer-popup lypopCardinfo lypopCardPayClick inlayer">
	<section class="layer-popup-cont" tabindex="0" style="width:850px">
		<h2>안전결제안내</h2>
		<div class="layer-cont ly-box scroll"><!-- 스크롤 필요시 scroll -->		
			<div class="payTxtBox">
				<h3 class="fw_bold">안심클릭이란?</h3>
				<p>인터넷 쇼핑 시 고객님이 소유하신 카드에 미리 설정해둔 전자상거래용의 별도 비밀번호를 입력하여 카드 사용자 본인을 확인함으로써 온라인 상에서의 카드 무단도용을 방지해주는 서비스입니다.</p>
				<div class="txtsBox">					
					<h4>안심클릭 카드 안내</h4>
					<table class="board-list list_left">
		                <colgroup>                     
		                  <col style="width:110px">
		                  <col style="width:300px">
		                  <col style="width:110px">
		                  <col style="width:">
		                </colgroup>  
		                <tbody>
		                	<tr>
		                		<td>삼성카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_samsung.png" alt="삼성카드"></td>
		                		<td>한미카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_citibank.png" alt="한미카드"></td>	                		
		               		</tr>
		                	<tr>
		                		<td>외환카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_keb.png" alt="외환카드"></td>
		                		<td>수협카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_suhyupbank.png" alt="수협카드"></td>	                		
		               		</tr>
		                	<tr>
		                		<td>롯데카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_lotte.png" alt="롯데카드"></td>
		                		<td>전북카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_jbbank.png" alt="전북카드"></td>	                		
		               		</tr>
		                	<tr>
		                		<td>현대카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_hyunda.png" alt="현대카드"></td>
		                		<td>광주카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_kjbank.png" alt="광주카드"></td>	                		
		               		</tr>
		                	<tr>
		                		<td>신한카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_shinhan.png" alt="신한카드"></td>
		                		<td>제주카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_jejubank.png" alt="제주카드"></td>	                		
		               		</tr>
		                	<tr>
		                		<td>시티카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_citibank.png" alt="시티카드"></td>
		                		<td>조흥카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_shinhan.png" alt="조흥카드"></td>	                		
		               		</tr>
		                	<tr>
		                		<td>신세계한미카드</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_shinsegae.png" alt="신세계한미카드"></td>
		                		<td>신한(구LG)</td>
		                		<td><img src="https://static.mlb-korea.com/pc/static/images/od/card_shinhan_lg.png" alt="신한(구LG)"></td>	                		
		               		</tr>    		
		                </tbody>
		             </table>
	             </div>
				<div class="txtsBox">
					<h4>안심클릭 대상카드</h4>
					<div class="txts">
						<ul class="text-list02 txtTypeGray">
							<li>국민카드/ BC카드/ 우리카드를 제외한 모든 신용카드</li>
							<li>삼성/ 외환/ 롯데/ 현대/ 신한/ 시티/ 신세계한미/ 한미/ 수협/ 전북/ 광주/ 제주/ 조흥/ 신한(구 LG)</li>
							<li>국내전용카드/마스터/JCB 모두 포함</li>							
						</ul>
					</div>
				</div>
				<div class="txtsBox">
					<h4>안심클릭 인증방식</h4>
					<p class="txts">
						<em class="fc_black">카드사가 제공하는 팝업창</em>에서 선택가능<br>안심클릭, 공인인증 중 1개 선택 (안심클릭만으로 결제 가능)</p>
				</div>
				<div class="txtsBox">
					<h4>결제페이지 입력정보식</h4>
					<p class="txts">
						기존:카드번호, 유효기간, 주민번호, 카드비밀번호, 할부기간 입력<br>안심클릭 시행 후 : 카드번호, 할부기간만 입력</p>
				</div>
				<div class="txtsBox">
					<h4>등록방법</h4>
					<p class="txts">
						주문/결제 페이지에서 카드사에서 제공하는 팝업화면 통해 바로 등록 및 사용 가능<br>고객님이 소유한 신용카드의 카드사 홈페이지 통해 등록 가능<br>VISA카드를 가지고 계신 고객님들 중, 이미 VISA안심클릭을 등록해 사용하시고 계신 분은 별도의 안심 클릭 등록절차 없이<br>기존대로 결제가 가능하십니다.</p>
				</div>				
				<div class="txtsBox">
					<ul class="text-list02">					
						<li>추가적으로 더 궁금한 사항은 1:1 고객상담으로 문의 주시기 바랍니다.</li>
					</ul>
				</div>
			</div>
			<div class="btn_custom"><a href="/helpdesk" class="btn sm gray">1:1 고객상담</a></div>	
		</div> 
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="lypopCardPaysf" class="layer-popup lypopCardinfo lypopCardPaysf inlayer">
	<section class="layer-popup-cont" tabindex="0" style="width:850px">
		<h2>안전결제안내</h2>
		<div class="layer-cont ly-box scroll"><!-- 스크롤 필요시 scroll -->
			<div class="payTxtBox">
				<h3 class="fw_bold">안전결제(ISP)란?</h3>
				<p class="mgB10">쇼핑몰 이용 시 고객님의 카드번호/비밀번호 등을 입력함으로써 발생될 수 있는 개인정보 유출 및 카드도용 등의 문제점을 차단해 주는 지불수단으로, 인터넷 안전결제 (ISP)비밀번호만으로 안전한 전자상거래를 할 수 있는 서비스입니다.</p>
				<p class="mgB10">BC/국민카드/우리카드사는 모든 전자상거래에 인터넷 안전결제를 의무화 시켰습니다.</p>
				<p>30만원 이상 결제시는 공인인증서가 필요합니다. 공인인증서가 없으신 고객님 공인인증서를 발급 받아주시기 바랍니다.</p>
				<ul class="text-list01">
					<li>인터넷 안전결제(ISP) 이런 점이 좋습니다.<ul class="text-list02">
							<li>신용카드번호,비밀번호 등 개인정보 유출 및 카드 도용 방지</li>
							<li>인터넷 안전결제(ISP) 인증번호만으로 간단하고 편리한 신용결제</li>
							<li>인터넷 안전결제(ISP) 및 공인인증 확인으로 2중 보호가 되는 안전한 거래</li>							
						</ul>
					</li>
					<li>BC카드/국민카드/우리카드 고객님을 위한 인터넷 안전결제(ISP)<ul class="issueBox">
							<li><em>01.</em>주문/결제 시<br>결제수단 선택</li>
							<li class="fc_red">
								<span class="chkTxt posFt">BC카드/국민카드/우리카드<br>안전결제(ISP)선택 시</span>
								<em>02.</em>ISP인증<br>비밀번호 신청/ 변경<br>비밀번호 입력/ 결제<span class="chkTxt posEnd">30만원 이상 결제 시<br>공유인증 비밀번호 입력</span>
							</li>
							<li><em>03.</em>확인하기</li>
							<li><em>04.</em>주문완료</li>
						</ul>
					</li>
					<li>BC카드/국민카드/우리카드 홈페이지에서 인터넷 안전결제(ISP)서비스 등록<div class="btnBanks">
							<a href="http://www.bccard.com" target="_blank" class="btn sm gray bankBc">BC카드 ISP 신청하기</a>
							<a href="http://kbcard.kbstar.com/quics?asfilecode=5023&_nextPage=page=card&weblog=introAf0" target="_blank" class="btn sm gray bankKb">국민카드 ISP 신청하기</a>
							<a href="http://ccd.wooribank.com/ccd/psn/isp/wdccd330_01c.jsp?q=C0A8582A189E027590D52B4B499EC3F9A33727D16DBE8F" target="_blank" class="btn sm gray bankUri">우리카드 ISP 신청하기</a>
						</div>
					</li>
				</ul>							
				<ul class="text-list02">
					<li class="fc_gray">웹사이트를 통해 신청과 동시에 바로 사용이 가능합니다.</li>
					<li>추가적으로 더 궁금한 사항은 1:1 고객상담으로 문의 주시기 바랍니다.</li>
				</ul>
			</div>
			<div class="btn_custom"><a href="/helpdesk" class="btn sm gray">1:1 고객상담</a></div>	
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
</script>
<%@ include file="/footer.jsp" %>
</html>