<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!-- 주문상세페이지 -->
<!DOCTYPE html>
<html lang="ko">
<head>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211109173813"></script>

	<!-- 컨텐츠 시작 -->
	<div class="contain my od lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">
				주문/배송상세</h2>
			
<!-- 			<script>
$(document).ready(function(){
	var mypageUrl = document.location.pathname;
	var mypageUrlParam = document.location.href.substring((document.location.href).indexOf("?"));
	console.log(mypageUrl);
	console.log(mypageUrlParam);
	
	var patt1 = /^\/mypage\/order\/\w+\/view/;
	var f_patt1 = patt1.exec(mypageUrl);
	
	console.log(/^\/mypage\/order\/\w+\/view/.exec(mypageUrl));
	
	$("#myNavi1").find("li").removeClass("on");
	$("#myNavi2").find("li").removeClass("on");
	$("#myNavi3").find("li").removeClass("on");
	$("#myNavi4").find("li").removeClass("on");
	
	if(mypageUrl.indexOf("/mypage/claim/list") > -1 || "Y" == ""){
		$("#myNavi1").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/order/list") > -1 || f_patt1){
		$("#myNavi1").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/order/receipt/list") > -1){
		$("#myNavi1").find("li").eq(2).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/wishlist/list") > -1){
		$("#myNavi2").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/todaygood/list") > -1){
		$("#myNavi2").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/goods/reviewView") > -1){
		$("#myNavi2").find("li").eq(2).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/inquiry/") > -1){
		$("#myNavi2").find("li").eq(3).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/listMileage") > -1){
		$("#myNavi3").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/listPoint") > -1){
		$("#myNavi3").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/listCoupon") > -1){
		$("#myNavi3").find("li").eq(2).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/membershipRateInfo") > -1){
		$("#myNavi3").find("li").eq(3).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/member/deliveryLocationList") > -1){
		$("#myNavi4").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/member/modifyMemberView") > -1 || (mypageUrl+mypageUrlParam).indexOf("/mypage/member/checkPasswordView?targetUrl=modifyMemberView") > -1){
		$("#myNavi4").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/member/secessionMemberView") > -1 || (mypageUrl+mypageUrlParam).indexOf("/mypage/member/checkPasswordView?targetUrl=secessionMemberView") > -1){
		$("#myNavi4").find("li").eq(2).addClass("on");
	}
})
</script> -->

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
							<strong>주문/배송상세</strong>
							</p>
			</div> 		<!-- 일반주문 상세  -->
				<div class="orderInfoCon">
					<div class="odSearchResult odPdModify odDetail">			
					
						<!-- 주문번호, 상품 리스트 -->
						<div class="odResulCon">	
							<div class="odResulBox">							
						
								<!-- 주문정보 -->
								<div class="orderNb ">
									<span>
										일반주문
</span>
									<span><em>주문일</em> 2021-11-10 01:57</span>
									<span><em>주문번호</em> OD202111101037534</span>	                              
								</div>
									
								<!-- //주문정보 -->
								<div class="btnOdTop">
	                              	<a href="#layerPopupCancelAll" class="btn sm gray d_layer_open" onclick="getLayerPopupTotalCancel('OD202111101037534','2021-11-10 01:57' ,'PAY_COMPT');">전체취소</a>
									<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">1:1 문의</a>
                              	</div>	
                              	
                              	<!-- 배송지 -->
											<div class="orderAdd odAddBox">									
												<!-- <strong class="odAddTit">[배송지]</strong> 2018.12.06 삭제-->										
												<dl>
													<dt>받는 분</dt>
													<dd>ㅇㅇㅇ</dd>
												</dl>
												<dl>
													<dt>주소</dt>
													<dd>여기부분에 값 넘겨와야합니다요</dd>
												</dl>
												<dl>
													<dt>연락처</dt>
													<dd>
														전화번호~</dd>
												</dl>	
												<dl>
													</dl>
												<a href="#layerPopupChangeAddress" class="btn sm gray btnAddModi d_layer_open" popName="pop_deliveryChange" onclick="getLayerPopupDeliveryChange('OD202111101037534', 1); return false;">배송지 변경</a>	
												</div>	
											<!-- //배송지 -->		
										<!-- 주문상품 리스트 값넘어와야함 -->
										<table class="board-list orderTable">
				                        	<colgroup>
				                                <col>
		                                        <col style="width:80px">
		                                        <col style="width:114px">
		                                        <col style="width:90px">
		                                        <col style="width:146px">
				                          	</colgroup>	   
			                         		<tbody>
			                              		<!-- loop -->
			                              		<tr>		                             	 
			                                  					<td class="tleft">
																	<div class="product-info ">
																		<div class="product-info-img">
																			<a href="javascript:mypageorder.goGoodsInfo('GM0021082429406');"><img src="https://static.mlb-korea.com/images/goods/thnail/m/20210824/3ABNM0116-50BKS-45792245518142165.png/dims/resize/100x100" alt="상품이미지" onerror="errorImgShow(this, 100);"></a>
																		</div>
						                                          		<div class="product-info-text">
						                                              		<div class="product-info-box">
						                                              		<div class="product-more-info">
																						<span class="text-color01">[매장배송]</span>
																					</div>
																			<p class="product-name"><a href="javascript:mypageorder.goGoodsInfo('GM0021082429406');">아크 비니 뉴욕양키스</a></p>
						                                                  	<div class="product-price">
						                                                    	<span>36,000원</span>
						                                                  	</div>
						                                              	</div>
						                                              	<div class="product-option">
						                                                  	<span>
																					BKS 
																					 / F</span>
																			</div>
						                                          	</div>
						                                      	</div>
						                                  		</td>
			                                  					<td>1</td>
							                                  	<td>36,000원</td>
			                                  					<td>
			                                  						결제완료
