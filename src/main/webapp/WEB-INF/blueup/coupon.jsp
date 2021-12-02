<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<!-- 컨텐츠 시작 -->
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/member/login.js"></script>
<script type="text/javascript"
	src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>
<script>


	$(document).ready(function(){
		
		$('#couponSearchBtn').on('click',function(){
			var dateStart = $('#dateStart').val();
			var dateEnd = $('#dateEnd').val();
			
			$.ajax({
					type : "GET",
					url : "/test/unavailableCoupon.do",
					data : {
						start : dateStart,
						end : dateEnd,
						"user_no": ${user_no}
					},
					success : function(result) {
						$('#tbodyUsedCoupon').empty();
						result.forEach(function(item){
							str = '<tr>'
							str += '<td>'+item.coupon_type+'</td>'
							str += '<td>'+item.coupon_name+'</td>'
							str += '<td>'+item.coupon_discount+'</td>'
							str += '<td>'+item.coupon_begin+'</td>'
							str += '<td>'+item.coupon_end+'</td>'
							str += '<td>'+item.remarks+'</td>'
							str+= '</tr>'
							$('#tbodyUsedCoupon').append(str);
						})
						
					},
					error : function(request, status) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}
			});//end ajax
		});//end onClick
	});//end document.ready


		
</script>


<input type="hidden" name="_csrf"
	value="3c6cc40e-e420-4266-9985-626c86d3b96d" />
<input type="hidden" id="srchMonth" name="srchMonth" value="">
<input type="hidden" name="pageNo" id="pageNo" value="" />

