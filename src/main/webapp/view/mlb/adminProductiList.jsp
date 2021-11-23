<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="adminHeader.jsp"%>
<!-- 컨텐츠 시작 -->
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>

<form id="srchForm" action="/mypage/inquiry/list" method="post">
	<input type="hidden" name="srchMtmInqSn" value="" /> <input
		type="hidden" name="pageNo" id="pageNo" value="" />

	<!-- 컨텐츠 시작 -->
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">
			<h2 class="title01">상품 등록</h2>
			
			<%@ include file="adminMenu.jsp"%>
			
			<main class="contents oto_inquiryList-wrap" id="contents">
				<div class="location-contents"></div>
				<div class="tbst-div">
					<div class="mid fr">
						<a href="#" class="btn fill sm fdlr30 btn-style07 right" onclick="javascript:goInquiryNew()">
						<span>상품 등록</span></a>
					</div>
				</div>
				<div id="includeInquiryList">
					<div class="board-list">
						<table>
							<!-- 표 상단 메뉴 -->
							<thead>
								<tr>
									<th scope="col">상품번호</th>
									<th scope="col">상품명</th>
									<th scope="col">카테고리</th>
									<th scope="col">세부카테고리</th>
									<th scope="col">가격</th>
									<th scope="col">진열여부</th>
									<th scope="col">등록시간</th>
								</tr>
							</thead>
							<!-- 상품 목록 -->
							<tbody>
								<tr>
									<td scope="col">**</td>
									<td scope="col">**</td>
									<td scope="col">**</td>
									<td scope="col">**</td>
									<td scope="col">**</td>
									<td scope="col">**</td>
									<td scope="col">**</td>
								</tr>
							</tbody>
							<!--  
							상품 목록 없을 경우
								<tr>
									<td colspan="10" class="no-result">상품내역이 없습니다.</td>
								</tr>
							-->
						</table>
					</div>
				</div>
			</main>
		</div>
	</div>
</form>
</body>
</html>