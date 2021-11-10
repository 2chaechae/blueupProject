<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="adminHeader.jsp" %>	
<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>

	<form id ="srchForm" action ="/mypage/inquiry/list" method="post" >
		<input type ="hidden" name ="srchMtmInqSn" value ="" />
		<input type="hidden" name="pageNo"  id="pageNo" value=""/>

		<!-- 컨텐츠 시작 -->
		<div class="contain my lnblist-Wrap" id="contain">
			<div class="container">

				<h2 class="title01">공지사항</h2>
				
<%@ include file="adminMenu.jsp" %>	
<main class="contents oto_inquiryList-wrap" id="contents">

					<div class="location-contents">
						
					</div>

					
					<div class="tbst-div">
						<div class="mid fl">
							<span>전체</span> (<span class="text-color01"><em class="num" id="inquiryCnt"></em></span>건)
						</div>
						<div class="mid fr">
							<a href="#" class="btn fill sm fdlr30 btn-style07 right" onclick="javascript:goInquiryNew()"><span>공지사항 등록</span></a>
						</div>
					</div>
					<div id="includeInquiryList">
					<div class="board-list">
						<!-- 2018-05-24 -->
							<table>
								<caption>공지 번호, 제목, 작성일</caption>
								<colgroup>
									<col style="width:100px;">
									<col style="width:100px;">
									<col>
									<col style="width:100px;">
									<col style="width:100px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">
											<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" >
										</th>
										<th scope="col">번호</th>
										<th scope="col">제목</th>
										<th scope="col">작성일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="4" class="no-result">공지내역이 없습니다.</td>
									</tr>
									</tbody>
							</table>
							
						</div>
					</div>
					
					<h2 class="title01">약관사항</h2>
					
					<div class="tbst-div">
						<div class="mid fl">
							<span>전체</span> (<span class="text-color01"><em class="num" id="inquiryCnt"></em></span>건)
						</div>
						<div class="mid fr">
							<a href="#" class="btn fill sm fdlr30 btn-style07 right" onclick="javascript:goInquiryNew()"><span>약관 등록</span></a>
						</div>
					</div>
					<div id="includeInquiryList">
					<div class="board-list">
						
							<table>
								<caption>공지 번호, 제목, 작성일</caption>
								<colgroup>
									<col style="width:100px;">
									<col style="width:100px;">
									<col>
									<col style="width:100px;">
									<col style="width:100px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">
											<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" >
										</th>
										<th scope="col">번호</th>
										<th scope="col">제목</th>
										<th scope="col">작성일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="4" class="no-result">약관내용이 없습니다.</td>
									</tr>
									</tbody>
							</table>
							
						</div>
					</div>
					
				</main>
			</div>
		</div>
	</form>
</body>
</html>