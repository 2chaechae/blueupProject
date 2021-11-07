<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

<input type="hidden" name="_csrf" value="e10c8807-8415-4905-b1ec-a9230cf6bc3f"/>
<input type="hidden" id="srchMonth" name="srchMonth" value="">
<input type="hidden" name="pageNo"  id="pageNo" value=""/>

<div class="contain my lnblist-Wrap" id="contain">
	<div class="container">

		<h2 class="title01">포인트</h2>
		
<%@ include file="mypageManu.jsp" %>

	<main class="contents pointList-wrap" id="contents">

			<div class="location-contents">
				<p class="location">
					<span>Home</span>
					<span>마이페이지</span>
					<span>혜택정보</span>
					<strong title="현재 위치">포인트</strong>
				</p>
			</div>

			<!-- 포인트 현황S -->
			<div class="memberSTcont boxCont02">
				<ul>
					<li>
						<p>사용 가능 포인트</p>
						<strong><span class="text-color01">0</span>P</strong>
					</li>
					<li>
						<p>당월 소멸 예정 포인트</p>
						<strong><span class="text-color01">0</span>P</strong>
					</li>
				</ul>
			</div>
			<!-- //포인트 현황E -->

			<dl class="period-wrap period-type02">
				<!-- 기간달력 -->
				<dt>조회기간</dt>
				<dd>
					<a href="#" class="btn sm d_radio_select on" onclick="setMonth('3month');"><span>3개월</span></a>
					<a href="#" class="btn sm d_radio_select" onclick="setMonth('6month');"><span>6개월</span></a>
					<input type="text" class="calendar" id="dateStart" readonly><input type="text" class="calendar" id="dateEnd" readonly>
						<a href="#" class="btn sm" onclick="searchPointList();return false;">검색</a>
					<p class="calendar-info-txt">시작일로부터 최대 1년 단위로 조회가 가능합니다.</p><!-- 2018-08-13 -->
				</dd>
			</dl>

			<!-- table info S -->
			<div class="tbst-div">
				<div class="mid fl">
					<span>전체</span> (<span class="text-color01" id="pointCnt"><!-- 100 --></span>건)
				</div>
			</div>
			<!-- //table info E -->
<div id="includePointList">
<div class="board-list">
    <table>
        <caption>포인트</caption>
        <colgroup>
            <col style="width:100px;">
            <col>
            <col style="width:100px;">
            <col style="width:100px;">
            <col style="width:190px;">
        </colgroup>
        <thead>
            <tr>
                <th scope="col">일자</th>
                <th scope="col">내용</th>
                <th scope="col">적립내역</th>
                <th scope="col">사용내역</th>
                <th scope="col">유효기간</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                    <td colspan="5" class="no-result">조회된 포인트 내역이 없습니다.</td>
                </tr>
            </tbody>
    </table>
</div>
</div>

			<!-- 포인트 적립 사용안내 영역S -->
			<div class="contTxtBox">
				<strong>포인트 적립 / 사용</strong>
				<ul class="text-list01">
					<li>포인트 적립 기준은 <a href="/mypage/benefit/membershipRateInfo" class="text-color01">회원혜택안내</a>에서 확인하세요.</li>
					<li>주문 결제 시 1,000원 이상 1,000원 단위로 사용 가능 합니다.</li>
					<li>현금으로 환원되지 않는 비현금성 서비스 입니다.</li>
					<li>주문 시 구매한 상품 가격에 비례하여 분할 적용되며 부분 취소/반품 시 분할 환원 됩니다.</li>
				</ul>
				<strong>포인트 유효기간</strong>
				<ul class="text-list01">
					<li>적립 시 부여되는 포인트 별 유효기간을 따르며, 유효기간이 경과한 포인트는 자동으로 소멸됩니다.</li>
				</ul>
			</div>
			<!-- //포인트 적립 사용안내 영역E -->

		</main>

	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>