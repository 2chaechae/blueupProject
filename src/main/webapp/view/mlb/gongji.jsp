<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
	<head>
  <link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
   <script type="text/javascript" src="/javascript/message/helpdesk_ko.js?v=prod-version-858_20211102145956"></script>
 <input type="hidden" id="confirmBtn" />
  </head>
 <div id="pageTop"></div>
<form id ="gForm" action ="/helpdesk/notice/list" method="get">
	<input type ="hidden" id ="pageNo" name="pageNo" value ="" />
	<input type ="hidden" id ="searchNoticeCd" name="searchNoticeCd" value ="" />

	<div class="contain cs" id="contain">
		<div class="container">
			<h2 class="title01">공지사항</h2>

			<main class="contents noticeList-wrap" id="contents">
				<div class="location-contents">
					<p class="location">
						<span>Home</span>
						<span>고객센터</span>
						<strong title="현재 위치">공지사항</strong>
					</p>
				</div>

				<!-- tab S -->
				<ul class="tab-type02 d_tab">
					<li><a id="All" href="#" onclick="document.location='/helpdesk/notice/list?searchNoticeCd=' ">전체</a></li>
	 				<li>
						<a  href="#none" id ="NTCN"  onclick="document.location='/helpdesk/notice/list?searchNoticeCd=NTCN'"><span>알림/소식</span></a>
       				</li>
	       			<li>
						<a  href="#none" id ="EVT_PRIZE"  onclick="document.location='/helpdesk/notice/list?searchNoticeCd=EVT_PRIZE'"><span>이벤트 당첨</span></a>
       				</li>
	       			</ul>
				<!--//tab E -->

				<!-- 검색 S -->
				<div class="search-wrap01 right">
					<div class="search-input">
						<input type="search" title="검색" placeholder="궁금하신 내용을 입력해 주세요." id="searchNotice" name="searchNotice" value=""/>
						<button type="button" onclick="searchNoticeList();">검색</button>
					</div>
				</div>
				<!--//검색 E -->

				<!-- table S -->
				<div class="board-list">
					<div class="boardCount">
						<span>전체</span> (<span class="text-color01"><em class="num" id="notiListCnt"></em></span>건)
					</div>
					<table>
						<caption>공지사항 번호, 구분, 제목, 조회수, 등록일 정보표.</caption>
						<colgroup>
							<col style="width:100px;">
							<col style="width:120px;">
							<col>
							<col style="width:100px;">
							<col style="width:100px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">구분</th>
								<th scope="col">제목</th>
								<th scope="col">조회수</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
											<td class="num"><span>8</span></td>
											<td class="notiTpCd"><span>
												알림/소식</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/186?searchNoticeCd=&searchNotice=">코로나19로 인한 일부지역 배송 제한 안내</a></span>
											</td>
											<td class="inqirenum">
												921</td>
											<td class="date">2021-09-07</td>
										</tr>
									<tr>
											<td class="num"><span>7</span></td>
											<td class="notiTpCd"><span>
												이벤트 당첨</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/172?searchNoticeCd=&searchNotice=">MLB &#039;블랙데이 프로모션&#039; 당첨자 공지</a></span>
											</td>
											<td class="inqirenum">
												2855</td>
											<td class="date">2021-05-03</td>
										</tr>
									<tr>
											<td class="num"><span>6</span></td>
											<td class="notiTpCd"><span>
												알림/소식</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/169?searchNoticeCd=&searchNotice=">온라인몰 물류 이전, 배송 및 반품 입고 처리 공지</a></span>
											</td>
											<td class="inqirenum">
												1813</td>
											<td class="date">2021-04-29</td>
										</tr>
									<tr>
											<td class="num"><span>5</span></td>
											<td class="notiTpCd"><span>
												알림/소식</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/151?searchNoticeCd=&searchNotice=">회사분할에 따른 개인정보 이전 안내</a></span>
											</td>
											<td class="inqirenum">
												11835</td>
											<td class="date">2021-03-17</td>
										</tr>
									<tr>
											<td class="num"><span>4</span></td>
											<td class="notiTpCd"><span>
												이벤트 당첨</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/150?searchNoticeCd=&searchNotice=">MLBKIDS  &#039;댄스 배틀&#039; 이벤트 당첨자 공지</a></span>
											</td>
											<td class="inqirenum">
												2163</td>
											<td class="date">2021-03-08</td>
										</tr>
									<tr>
											<td class="num"><span>3</span></td>
											<td class="notiTpCd"><span>
												알림/소식</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/148?searchNoticeCd=&searchNotice=">F&amp;F 통합 멤버십 안내</a></span>
											</td>
											<td class="inqirenum">
												8307</td>
											<td class="date">2021-03-02</td>
										</tr>
									<tr>
											<td class="num"><span>2</span></td>
											<td class="notiTpCd"><span>
												알림/소식</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/143?searchNoticeCd=&searchNotice=">MLB / MLB KIDS 여의도 더현대서울점 GRAND OPEN</a></span>
											</td>
											<td class="inqirenum">
												3159</td>
											<td class="date">2021-02-24</td>
										</tr>
									<tr>
											<td class="num"><span>1</span></td>
											<td class="notiTpCd"><span>
												알림/소식</td></span>
											<td class="tleft">
												<span><a href="/helpdesk/notice/view/99?searchNoticeCd=&searchNotice=">대리점 개설 문의  / 위탁관리자(매니져) 지원 문의</a></span>
											</td>
											<td class="inqirenum">
												6666</td>
											<td class="date">2020-08-12</td>
										</tr>
									</tbody>
					</table>
					<div class="page">
							<span>
							<span class="on"><strong title="현재 페이지">1</strong></span>
									</span>
							</div>
					</div>
				<!--//table E -->

			</main>

		</div>
	</div>
	</form>
<%@ include file="footer.jsp" %>
</body>
</html>