</td>
			                                  					<td class="selBox">
			                                  						<span><a href="#none" class="btn gray sm" onclick="mypageorder.goUnitCancel('OD202111101037534', '1'); return false;">주문취소</a></span>
																				</td>
								                          	</tr>
								                  		<!-- //loop -->
								        	</tbody>
										</table>                        
			                         	<!-- //주문상품 리스트  -->
		                         	
		                         
                         			<!--  // 주문번호, 상품 리스트 -->    
                        
                        	<!--  결제 정보 값 넘어와야함 -->
                        	<div class="mgInfoBox">
                        		<h3>결제 정보</h3>
                        		<table class="tbTotalList">
                        			<caption>결제 정보</caption>
			                        <colgroup>
			                             <col style="width:20%">
	                                     <col style="width:">
	                                     <col style="width:">
			                        </colgroup>	   
		                        	<tbody>
			                          	<tr>
			                          		<th>상품주문금액</th>
			                          		<td colspan="2">36,000원</td>		                          		
			                          	</tr>
										<tr class="selLineBoxBt">
			                          		<th>배송비</th>
			                          		<td colspan="2">0원</td>		                          		
			                          	</tr>		                          	
			                          	<tr class="selMgT">
			                          		<th>주문할인</th>
			                          		<td colspan="2">0원</td>		                          		
			                          	</tr>
			                          	<tr>
			                          		<th>쿠폰할인</th>
			                          		<td colspan="2">0원</td>		                          		
			                          	</tr>
			                          	<tr>
			                          		<th>사용 마일리지</th>
			                          		<td colspan="2">0원</td>		                          		
			                          	</tr>
			                          	<tr>
			                          		<th>사용 포인트</th>
			                          		<td colspan="2">0원</td>		                          		
			                          	</tr>		                          			                          	
			                        </tbody>
			                        <tfoot>
			                        	<tr class="selLineBoxBt">
			                          		<th>총 결제금액</th>
			                          		<td>
			                          			<span class="selTxtMgL">신용카드결제
</span>
			                          			</td>
			                          		<td>
			                          			<strong>
			                          				36,000</strong>
			                          			원</td>
			                          	</tr>		                          		
			                          	<tr>
			                          		<td colspan="2"><span class="selTxtMgL">적립예정&nbsp;마일리지</span></td>
			                          		<td class="fc_red">360원</td>
			                          	</tr>
			                        </tfoot>
	                        	</table>                        
                        	</div>
                        	<!--  //결제 정보 -->
                        	<!--  취소 정보 -->
						<!--  //취소 정보 -->  
	                    
                        
                        <div class="btnWrapBox">	
                        	<a href="/mypage/order/list" class="btn fill">확인</a>
							</div>
						
						</div>		
				</div>		
				<!--  // 일반주문 상세   -->	
				

			</main>
			
		</div>
	</div>
	<!--// 컨텐츠 끝 -->

<%@ include file="footer.jsp" %>
</body>
</html>