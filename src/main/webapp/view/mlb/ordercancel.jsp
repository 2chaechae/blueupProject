<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211109175335"></script>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-865_20211109094744"></script>

<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-865_20211109094744"></script>

	<!-- 컨텐츠 시작 -->
	<div class="contain my od lnblist-Wrap" id="contain">
		<div class="container">
		<form name="frmClaimInfo"   id="frmClaimInfo"   method="post"       action="/" >
			<input type="hidden" id="_csrf"        name="_csrf" value="18984c9d-d792-4636-b76c-cddf898d9703"/>
			<input type="hidden" id="ordNo"                         name="ordNo"                  value="OD202111101037534"/>
			<input type="hidden" id="clmTpCd"        				name="clmTpCd"      	        value="PART_CNCL" />
			<input type="hidden" id="chkPgIfYn"                     name="pgIfYn"                   value="N">
			<input type="hidden" id="rfdBnkCd"                      name="rfdBnkCd" 				value="" />	<input type="hidden" id="rfdAcnthldrNm"                 name="rfdAcnthldrNm"            value=""/>	<input type="hidden" id="rfdBnkAcctNo"                  name="rfdBnkAcctNo"             value=""/>	<input type="hidden" id="refundCheckYn"                 name="refundCheckYn"            value="N"/>  <h2 class="title01">상품 취소신청</h2>
			
	<nav id="lnb" class="lnb-nav">
        <strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
    	<p><b>ㅇㅇㅇ</b>님<br/>반갑습니다.</p>
    	<hr class="hr-ddd" />
    	
    	<ul class="nav-mnlist">
    		<li id="myNavi1">
    			<a href="javascript:;"><span>주문정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/order/list"><span>주문/배송조회</span></a>
    				</li>
    				<li>
    					<a href="/mypage/claim/list"><span>취소/교환/반품 조회</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi2">
    			<a href="javascript:;"><span>활동정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/wishlist/list"><span>위시리스트</span></a>
    				</li>
    				<li>
    					<a href="/mypage/todaygood/list"><span>최근 본 상품</span></a>
    				</li>
    				<li>
    					<a href="/mypage/goods/reviewView"><span>상품리뷰</span></a>
    				</li>
    				<li>
    					<a href="/mypage/inquiry/list"><span>QnA</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi3">
    			<a href="javascript:;"><span>혜택정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/benefit/listPoint"><span>포인트</span></a>
    				</li>
    				<li>
    					<a href="/mypage/benefit/listCoupon"><span>쿠폰함</span></a>
    				</li>
    				<li>
    					<a href="/mypage/benefit/membershipRateInfo"><span>회원혜택안내</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi4">
    			<a href="javascript:;"><span>회원정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/member/deliveryLocationList"><span>배송지 관리</span></a>
    				</li>
    				<li>
    					<a href="/mypage/member/modifyMemberView"><span>회원정보 수정</span></a>
    				</li>
    				<li>
    					<a href="/mypage/member/secessionMemberView"><span>회원탈퇴</span></a>
    				</li>
    			</ul>
    		</li>
    	</ul>
    	</nav>
<main class="contents" id="contents">
				
				<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span>
							<span><a href="/mypage/view">마이페이지</a></span>
							<span>주문정보</span>
							<strong>상품 취소신청</strong>
							</p>
			</div> 		<!-- 취소상품 선택  -->
				<div class="orderInfoCon">	
					
					<!-- order Result -->
					<div class="odSearchResult odCancel">				
					
						<!--  order Result List -->
						<div class="odResulCon">								
											
							<!--  order LIst  -->
							<div class="odResulBox">
								<div class="orderNb">
									<span>일반주문
