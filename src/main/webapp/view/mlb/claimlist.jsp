<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js?v=prod-version-858_20211102145956"></script>
<script src="https://pg.cnspay.co.kr/dlp/scripts/smilepay.js" charset="euc-kr"></script>
<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>

<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js?v=prod-version-858_20211102145956"></script>


	<!-- 컨텐츠 시작 -->
	<div class="contain my od lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">취소/교환/반품 조회</h2>

<%@ include file="mypageMenu.jsp" %>
<main class="contents" id="contents">
				
				<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span>
							<span><a href="/mypage/view">마이페이지</a></span>
							<span>주문정보</span>
							<strong>취소/교환/반품 조회</strong>
							</p>
			</div> 		<!--  취소/교환/반품조회   -->
				<div class="orderInfoCon">
				
					<ul class="text-list02">
						<li>최근 1년까지의 취소/교환/반품 내역을 조회할 수 있습니다.</li>
						<li>2019년 2월 25일 이전 내역을 확인하시려면 '이전 주문보기' 버튼을 클릭해주세요.</li>
					</ul>
					
					<div class="odSearchOptBox">
						<form  method="post" id="srchForm" action ="/secured/mypage/listClaim" >
							<input type="hidden" id="srchMonth" name="srchMonth" value ="">		
							<input type="hidden" name="_csrf" value="e10c8807-8415-4905-b1ec-a9230cf6bc3f"/>
			
							<a href="#" class="btn sm gray bfOrder" onclick="goFormerlyOrderList(); return false;">이전 주문보기</a>
							<dl class="period-wrap period-type02 clearfix">
								<!-- 기간달력 -->
								<dt class="blind">클레임 유형</dt>
								<dd class="fl">
									<!-- select -->
									<div class="select-style02 d_select">
										<button type="button" class="d_select_sel" style="width:152px;"><span>전체</span></button>
										<!-- 2018.12.06 항목 수정 -->
										<ul>
											<li><a href="#" onclick="setClmTpCdSearch('');">전체</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('CNCL');">주문취소</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('GNRL_EXCHG');">교환</a></li>								
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">반품</a></li>
											<input type="hidden" id=clmTpCdSearch value=""/>									
										</ul>
										<!-- //2018.12.06 항목 수정 -->
									</div>
									<!-- //select -->
								</dd>
								<dt>조회기간</dt>
								<dd class="fr">
									<a href="#none" class="btn sm d_radio_select on" onclick="setMonth('3month');"><span>3개월</span></a>
									<a href="#none" class="btn sm d_radio_select" onclick="setMonth('6month');"><span>6개월</span></a>
									<a href="#none" class="btn sm d_radio_select" onclick="setMonth('12month');"><span>12개월</span></a>
									<input type="text" class="calendar" id="dateStart" name="dateStart" value="" readonly>
									<input type="text" class="calendar" id="dateEnd" name="dateEnd" value="" readonly>
									<a href="#none" class="btn sm" onclick="goMyPageClaimList(); return false;">검색</a>
									<!-- <p class="calendar-info-txt">시작일로부터 최대 1년단위로 조회가 가능합니다.</p> -->
								</dd>
							</dl>						
							<!--%@ include file="../_inc/uiDateRange2.jsp" %--> 
						</form>
					</div>
					
					<!-- order Result -->
					<div class="odSearchResult">	
									
						<div class="odResultTop">
							<strong class="listTotal">전체(<em class="fc_red" id="claimCnt"></em>건)</strong>
							<a href="#lypopChgGuide" class="btn sm gray d_layer_open">교환/반품 절차안내</a>	
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">1:1 고객상담</a>						
						</div>
						<!--  order Result List -->
						<div class="odResulCon" id="includeClaimList">				                         	                   
                        </div>
                        <!--  //order Result List -->
					</div>		
					<!-- //order Result -->		
				</div>		
				<!--  //취소/교환/반품조회   -->
			</main>	
		</div>
	</div>
	<!--// 컨텐츠 끝 -->

<!-- 교환/반품 절차 안내 -->
<article id="lypopChgGuide" class="layer-popup lypopChgGuide">
	<section class="layer-popup-cont" tabindex="0" style="width:851px">
		<h2>교환/반품 절차안내</h2>
		<div class="layer-cont ly-box d_tab02">	
			<ul class="tab-type01">
				<li class="d_tab02_select on"><a href="javascript:;">교환 절차 안내</a></li>
				<li class="d_tab02_select"><a href="javascript:;">반품 절차 안내</a></li>				
			</ul>
			<!-- 교환절차안내 -->
			<div class="d_tab02_cont" style="display:block">
				<div class="dvStepBox d_tab02">
					<ul>
						<li><p><strong>교환신청</strong>교환 신청 페이지에서 옵션변경 및 사유 선택후 신청해주시기바랍니다.</p></li>
						<li><p><strong>교환접수</strong>교환신청이 접수되어 택배사에 교환 수거를 요청해드립니다.</p></li>
						<li><p><strong>교환상품 수거/확인</strong>한진/CJ택배 기사님이 상품 을 수거해 갑니다. MLB에서 수거된 상품의 상태를 확인합니다.</p></li>					
						<li><p><strong>교환상품 발송</strong>교환된 새로운 상품을 배송합니다.</p></li>
						<li><p><strong>교환완료</strong>교환상품을 수령하면 교환이 완료됩니다.</p></li>
					</ul>			
				</div>	
			</div>
			<!-- //교환절차안내 -->
			<!-- 반품절차안내  -->
			<div class="d_tab02_cont">
				<div class="dvStepBox d_tab02 step04">
					<ul>
						<li><p><strong>반품신청</strong>반품 신청 페이지에서 사유 선택 및 입력후 신청해주시기 바랍니다.</p></li>
						<li><p><strong>반품접수</strong>반품신청이 접수되어 택배 사에 반품수거를 요청해 드립니다.</p></li>
						<li><p><strong>반품상품 수거/확인</strong>한진/CJ택배 기사님이 상품을 수거해 갑니다. MLB에서 수거된 상품의 상태를 확인합니다.</p></li>					
						<li><p><strong>반품완료</strong>환불처리가 완료된 후 반품완료 처리됩니다.</p></li>						
					</ul>			
				</div>	
			</div>	
			<!--// 반품절차안내  -->		
			<!--  button -->
			<div class="lyBtnArea"><a href="#" class="btn fill w160 d_layer_close">확인</a></div>
			
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>
<!--// 교환/반품 절차 안내 -->
<%@ include file="footer.jsp" %>
</body>
</html>