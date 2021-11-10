<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211109170015"></script>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/order/order.util.js?v=prod-version-865_20211109094744"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/order/order.info.js?v=prod-version-865_20211109094744"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js"></script>
<script type="text/javascript" src="//script.about.co.kr/templates/script/cm/adbayBuyController_v.1.1.js"></script>

<script type="text/javascript" src="/javascript/message/order_ko.js?v=prod-version-865_20211109094744"></script>

<!--RecoPick 로그수집 스크립트 --><!-- 컨텐츠 시작 -->
<div class="contain od list" id="contain">
	<div class="container">
		<div class="location-container">
                <div class="location-contents">
                    <h2 class="title01">주문완료</h2>
                    <p class="location">                    
	                    <span><a href="/">Home</a></span>
								<strong>장바구니</strong>
								</p>
                 </div>
            </div><main class="contents"  id="contents">
			<section>
				<ul class="stepInfoBox">
					<li class="on">장바구니</li>
					<li class="on">주문/결제</li>
					<li class="on">주문완료</li>
				</ul>
				
				<div class="orderContents orderComplete" id="orderInfoViewLayer">
				</div>
				<div class="orderComCont">
					<div class="orderTxtBox">
						<!-- if info.ord.ordTpCd=='SHOP_PKUP_ORD' -->
							<strong>주문이 완료되었습니다.</strong>
							<p>성공적으로 주문처리 되었습니다. 상품 주문내역과 결제금액을 확인하세요.<br>
							주문상세내역 및 정보는 마이페이지>주문정보>주문/배송 조회에서 확인하실 수 있습니다.</p>
						<!-- else info.ord.ordTpCd=='RESVE_ORD'	 -->		
							<!-- <strong>:~messages['order.js.txt.complete.reserve.title']</strong>
							<p>:~messages['order.js.txt.complete.info2']
						else			
							<strong>:~messages['order.js.txt.complete.title']</strong>
							<p>:~messages['order.js.txt.complete.info1']
						/if
						<br />:~messages['order.js.txt.complete.info0']</p> -->
					</div>
					<div class="orderBeneBox">구매확정시 마일리지 최대 5% 적립, 리뷰 작성시 마일리지를 증정해드립니다.[포토 1,000원 | 텍스트 500원]</div>
					<div class="orderNumBox">
	                    	주문번호: 이 부분에 주문번호 넘어와야합니다.
	            		<a href=":~PATH_LOCALE/mypage/order/OD202111101037534/view" class="btn sm">주문상세내역</a>
	            	</div>
				
				<div class="orderInfoTable">
					<table class="board-write">
						<colgroup>
	                    	<col style="width:170px">
	                        <col style="width:130px">  
	                        <col style="width:225px"> 
	                        <col style="width:">                                              
	                	</colgroup>
						<tbody>
							<tr>
	                        	<th class="titSel">주문일시</th>
	                            <td colspan="3">:info.ordDate</td>
	                    	</tr>
							<tr class="lineB">
	                        	<th class="titSel tMg0">주문내역</th>
	                            <td colspan="3" class="tMg0" id="ordDetail"></td>
								<input type='hidden' id='ordNm1' value=':info.ordGodList[0].godNm'/>
								<input type='hidden' id='ordSize' value=:info.ordGodList.length />
	                        </tr>
							<tr>
	                            <th rowspan="6" class="titSel lineB">결재내역</th>
	                            <th>상품가격</th>
	                        	<td colspan="2" class="fs_r">36,000원</td>
	                        </tr>
							<tr>                                            
	                        	<th class="tMg0">할인적용</th>
	                        	<td colspan="2" class="fs_r fc_red tMg0">0원</td>
	                        </tr>
							<tr>
	                        	<th class="lineB tMg0">배송비</th>
	                        	<td class="lineB fs_r tMg0" colspan="2">0원</td>
	                    	</tr>
							<tr>
								<th rowspan="3">총 결제금액</th>
								<th class="fc_gray">마일리지</th>
								<td class="fs_r">0원</td>
							</tr>
							<tr>
								<th class="tMg0 fc_gray">포인트</th>
								<td class="fs_r tMg0">0원</td>
							</tr>
							<!-- if info.payList itemVar="~pay"
							for info.payList itemVar="~pay" ~payCodeList=payCodeList
								if ~pay.payMnCd == 'VIRTL_BNK_ACCT_PAY' -->
									<tr>
										<th class="tMg0 fc_gray">신용카드결제</th>
										<td class="fs_r tMg0 totalSel"><strong>36,000원</strong></td>
									</tr>
									<!-- <tr>
										<th class="tMg0 fc_gray">:~messages['order.js.txt.complete.msg.4.1']</th>
	                                    <td class="fs_r tMg0">:~pay.bnkAcctNo :~pay.bnkNm</td>
									</tr>
									<tr class="lineB">
										<th class="tMg0 fc_gray">:~messages['order.js.txt.complete.msg.4.2']</th>
	                                    <td class="fs_r tMg0">:~pay.payTmlmtDt</td>
									</tr>
								else ~pay.payMnCd == 'RLTM_BNK_ACCT_PAY'
									<tr></tr>
									<tr>
										<th class="tMg0 fc_gray">
										for ~payCodeList itemVar="~item"
											if ~pay.payMnCd == ~item.cd
												:~item.cdNm(:~pay.bnkNm)
											/if
										/for
										</th>
										<td class="fs_r tMg0 totalSel"><strong>:~otool.commaInAmount(~pay.payCrncyPayAmt)</strong>:~messages['common.js.crncy']	</td>
									</tr>
									<tr class="lineB">
										<th class="tMg0 fc_gray">:~messages['order.js.txt.complete.msg.4.1']</th>
	                                    <td class="fs_r tMg0">:~pay.bnkAcctNo :~pay.bnkNm</td>
									</tr>
								else
									<tr></tr>
									<tr></tr>
									<tr class="lineB">
										<th class="tMg0 fc_gray">
										for ~payCodeList itemVar="~item"
											if ~pay.payMnCd == ~item.cd
												:~item.cdNm
											/if
										/for
										</th>
										<td class="fs_r tMg0 totalSel"><strong>:~otool.commaInAmount(~pay.payCrncyPayAmt)</strong>:~messages['common.js.crncy']	</td>
									</tr>
								/if
							/for
							else
								<tr></tr>
								<tr></tr>
								<tr class="lineB"></tr>
							/if -->
							<tr class="lineT">
								<th class="titSel">적립예정 마일리지</th>
								<td colspan="3" class="fs_r fc_red">360원</td>
							</tr>
						</tbody>

					</table>
				</div>
				