</span>
	                              	<span><em>주문일</em> 2021-11-10 01:57</span>
	                              	<span><em>주문번호</em> <a href="#" onclick="mypageorder.goOrderView('OD202111101037534');">OD202111101037534</a></span>
								</div>	
								
								<h3>취소상품 선택</h3><!--  2018.12.06 위치 수정 -->								
								<table class="board-list orderTable">
		                          <colgroup>
		                                <col style="width:15px">
                                        <col style="width:">
                                        <col style="width:140px">
                                        <col style="width:144px">
		                          </colgroup>	   
		                          <thead>
		                          	<tr>
		                          		<th> 
		                          			<span class="check-skin">
                                                <input type="checkbox" id="chkReply" onchange="allSelect($(this));">
                                                <span>선택</span>
                                            </span>
                                        </th>
		                          		<th colspan="2">상품정보/옵션</th>
		                          		<th>취소수량</th>
		                          	</tr>
		                          </thead>       
		                          <tbody>
		                          	<input type="hidden" name="lgsDlvspList[0].ordNo" value="OD202111101037534"/>
										<input type="hidden" name="lgsDlvspList[0].dlvPcupspTurn" value="1" >
										<tr id="TR_0_0"
																ordGodTurn="1" 
																godTpCd="GNRL_GOD" 
																ance="" 
																mainIndex="0" 
																subIndex="0" 
																wrkQty="1">
							                             	 <td>
					                                            <span class="check-skin">
					                                                <input type="checkbox" id="clmVal00" name="anceCheck" value="" ance="" mainIndex="0" subIndex="0" godTpCd="GNRL_GOD" dlvStatCd="DLV_WAIT" data-isview="Y">
					                                                <span>선택</span>
					                                                <input type="hidden" name="lgsDlvspList[0].clmWrhsGodList[0].erpGodNo" value="3ABNM0116-50BKS"/>
														            <input type="hidden" name="lgsDlvspList[0].clmWrhsGodList[0].ordNo" value="OD202111101037534"/>
																	<!-- 입점 구분 코드 -->
																	<input type="hidden" name="lgsDlvspList[0].clmWrhsGodList[0].partmalSectCd" value="MCOM"/>
																	<!-- 국내 배송비 정책 일련번호 -->
																	<input type="hidden" name="lgsDlvspList[0].clmWrhsGodList[0].dmstcDlvCstPlcSn" value="16"/>
																	<!-- ncp2 -->
			
																	<input type="hidden" id="lgsDlvspList0clmWrhsGodList0clmResnCd" name="lgsDlvspList[0].clmWrhsGodList[0].clmResnCd" class="clmResnCd"
																		   ance="" mainIndex="0" subIndex="0" value="CSTMR_CHGMIND_CNCL"/>
																	<input type="hidden" name="lgsDlvspList[0].clmWrhsGodList[0].clmResnCont" value="" />
																	<input type="hidden" id="lgsDlvspList0clmWrhsGodList0godTpCd" name="lgsDlvspList[0].clmWrhsGodList[0].godTpCd" value="GNRL_GOD" />
																	<input type="hidden" id="lgsDlvspList0clmWrhsGodList0ordGodTurn" name="lgsDlvspList[0].clmWrhsGodList[0].ordGodTurn" value="1" class="ordGodTurn"/>
																	<input type="hidden" id="lgsDlvspList0clmWrhsGodList0dlivyDrctGodNo" name="lgsDlvspList[0].clmWrhsGodList[0].dlivyDrctGodNo" value="RO202111101569995" />
																	<input type="hidden" id="lgsDlvspList0clmWrhsGodList0dlvTurn" name="lgsDlvspList[0].clmWrhsGodList[0].dlvTurn" value="1" />
																	
					                                               
					                                            </span>
					                                          </td>
							                                  <td class="tleft">
							                                      <div class="product-info">
							                                          <div class="product-info-img"><a href="javascript:mypageorder.goGoodsInfo('GM0021082429406');"><img src="https://static.mlb-korea.com/images/goods/thnail/m/20210824/3ABNM0116-50BKS-45792245518142165.png/dims/resize/100x100" alt="상품이미지" onerror="errorImgShow(this, 100);"></a></div>
							                                          <div class="product-info-text">
							                                              <div class="product-info-box">
							                                              	  <p class="product-name"><a href="javascript:mypageorder.goGoodsInfo('GM0021082429406');" >아크 비니 뉴욕양키스</a></p>
							                                                  <div class="product-price">
							                                                      <span>36,000원</span>
							                                                  </div>
							                                              </div>
							                                              <div class="product-option">
								                                               <!-- EOSD-2219 베이비 세트상품 경우 옵션 hidden -->
								                                                  <span>BKS / F</span><br/>
																					</div>
							                                          </div>
							                                      </div>
							                                  </td>
							                                  <td>1</td>
							                                  <td>
					                                             <div class="quantity-wrap">
					                                                 <button type="button" class="pq-minus" onclick="changeQty('0', '0', -1);">빼기</button>
					                                                 <button type="button" class="pq-plus" onclick="changeQty('0', '0', +1);">추가</button>
					                                                 <input type="number" class="pdNumber clmQtyClass" maxlength="5" id="lgsDlvspList0clmWrhsGodList0clmQty" name="lgsDlvspList[0].clmWrhsGodList[0].clmQty"  value="1" data-wrkqty="1" mainIndex="0" subIndex="0"/>
					                                             </div>                                             
					                                          </td>
							                               </tr>
														</tbody>
		                         </table>	
                         	</div>	 
                         	<!--  //order LIst  -->     
                         	                 
                        </div>
                        <!--  //order Result List -->    
                        
                        <div class="mgInfoBox" id="refundInfoDiv">
						</div>
                        
                        <!--  환불계좌  -->
                        <!--  //환불계좌  -->
                        
                        <div class="btnWrapBox">
							<a href="#none" class="btn" onclick="javascript:history.back();">취소</a>
							<a href="#none" class="btn fill" onclick="acceptUnitCancel();">주문취소</a>
						</div>  
					</div>		
					<!-- //order Result -->		
					
					<ul class="text-list02">
						<li>주문상품 중 일부만 취소하시면 취소 조건에 따라 이미 사용하신 포인트 및 쿠폰을 일부 돌려받으실 수 있습니다.</li>
						<li>배송비 무료가 적용된 주문이 취소를 통해 배송비 무료 조건에 위배되는 경우 추가 배송비가 발생 될 수 있습니다.</li>
						<li>에스크로서비스를 선택한 주문은 부분취소, 부분반품이 허용되지 않습니다.</li>
						<li>에스크로서비스를 선택한 주문은 전체취소만 가능하며,  에스크로서비스를 사용한 주문의 전체 반품은 배송비결제가 필요합니다.</li>
					</ul>	
					
				</div>		
				<!--  // 취소상품 선택   -->	
				

			</main>
		</form>	
		</div>
	</div>
	<!--// 컨텐츠 끝 -->
<%@ include file="footer.jsp" %>   
</html>