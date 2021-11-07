<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
	<div class="contain my lnblist-Wrap" id="contain">
    <div class="container">

        <h2 class="title01">회원등급혜택</h2>
<%@ include file="mypageMenu.jsp" %>
<main class="contents ratingBenefit-wrap" id="contents">
			<div class="location-contents">
				<p class="location">
					<span>Home</span><span>마이페이지</span><span>혜택정보</span><strong title="현재 위치">회원혜택안내</strong>
				</p>
			</div>

			<h3 class="title04">MLB 등급 혜택 안내</h3>
	            
            <!-- MLB 등급 혜택 안내 S -->
            <div class="membership-level-list">
                <table>
                    <caption>회원등급혜택</caption>
                    <colgroup>
                        <col style="width:170px;">
                        <col style="width:170px;">
                        <col style="width:170px;">
                        <col style="width:170px;">
                        <col style="width:170px;">
                        <col style="width:170px;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">등급</th>
                            <th scope="col">
                                <div>
                                    <img src="https://static.mlb-korea.com/pc/static/images/my/bg_friends.png" alt="FRIENDS">
                                    <strong class="lv">FRIENDS</strong>
                                </div>
                            </th>
                            <th scope="col">
                                <div>
                                    <img src="https://static.mlb-korea.com/pc/static/images/my/bg_family.png" alt="FAMILY">
                                    <strong class="lv">FAMILY</strong>
                                </div>
                            </th>
                            <th scope="col">
                                <div>
                                    <img src="https://static.mlb-korea.com/pc/static/images/my/bg_silver.png" alt="SILVER">
                                    <strong class="lv">SILVER</strong>
                                </div>
                            </th>
                            <th scope="col">
                                <div>
                                    <img src="https://static.mlb-korea.com/pc/static/images/my/bg_gold.png" alt="GOLD VIP">
                                    <strong class="lv">GOLD VIP</strong>
                                </div>
                            </th>
                            <th scope="col">
                                <div>
                                    <img src="https://static.mlb-korea.com/pc/static/images/my/bg_platinum.png" alt="PLATINUM VVIP">
                                    <strong class="lv">PLATINUM VVIP</strong>
                                </div>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>등급조건</th>
                            <td>
                                <div>
                                    <p>신규회원<br>~ 20만원 미만 구매</p>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <p>20만원 이상<br>~ 50만원 미만 구매</p>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <p>50만원 이상<br>~ 100만원 미만 구매</p>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <p>100만원 이상<br>~200만원 미만 구매<br>(구매 2회 이상)</p>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <p>200만원 이상 ~<br>(구매 2회 이상)</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>적립 마일리지</th>
                            <td>
                                <div class="CouponST">
                                    <div class="mileageDiv">
                                        <p>1%</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="CouponST">
                                    <div class="mileageDiv">
                                        <p>4%</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="CouponST">
                                    <div class="mileageDiv">
                                        <p>4%</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="CouponST">
                                    <div class="mileageDiv">
                                        <p>5%</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="CouponST">
                                    <div class="mileageDiv">
                                        <p>6%</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <ul class="text-list02">
                <li>등급 산정은 최근 1년 이내 F&F 통합 멤버십 기준 브랜드 구매 금액 합산 기준 입니다.</li>
                <li>등급 승급에 의한 혜택은 주문 건에 대한 구매 확정 후 익일에 등급 산정하여 반영됩니다.</li>
            </ul>
            <!--// MLB 등급 혜택 안내 E -->
            
            <h3 class="title04">회원 혜택 안내</h3>
            
            <!-- 회원 혜택 안내 S -->
            <div class="common-benefit-list">
                <table>
                    <caption>회원 혜택 안내</caption>
                    <colgroup>
                        <col style="width:170px;">
                        <col style="width:340px;">
                        <col style="width:170px;">
                        <col style="width:340px;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">신규가입 혜택</th>
                            <td>
                                <div class="CouponST">
                                    <div class="mileageDiv">
                                        <p>10,000원</p>
                                    </div>
                                    <p>F&amp;F 통합 마일리지</p>
                                </div>
                            </td>
                            <th rowspan="2" scope="row">마일리지</th>
                            <td rowspan="2">
                                <div class="CouponST-box">
                                    <div class="CouponST">
                                        <img src="https://static.mlb-korea.com/pc/static/images/my/ratingBenefit-point.png" alt="포토리뷰 작성 1,000원">
                                        <p>포토리뷰 작성 1,000원</p>
                                    </div>
                                    <div class="CouponST">
                                        <img src="https://static.mlb-korea.com/pc/static/images/my/ratingBenefit-point.png" alt="텍스트 리뷰 작성 500원">
                                        <p>텍스트 리뷰 작성 500원</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>첫 구매 쿠폰</th>
                            <td>
                                <div class="CouponST">
                                    <div class="cartDiv">
                                        <p>15% 할인</p>
                                    </div>
                                    <p>첫 구매 후 <br>온라인전용 1장</p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--// 회원 혜택 안내 E -->
            
            <div class="rating-guide-desc">
                <div class="title-list">
                    <div class="title">등급 산정 및 <br>마일리지 적립 안내</div>
                    <ul class="text-list02">
                        <li>등급 산정은 최근 1년 이내 F&amp;F 통합 멤버십 기준 브랜드 구매 금액 합산 기준입니다. </li>
                        <li>등급 승급에 의한 혜택은 주문 건에 대한 구매 확정 후 익일에 등급 산정하여 반영됩니다.</li>
                        <li class="strong">SALE / OUTLET 상품 구매 시 마일리지 사용과 적립이 제외됩니다. </li>
                    </ul>
                </div>

                <div class="title-list">
                    <div class="title">마일리지 사용 안내</div>
                    <ul class="text-list02">
                    	<li>포토리뷰, 텍스트 리뷰 작성 마일리지는 구매확정 후 90일 이내 작성하신 경우에만 적립 가능합니다.</li>
                        <li>온라인 1천원 이상 적립 시 1천원 단위로 사용 가능합니다. (오프라인 1만원 이상 적립 시 사용 가능)</li>
                        <li class="strong">멤버십 마일리지의 사용은 할인 제품 구매 시 적용 제외됩니다.</li>
                        <li>결제금액 Payback 마일리지는 구매확정 이후 사용 가능합니다.</li>
                        <li>멤버십 마일리지는 주문 건 별 최종 구매 금액의 50%까지 사용 가능합니다. </li>
                        <li>멤버십 마일리지는 최종 구매일로부터 2년 경과 후 마일리지의 소멸 안내 후 소멸되어, 사용 불가합니다.</li>
                    </ul>
                </div>

                <div class="title-list">
                    <div class="title">포인트 사용 안내</div>
                    <ul class="text-list02">
                        <li>포인트의 경우 온/오프라인 쇼핑몰에서 사용 가능합니다.</li>
                        <li>적립된 포인트는 2년간 유효하며, 2년이 경과된 포인트는 익월 1일에 자동 소멸됩니다.</li>
                    </ul>
                </div>
            </div>
			<!--// 회원 혜택 안내 E -->
		</main>
    </div>
</div>
<!--// 컨텐츠 끝 -->
<%@ include file="footer.jsp" %>
</body>
</html>