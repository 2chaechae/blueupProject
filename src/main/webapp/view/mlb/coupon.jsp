<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/member/login.js"></script>
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

<input type="hidden" name="_csrf" value="3c6cc40e-e420-4266-9985-626c86d3b96d"/>
<input type="hidden" id="srchMonth" name="srchMonth" value="">
<input type="hidden" name="pageNo"  id="pageNo" value=""/>

<div class="contain my lnblist-Wrap" id="contain">
    <div class="container">

        <h2 class="title01">쿠폰함</h2>
<%@ include file="mypageManu.jsp" %>

<main class="contents couponList-wrap" id="contents">

            <div class="location-contents">
                <p class="location">
                    <span>Home</span>
                    <span>마이페이지</span>
                    <span>혜택정보</span>
                    <strong title="현재 위치">쿠폰함</strong>
                </p>
            </div>

            <div class="d_tab02">

                <!-- tab S -->
                <ul class="tab-type01 tab-blockList blockList02">
                    <li class="d_tab02_select on"><a href="javascript:;" data-ga-category="PC_MLB_쿠폰함" data-ga-action="Tab" data-ga-label="사용 가능한 쿠폰">사용 가능한 쿠폰</a></li>
                    <li class="d_tab02_select"><a href="javascript:;" data-ga-category="PC_MLB_쿠폰함" data-ga-action="Tab" data-ga-label="사용완료">사용완료</a></li>
                </ul>
                <!--// tab E -->

                <!-- 사용 가능한 쿠폰 S -->
                <div class="d_tab02_cont" style="display:block;">

                    <!-- table info S -->
                    <div class="tbst-div">
                        <div class="mid fl">
                            <span>전체</span> (<span class="text-color01" id="couponCnt"><!-- 100 --></span>건)
                        </div>
                        <div class="mid fr">
                            <a href="#layerPopupRegCoupon" class="btn fill sm d_layer_open" id="couponRegPop"><span>쿠폰등록</span></a>
                        </div>
                    </div>
                    <!-- //table info E -->
<div id="includeCouponList"><!-- 사용 가능한 쿠폰 -->
<div class="board-list">
<table>
        <caption>사용 가능한 쿠폰</caption>
        <colgroup>
            <col style="width:100px;">
            <col style="width:100px;">
            <col>
            <col style="width:100px;">
            <col style="width:190px;">
            <col style="width:147px;">
        </colgroup>
        <thead>
            <tr>
                <th scope="col">쿠폰종류</th>
                <th scope="col">적용조건</th>
                <th scope="col">쿠폰명</th>
                <th scope="col">할인</th>
                <th scope="col">사용기간</th>
                <th scope="col">쿠폰적용상품</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                    <td colspan="6" class="no-result">조회된 쿠폰 내역이 없습니다.</td>
                </tr>
            </tbody>
    </table>
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
                            <a href="#" class="btn sm d_radio_select on" onclick="setMonth('3month');"><span>3개월</span></a>
                            <a href="#" class="btn sm d_radio_select" onclick="setMonth('6month');"><span>6개월</span></a>
                            <input type="text" class="calendar" id="dateStart" value="" readonly><input type="text" class="calendar" id="dateEnd" value="" readonly>
                            <a href="#" class="btn sm" onclick="searchCouponHistList();return false;">검색</a>
                            <p class="calendar-info-txt">시작일로부터 최대 1년 단위로 조회가 가능합니다.</p><!-- 2018-08-13 -->
                        </dd>
                    </dl>

                    <!-- table info S -->
                    <div class="tbst-div">
                        <div class="mid fl">
                            <span>전체</span> (<span class="text-color01" id="couponHistCnt"><!-- 100 --></span>건)
                        </div>
                    </div>
                    <!-- //table info E -->

                    <div id="includeCouponHistList"><!--
                    - 사용완료/기간만료
                    --></div>
                    </div>
                <!--// 사용완료 / 기간만료 E -->

            </div>

            <!-- 쿠폰 발급/사용안내 영역S -->
            <div class="contTxtBox">
                <strong>쿠폰 발급 / 사용</strong>
                <ul class="text-list01">
                    <li>일부 상품은 쿠폰 적용에서 제외될수 있습니다.</li>
                    <li>회원 발급 쿠폰의 내용은 <a href="/mypage/benefit/membershipRateInfo" class="text-color01">회원혜택안내</a>에서 확인하세요.</li>
                    <li>중복불가 쿠폰인 경우 다른 쿠폰과 함께 적용할 수 없습니다.</li>
                    <li>장바구니 쿠폰을 적용한 경우 구매한 상품들의 가격에 비례하여 분할 적용되며, 부분취소/반품 시 분할 할인된 금액을 차감하여 환불됩니다.</li>
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

<!-- layerpopup - 쿠폰 등록 -->
<article id="layerPopupRegCoupon" class="layer-popup couponRegister-pop">
    <section class="layer-popup-cont" tabindex="0">
        <h2>쿠폰등록</h2>
        <div class="layer-cont scroll">

            <div class="couponRegister-popWrap">

                <!-- 검색S -->
                <div class="mileageFindSrch">
                    <input type="text" id="couponNumber" placeholder="쿠폰번호 입력해주세요." class="input-style02">
                    <a href="javascript:;" class="btn sm" onclick="couponRegister();return false;" data-ga-category="PC_MLB_쿠폰함" data-ga-action="쿠폰등록완료">쿠폰등록</a>
                </div>
                <!-- //검색E -->

                <ul class="text-list02">
                    <li>등록된 쿠폰은 사용 가능한 쿠폰 목록에서 확인할 수 있습니다.</li>
                </ul>

            </div>
        </div>
        <div class="layer-popup-close">
            <button type="button" class="d_layer_close">닫기</button>
        </div>
    </section>
</article>

<div id="layerPopupCouponProductDiv">
</div>
<!-- //layerpopup - 쿠폰 적용 가능 상품 -->
<!--// 컨텐츠 끝 -->
	
<%@ include file="footer.jsp" %>
</body>
</html>