<!-- 
			if info.ord.ordTpCd=='SHOP_PKUP_ORD'
				<div class="orderInfoTable">
					<table class="board-write">
						<colgroup>
	                    	<col style="width:170px">
	                        <col style="width:">                       
	                    </colgroup>
	                
	                    <tbody>
							<tr>
								<th class="titSel">:~messages['order.js.txt.complete.picup.msg.1.4']</th>
								<td class="storeInfoSel">
									<p class="StoreInfo">
										<strong class="name">:info.sysShop.shopNm</strong>
										<a href="#" onclick="~otool.showPopupShop(':info.sysShop.shopId');"  class="btnMap"><img src="https://static.mlb-korea.com/pc/static/images/od/icon_location.png" alt="지도보기"></a><br>
										:info.sysShop.baseAddr  if info.sysShop.shopTelAreaNo<em>/</em>:info.sysShop.shopTelAreaNo-:info.sysShop.shopTelTlofNo-:info.sysShop.shopTelTlofWthnNo/if<br>
										:~messages['order.js.txt.script.msg4']  <em>|</em>  (if info.holdyYn=='N':~messages['common.js.week.day']else:~messages['common.js.holi.day']/if) :~otool.timeConvert(info.shopBegHhmm) ~ :~otool.timeConvert(info.shopEndHhmm)
									</p>
									<p class="checkMg">:~messages['order.js.txt.complete.picup.msg.1.1']</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div> -->
			<ul class="text-list02 mt40">
					<li>매장배송이 포함된 주문인 경우, 일반배송 상품과 별도로 발송됩니다.</li>
	
			</ul>

			<div class="btn-wrap">
				<a href=":~PATH_LOCALE/" class="btn-style03">쇼핑 계속하기</a><a href=":~PATH_LOCALE/mypage/order/OD202111101037534/view" class="btn-style02">주문내역 상세보기</a>
			</div>			

 
			</div>
			</section>
		</main>
	</div>
</div>

<!--// 컨텐츠 끝 -->
	
<%@ include file="footer.jsp" %>
</body>
</html>