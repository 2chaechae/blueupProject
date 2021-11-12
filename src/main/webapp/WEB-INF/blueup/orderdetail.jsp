<!-- 주문상세조회 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<h2 class="title01">주문/배송상세</h2>
		<nav id="lnb" class="lnb-nav">
			<strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
			<p><b>ㅇㅇㅇ</b>님<br />반갑습니다.</p>
			<hr class="hr-ddd" />
			<ul class="nav-mnlist">
				<li id="myNavi1"><a href="javascript:;"><span>주문정보</span></a>
					<ul>
						<li><a href="/orderlist.jsp"><span>주문/배송조회</span></a></li>
						<li><a href="/mypage/claim/list"><span>취소/교환/반품 조회</span></a></li>
					</ul></li>
				<li id="myNavi2"><a href="javascript:;"><span>활동정보</span></a>
					<ul>
						<li><a href="/mypage/wishlist/list"><span>위시리스트</span></a></li>
						<li><a href="/mypage/todaygood/list"><span>최근 본 상품</span></a></li>
						<li><a href="/mypage/goods/reviewView"><span>상품리뷰</span></a></li>
						<li><a href="/mypage/inquiry/list"><span>1:1 문의</span></a></li>
					</ul></li>
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
					</ul></li>
			</ul>
		</nav>
		<main class="contents" id="contents">
			<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span> 
					<span><a href="/mypage/view">마이페이지</a></span> <span>주문정보</span> <strong>주문/배송상세</strong>
				</p>
			</div>
			<!-- 일반주문 상세  -->
			<div class="orderInfoCon">
				<div class="odSearchResult odPdModify odDetail">
					<!-- 주문번호, 상품 리스트 -->
					<div class="odResulCon">
						<div class="odResulBox">
							<!-- 주문정보 -->
							<div class="orderNb ">
								<span><em>주문일</em> <fmt:formatDate value="${orderdetail.get(0).order_time}" pattern="yyyy-MM-dd hh:mm" /></span> 
								<span><em>주문번호</em>${orderdetail.get(0).order_no }</span>
							</div>

							<!-- 1:1문의 -->
							<div class="btnOdTop">
								<a href="#" class="btn sm fill" onclick="mypageorder.goInquiryList();return false;">1:1 문의</a>
							</div>

							<!-- 배송지 -->
							<div class="orderAdd odAddBox">
								<dl>
									<dt>받는 분</dt>
									<dd>${orderdetail.get(0).receiver }</dd>
								</dl>
								<dl>
									<dt>주소</dt>
									<dd>${orderdetail.get(0).address }</dd>
								</dl>
								<dl>
									<dt>연락처</dt>
									<dd>${orderdetail.get(0).phone1 } - ${orderdetail.get(0).phone2 } - ${orderdetail.get(0).phone3 }</dd>
								</dl>
								<dl>
								</dl>
							</div>

							<!-- 주문상품 리스트  -->
							<table class="board-list orderTable">
								<colgroup>
									<col>
									<col style="width: 80px">
									<col style="width: 114px">
									<col style="width: 90px">
									<col style="width: 146px">
								</colgroup>
								<tbody>
									<c:forEach items="${orderdetail }" var="orderdetail">
										<tr>
											<td class="tleft">
												<div class="product-info ">
													<div class="product-info-img">
														<a href="javascript:mypageorder.goGoodsInfo('GM0021073028544');">
															<img src="${orderdetail.product_img }" alt="상품이미지" onerror="errorImgShow(this, 100);">
														</a>
													</div>
													<div class="product-info-text">
														<div class="product-info-box">
															<p class="product-name">
																<a href="javascript:mypageorder.goGoodsInfo('GM0021073028544');">
																	${orderdetail.product_name }</a>
															</p>
															<div class="product-price">
																<span><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.product_price }" />원</span>
															</div>
														</div>
														<div class="product-option">
															<span> ${orderdetail.product_color } / ${orderdetail.product_size }</span>
														</div>
													</div>
												</div>
											</td>
											<td>${orderdetail.product_quantity }</td>
											<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.product_price }" />원</td>
											<td>${orderdetail.order_status }</td>
											<td class="selBox"></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--  결제 정보 -->
							<div class="mgInfoBox">
								<h3>결제 정보</h3>
								<table class="tbTotalList">
									<caption>결제 정보</caption>
									<colgroup>
										<col style="width: 20%">
										<col style="width:">
										<col style="width:">
									</colgroup>
									<tbody>
										<tr>
											<th>상품주문금액</th>
											<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).order_price }" />원</td>
										</tr>
										<tr class="selLineBoxBt">
											<th>배송비</th>
											<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).delivery_fee }" />원</td>
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
											<th>사용 포인트</th>
											<td colspan="2">0원</td>
										</tr>
									</tbody>
									<tfoot>
										<tr class="selLineBoxBt">
											<th>총 결제금액</th>
											<%-- <td>
												<span class="selTxtMgL">${orderdetail.get(0).order_means }</span> 
												<span class="selTxtMgL">결제한 은행</span> 
												<span class="selTxtMgL">결제한 계좌</span>
											</td> --%>
											<td><strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).order_price + orderdetail.get(0).delivery_fee }" /></strong> 원</td>
										</tr>
									</tfoot>
								</table>
							</div>

							<!-- 주문취소 -->
							<c:forEach items="${orderdetail }" var="orderdetail" varStatus="status">
								<c:if test="${orderdetail.order_status == '주문취소'}">
									<c:if test='${status.index == 1 }'>
										<div class="mgInfoBox">
											<h3>취소 정보</h3>
											<table class="tbTotalList">
												<caption>취소 정보</caption>
												<colgroup>
													<col style="width: 20%">
													<col style="width:">
													<col style="width:">
												</colgroup>
												<tbody>
													<tr>
														<th>상품주문금액</th>
														<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.refund_price}" />원</td>
													</tr>
													<tr>
														<th>주문할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>쿠폰할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>포인트 환급</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>배송비</th>
														<td colspan="2">0원</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<th>환불 금액</th>
														<%-- <td><span class="selTxtMgL">${orderdetail.refund_means }</span>
															<span class="selTxtMgL">${orderdetail.refund_bank }</span>
															<span class="selTxtMgL">${orderdetail.refund_account }</span>
														</td> --%>
														<td><strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.refund_price}" /></strong> 원</td>

													</tr>
													<tr class="selBg">
														<th>진행단계</th>
														<td colspan="2">취소 완료 (<fmt:formatDate value="${orderdetail.cancel_date}" pattern="yyyy-MM-dd hh:mm" />)
														</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</c:if>
								</c:if>
							</c:forEach>

							<!-- 반품정보 -->
							<c:forEach items="${orderdetail }" var="orderdetail" varStatus="status">
								<c:if test="${orderdetail.order_status == '반품'}">
									<c:if test='${status.index == 1 }'>
										<div class="mgInfoBox">
											<h3>반품 정보</h3>
											<table class="tbTotalList">
												<caption>반품 정보</caption>
												<colgroup>
													<col style="width: 20%">
													<col style="width:">
													<col style="width:">
												</colgroup>
												<tbody>
													<tr>
														<th>상품주문금액</th>
														<td colspan="2"><fmt:formatNumber type="number" maxFractionDigits="3" value="" />원</td>
													</tr>
													<tr>
														<th>주문할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>쿠폰할인</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>포인트 환급</th>
														<td colspan="2">0원</td>
													</tr>
													<tr>
														<th>배송비</th>
														<td colspan="2">0원</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<th>반품 금액</th>
														<td><span class="selTxtMgL">${orderdetail.refund_means }</span>
															<span class="selTxtMgL">${orderdetail.refund_bank }</span>
															<span class="selTxtMgL">${orderdetail.refund_account }</span>
														</td>
														<td><strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.refund_price}" /></strong> 원</td>

													</tr>
													<tr class="selBg">
														<th>진행단계</th>
														<td colspan="2">반품 완료 (<fmt:formatDate value="${orderdetail.cancel_date}" pattern="yyyy-MM-dd hh:mm" />)
														</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</c:if>
								</c:if>
							</c:forEach>
							<!-- 확인버튼 -->
							<div class="btnWrapBox">
								<a href="/test/getOrderList.do" class="btn fill">확인</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
<%@ include file="/footer.jsp" %>