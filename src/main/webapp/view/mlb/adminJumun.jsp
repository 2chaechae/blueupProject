<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp" %>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js?v=prod-version-858_20211102145956"></script>


	<!-- 컨텐츠 시작 -->
	<div class="contain my od lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">배송/주문관리</h2>

<%@ include file="adminMenu.jsp" %>
<main class="contents" id="contents">
				
			 		
				<div class="orderInfoCon">

					<div class="odSearchOptBox">
						<form  method="post" id="srchForm" action ="/secured/mypage/listClaim" >
							<input type="hidden" id="srchMonth" name="srchMonth" value ="">		
							<dl class="period-wrap period-type02 clearfix">
								<!-- 기간달력 -->
								<dt class="blind">상태</dt>
								<dd class="fl">
									<!-- select -->
									<div class="select-style02 d_select">
										<button type="button" class="d_select_sel" style="width:152px;"><span>상태</span></button>
										<!-- 2018.12.06 항목 수정 -->
										<ul>
											<li><a href="#" onclick="setClmTpCdSearch('');">전체</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('CNCL');">입금대기</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('GNRL_EXCHG');">결제완료</a></li>								
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">주문취소</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">배송준비중</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">배송지연</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">배송중</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">배송완료</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">반품완료</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">교환요청</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">교환수거완료</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">교환배송완료</a></li>
											<input type="hidden" id=clmTpCdSearch value=""/>									
										</ul>
										<!-- //2018.12.06 항목 수정 -->
									</div>
									<!-- //select -->
								</dd>
								<dt class="blind">조회기간</dt>
									<label>내용</label>
									<input type="text" style="width:150px">
									<label>조회기간</label>
									<input type="text" class="calendar" id="dateStart" name="dateStart" value="" readonly>
									<input type="text" class="calendar" id="dateEnd" name="dateEnd" value="" readonly>
									<a href="#none" class="btn sm" onclick="goMyPageClaimList(); return false;">검색</a>
									<a href="#none" class="btn sm" onclick="goMyPageClaimList(); return false;">초기화</a>
								</dd>
								</dl>						
						</form>
					</div>
					
					<!-- order Result -->
					<div class="odSearchResult">	
									
						<div class="odResultTop">
							<strong class="listTotal">전체(<em class="fc_red" id="claimCnt"></em>건)</strong>	
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">엑셀 다운</a>						
						</div>
						<div>
							<label>선택 상품 상태 변경  </label>
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">상품준비중</a>
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">배송중</a>
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">배송완료</a>
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">교환접수완료</a>
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">교환완료</a>
							<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">반품완료</a>						
						</div>
						<!--  order Result List -->
						<div class="odResulCon" id="includeClaimList">
							<div class="orderNb noResult">조회내역이 없습니다.</div>				                         	                   
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


</body>
</html>
