<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../../view/mlb/adminHeader.jsp"%>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>

<form id="srchForm" action="/mypage/inquiry/list" method="post">
	<input type="hidden" name="srchMtmInqSn" value="" /> 
	<input type="hidden" name="pageNo" id="pageNo" value="" />
	<!-- 컨텐츠 시작 -->
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">
			<%@ include file="../../../view/mlb/adminMenu.jsp"%>
			<main class="contents oto_inquiryList-wrap" id="contents">
				<h2 class="title01">공지사항</h2>
				<div class="location-contents">
				<div class="tbst-div">
					<div class="mid fl">
						<span>전체</span> (<span class="text-color01"><em class="num" id="inquiryCnt">${noticeCnt }</em></span>건)
					</div>
					<div class="mid fr">
						<a href="#" class="btn fill sm fdlr30 btn-style07 right" onClick="writeNotice();"><span>공지사항 등록</span></a>
					</div>
				</div>
				<div id="includeInquiryList">
					<div class="board-list">
						<!-- 2018-05-24 -->
						<table>
							<caption>공지 번호, 제목, 작성일</caption>
							<colgroup>
								<col style="width: 100px;">
								<col style="width: 100px;">
								<col>
								<col style="width: 100px;">
								<col style="width: 100px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y"></th>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">작성일</th>
									<th scope="col"></th>
								</tr>
										<c:forEach items="${noticeList }" var="notice">
											<tr>
												<td><input type="checkbox" /></td>
												<td scope="col">${notice.notice_no }</td>
												<td scope="col"><a href="/test/adminNoticeContent.mdo?noticePm=${noticeCri.page }&notice_no=${notice.notice_no}" >${notice.notice_title }</a></td>
												<td scope="col">${notice.notice_time }</td>
												<td scope="col"></td>
											</tr>
										</c:forEach>
							</thead>
						</table>
						<!-- 페이지 -->
							<div style="display: block; text-align: center; margin-top:12px;">
								<c:if test="${noticePm.startPage != 1 }">
									<a href="/test/getAdminLoginCheck.mdo?noticePageNum=${noticePm.startPage - 1 }&admin_id=${admin_id}&admin_password">&lt;</a>
								</c:if>
								<c:forEach begin="${noticePm.startPage }"
									end="${noticePm.endPage }" var="p">
									<c:choose>
										<c:when test="${p == noticeCri.page }">
											<b>${p } </b>
										</c:when>
										<c:when test="${p != noticeCri.page }">
											<a href="/test/getAdminLoginCheck.mdo?noticePageNum=${p }&admin_id=${admin_id}&admin_password=${admin_pw}">${p } </a>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${noticePm.endPage != noticePm.tempEndPage}">
									<a href="/test/getAdminLoginCheck.mdo?noticePageNum=${noticePm.endPage+1 }&admin_id=${admin_id}&admin_password">&gt;</a>
								</c:if>
							</div>

					</div>
				</div>
				</div>
				<br><br><br>
				<h2 class="title01">약관사항</h2>
				<div class="location-contents">
				<div class="tbst-div">
					<div class="mid fl">
						<span>전체</span> (<span class="text-color01"><em class="num"
							id="inquiryCnt">${termsCnt }</em></span>건)
					</div>
					<div class="mid fr">
						<input type="button" class="btn fill sm fdlr30 btn-style07 right"
							onclick="toTermsWrite();" value="약관 등록">
					</div>
				</div>
				<div id="includeInquiryList">
					<div class="board-list">
						<table>
							<caption>공지 번호, 제목, 작성일</caption>
							<colgroup>
								<col style="width: 100px;">
								<col style="width: 100px;">
								<col>
								<col style="width: 100px;">
								<col style="width: 100px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y"></th>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">작성일</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
								
								
								<c:forEach items="${termsList }" var="terms">
											<tr>
												<td><input type="checkbox" /></td>
												<td scope="col">${terms.terms_no }</td>
												<td scope="col"><a href="/test/adminTermsContent.mdo?termsPm=${termsCri.page }&terms_no=${terms.terms_no}" >${terms.terms_title }</a></td>
												<td scope="col">${terms.terms_registration_date }</td>
												<td scope="col"></td>
											</tr>
										</c:forEach>

								
								</tr>
							</tbody>
						</table>
						<!-- 페이지 -->
							<div style="display: block; text-align: center; margin-top:12px;">
								<c:if test="${termsPm.startPage != 1 }">
									<a href="/test/getAdminLoginCheck.mdo?termsPageNum=${termsPm.startPage - 1 }&admin_id=${admin_id}&admin_password">&lt;</a>
								</c:if>
								<c:forEach begin="${termsPm.startPage }"
									end="${termsPm.endPage }" var="p">
									<c:choose>
										<c:when test="${p == termsCri.page }">
											<b>${p } </b>
										</c:when>
										<c:when test="${p != termsCri.page }">
											<a href="/test/getAdminLoginCheck.mdo?termsPageNum=${p }&admin_id=${admin_id}&admin_password=${admin_pw}">${p } </a>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${termsPm.endPage != termsPm.tempEndPage}">
									<a href="/test/getAdminLoginCheck.mdo?termsPageNum=${termsPm.endPage+1 }&admin_id=${admin_id}&admin_password">&gt;</a>
								</c:if>
							</div>
					</div>
				</div>
				</div>
			</main>
		</div>
	</div>
</form>
</body>


<script>
	function writeNotice(){
		location.href="/test/writeNotice.mdo"
	}
	
	function toTermsWrite(){
		location.href="/test/adminTermsWrite.mdo"
	}
</script>

</html>