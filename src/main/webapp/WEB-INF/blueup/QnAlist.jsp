<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>

	<form id ="srchForm" action ="/mypage/inquiry/list" method="post" >
		<input type ="hidden" name ="srchMtmInqSn" value ="" />
		<input type="hidden" name="_csrf" value="e10c8807-8415-4905-b1ec-a9230cf6bc3f"/>
		<input type="hidden" name="pageNo"  id="pageNo" value=""/>

		<!-- 컨텐츠 시작 -->
		<div class="contain my lnblist-Wrap" id="contain">
			<div class="container">

				<h2 class="title01">1:1 문의</h2>
<%@ include file="mypageMenu.jsp"%>	
<main class="contents oto_inquiryList-wrap" id="contents">

					<div class="location-contents">
						<p class="location">
							<span>Home</span>
							<span>마이페이지</span>
							<span>활동정보</span>
							<strong title="현재 위치">1:1 문의</strong>
						</p>
					</div>

					<p class="txt13-666">고객상담에 대한 내역과 답변을 확인하실 수 있습니다.<br/><em>고객센터 080-807-0012</em> (평일 AM 9시 ~ PM 6시 : 토/일 공휴일 휴무)</p>

					<div class="tbst-div">
						<div class="mid fl">
							<span>전체</span> (<span class="text-color01"><em class="num" id="inquiryCnt">${cnt }</em></span>건)
						</div>
						<div class="mid fr">
							<input type="button" class="btn fill sm fdlr30 btn-style07 right" id="writeBtn" value="1:1 문의 등록" />
						</div>
					</div>
					<div id="includeInquiryList">
					<div class="board-list">
						<!-- 2018-05-24 -->
							<table>
								<caption>1:1 문의 번호, 문의유형, 제목, 작성일, 답변여부</caption>
								<colgroup>
									<col style="width:100px;">
									<col style="width:100px;">
									<col>
									<col style="width:100px;">
									<col style="width:100px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">문의유형</th>
										<th scope="col">제목</th>
										<th scope="col">작성일</th>
										<th scope="col">답변여부</th>
									</tr>
								</thead>
								<tbody>
								<c:choose>
									<c:when test="${list ne null }">
									<c:forEach items="${list }" var="item">
									<c:set var="i" value="${i+1 }" />
										<tr>
										<td>${i }</td>
										<td>${item.qna_type }</td>
										<td><a href="/test/getQnAContent.do?qna_no=${item.qna_no}&user_no=${user_no}">${item.qna_title }</td>
										<td>${item.qna_time }</td>
										<td>${item.reply }</td>
									</tr>
									</c:forEach>
									</c:when>
									
									<%-- <c:otherwise>
										<tr>
										<td colspan="5" class="no-result">상담내역이 없습니다.</td>
									</tr>
									</c:otherwise> --%>
								</c:choose>
									
									</tbody>
							</table>
							<!-- //2018-05-24 -->
						</div>
						<!-- 페이지 -->
						<div style="display: block; text-align: center;">
							<c:if test="${pageMaker.startPage != 1 }">
								<a
									href="/test/qnaList.do?pageNum=${pageMaker.startPage - 1 }&user_no=${user_no}">&lt;</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == cri.page }">
										<b>${p }</b>
									</c:when>
									<c:when test="${p != cri.page }">
										<a
											href="/test/qnaList.do?pageNum=${p }&user_no=${user_no}">${p }</a>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${pageMaker.endPage != pageMaker.tempEndPage}">
								<a
									href="/test/qnaList.do?pageNum=${pageMaker.endPage+1 }&user_no=${user_no}">&gt;</a>
							</c:if>
						</div>
					</div>
				</main>
			</div>
		</div>
	</form>
	
<%@ include file="footer.jsp" %>
</body>

<script>
/* 로컬 스토리지에서 유저 번호, 빼오기  */
$(document).ready(function(){
	   var user_no = localStorage.getItem("user_no");
	   var user_name = localStorage.getItem("user_name");
	   var user_id = localStorage.getItem("user_id");
	});
	
$(document).ready(function(){
	//수정완료 버튼 클릭 시
	$('#writeBtn').on('click',function(){
		location.href="/test/qnaWrite.do?pageNum="+${pageNum}+"&user_no="+user_no;
	});
});
</script>
</html>