<div class="contain my lnblist-Wrap" id="contain">
	<div class="container">

		<h2 class="title01">쿠폰함</h2>
		<%@ include file="mypageMenu.jsp"%>
		<main class="contents couponList-wrap" id="contents">

			<div class="location-contents">
				<p class="location">
					<span>Home</span> <span>마이페이지</span> <span>혜택정보</span> <strong
						title="현재 위치">쿠폰함</strong>
				</p>
			</div>

			<div class="d_tab02">

				<!-- tab S -->
				<ul class="tab-type01 tab-blockList blockList02">
					<li class="d_tab02_select on"><a href="javascript:;"
						data-ga-category="PC_MLB_쿠폰함" data-ga-action="Tab"
						data-ga-label="사용 가능한 쿠폰">사용 가능한 쿠폰</a></li>
					<li class="d_tab02_select"><a href="javascript:;"
						data-ga-category="PC_MLB_쿠폰함" data-ga-action="Tab"
						data-ga-label="사용완료">사용완료</a></li>
				</ul>
				<!--// tab E -->

				<!-- 사용 가능한 쿠폰 S -->
				<div class="d_tab02_cont" style="display: block;">

					<!-- table info S -->
					<div class="tbst-div">
						<div class="mid fl">
							<span>전체</span> (<span class="text-color01" id="couponCnt">
								<!-- 100 -->${count }</span>건)
						</div>

					</div>
					<!-- //table info E -->
					<div id="includeCouponList">
						<!-- 사용 가능한 쿠폰 -->
						<div class="board-list">
							<table>
								<caption>사용 가능한 쿠폰</caption>
								<colgroup>
									<col style="width: 100px;">
									<col style="width: 100px;">
									<col>
									<col style="width: 100px;">
									<col style="width: 190px;">
									<col style="width: 147px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">쿠폰종류</th>
										<th scope="col">쿠폰명</th>
										<th scope="col">할인</th>
										<th scope="col">시작기간</th>
										<th scope="col">종료기간</th>
										<th scope="col">비고</th>
									</tr>
								</thead>
								<c:choose>
									<c:when test="${list ne null}">
										<c:forEach items="${list }" var="coupon">
											<tr>
												<td scope="col">${coupon.coupon_type }</td>
												<td scope="col">${coupon.coupon_name }</td>
												<td scope="col">${coupon.coupon_discount }</td>
												<td scope="col">${coupon.coupon_begin }</td>
												<td scope="col">${coupon.coupon_end }</td>
												<td scope="col">${coupon.remarks }</td>
											</tr>
										</c:forEach>

									</c:when>

									<c:otherwise>

										<tbody>
											<tr>
												<td colspan="6" class="no-result">조회된 쿠폰 내역이 없습니다.</td>
											</tr>
										</tbody>
									</c:otherwise>
								</c:choose>
							</table>
							<!-- 페이지 -->
							<div style="display: block; text-align: center;">
								<c:if test="${pageMaker.startPage != 1 }">
									<a href="/test/coupon.do?pageNum=${pageMaker.startPage - 1 }&user_no=${user_no}">&lt;</a>
								</c:if>
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="p">
									<c:choose>
										<c:when test="${p == cri.page }">
											<b>${p } </b>
										</c:when>
										<c:when test="${p != cri.page }">
											<a href="/test/coupon.do?pageNum=${p }&user_no=${user_no}">${p } </a>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${pageMaker.endPage != pageMaker.tempEndPage}">
									<a href="/test/coupon.do?pageNum=${pageMaker.endPage+1 }&user_no=${user_no}">&gt;</a>
								</c:if>
							</div>
						</div>
						<!-- empty coupons -->
						<!-- //사용 가능한 쿠폰 -->

					</div>
				</div>
				<!--// 사용 가능한 쿠폰 E -->

				<!-- 사용완료 / 기간만료 S -->
				<div class="d_tab02_cont">
					<dl class="period-wrap period-type02">
						<!-- 기간달력 -->
						<dt>조회기간</dt>
						<dd>
							<input type="text" class="calendar" id="dateStart" value=""
								readonly> <input type="text" class="calendar"
								id="dateEnd" value="" readonly>
							<input type="button" id="couponSearchBtn" class="btn sm" value="검색" />
						</dd>
					</dl>

					<!-- table info S -->
					<div class="tbst-div">
						<div class="mid fl">
							<span>전체</span> (<span class="text-color01" id="couponHistCnt"></span>건)
						</div>
					</div>
					<!-- //table info E -->

					<div id="includeCouponHistList">
						<!--
                    - 사용완료/기간만료-->
						<div id="includeCouponList">
							<!-- 사용 가능한 쿠폰 -->
							<div class="board-list">
								<table>
									<caption>사용 가능한 쿠폰</caption>
									<colgroup>
										<col style="width: 100px;">
										<col style="width: 100px;">
										<col>
										<col style="width: 100px;">
										<col style="width: 190px;">
										<col style="width: 147px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">쿠폰종류</th>
											<th scope="col">쿠폰명</th>
											<th scope="col">할인</th>
											<th scope="col">시작기간</th>
											<th scope="col">종료기간</th>
											<th scope="col">비고</th>
										</tr>
									</thead>
									<tbody id="tbodyUsedCoupon">
										<c:forEach items="${usedCouponList }" var="coupon1">
											<tr>
												<td scope="col">${coupon1.coupon_type }</td>
												<td scope="col">${coupon1.coupon_name }</td>
												<td scope="col">${coupon1.coupon_discount }</td>
												<td scope="col">${coupon1.coupon_begin }</td>
												<td scope="col">${coupon1.coupon_end }</td>
												<td scope="col">${coupon1.remarks }</td>
											</tr>
										</c:forEach>

									</tbody>




								</table>

							</div>

						</div>
					</div>
					<!--// 사용완료 / 기간만료 E -->

				</div>

				<!-- 쿠폰 발급/사용안내 영역S -->
				<div class="contTxtBox">
					<strong>쿠폰 발급 / 사용</strong>
					<ul class="text-list01">
						<li>일부 상품은 쿠폰 적용에서 제외될수 있습니다.</li>
						<li>회원 발급 쿠폰의 내용은 <a
							href="/mypage/benefit/membershipRateInfo" class="text-color01">회원혜택안내</a>에서
							확인하세요.
						</li>
						<li>중복불가 쿠폰인 경우 다른 쿠폰과 함께 적용할 수 없습니다.</li>
						<li>장바구니 쿠폰을 적용한 경우 구매한 상품들의 가격에 비례하여 분할 적용되며, 부분취소/반품 시 분할
							할인된 금액을 차감하여 환불됩니다.</li>
						<li>오프라인 발행한 쿠폰은 쿠폰번호 등록 후 사용해 주세요.</li>
					</ul>
					<strong>쿠폰 소멸</strong>
					<ul class="text-list01">
						<li>발급 시 부여되는 쿠폰의 사용기간을 따르며, 사용기간이 경과한 쿠폰은 자동으로 소멸됩니다.</li>
					</ul>
				</div>
				<!-- //쿠폰 발급/사용안내 영역E -->
		</main>

	</div>
</div>


<!--// 컨텐츠 끝 -->

<%@ include file="footer.jsp"%>
</body>
</html>