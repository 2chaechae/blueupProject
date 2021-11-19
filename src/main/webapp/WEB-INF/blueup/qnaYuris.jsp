<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>티파니앤코 (리뉴얼)</title>
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/top.js"></script>
<script src="js/cscenter.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/cscenter.css">
</head>

<script>
function write(){
	var pageNum = "<c:out value='${pageNum}' />";
	location.href="/test/qnaWriteForm.do?qna_no=0"+pageNum="+pageNum;
}
</script>
<body>
	<!--맨위로 가기 맨 아래로 가기-->
	<p>
		<img src="images/icon/scrollup.png" alt="맨위로" width="40" height="41"
			class="up_btn">
	</p>
	<p>
		<img src="images/icon/scrolldown.png" alt="맨아래로" width="40"
			height="41" class="down_btn">
	</p>

	<!--////////////상단//////////////-->
	<div id="top_wrap">
		<div id="top_wrap2">
			<header id="top">
				<!--js태그 추가자리-->
				<div id="top_bar">
					<h1>
						<a href="index.html"><img src="images/top/logo.png"
							alt="티파니앤코" width="168" height="22"></a>
					</h1>

					<nav id="top_navi">
						<ul id="mtop">
							<li><a href="brand.html" data-atitle="브랜드"
								data-btitle="Brand">Brand</a>
								<ul class="sub">
									<li><a href="brand.html">티파니 스토리</a></li>
									<li><a href="#">지속가능성</a></li>
									<li><a href="#">사이트 맵</a></li>
								</ul></li>
							<li><a href="item.html" data-atitle="제품" data-btitle="Item">Item</a>
								<ul class="sub">
									<li><a href="item.html">BEST</a></li>
									<li><a href="#">JEWERLY</a></li>
									<li><a href="#">WATCH</a></li>
									<li><a href="#">PERFUME</a></li>
									<li class="overline"><a href="#">HOME &amp; ACC</a></li>
								</ul></li>
							<li><a href="gift.html" data-atitle="선물" data-btitle="Gift">Gift</a>
								<ul class="sub">
									<li><a href="gift.html">전체</a></li>
									<li><a href="#">생일</a></li>
									<li><a href="#">기념일</a></li>
									<li><a href="#">맞춤형</a></li>
									<li><a href="#">여성</a></li>
									<li><a href="#">남성</a></li>
									<li><a href="#">홈</a></li>
								</ul></li>
							<li><a href="collection.html" data-atitle="기획전"
								data-btitle="Collection">Collection</a>
								<ul class="sub">
									<li><a href="collection.html">전체</a></li>
									<li><a href="#">티파니티</a></li>
									<li><a href="#">아틀라스 </a></li>
									<li><a href="#">티파니키</a></li>
									<li><a href="#">리턴투 티파니</a></li>
									<li><a href="#">티파니 하드웨어</a></li>
									<li><a href="#">팔로마피카소</a></li>
									<li><a href="#">엘사 페러티</a></li>
									<li><a href="#">빅토리아</a></li>
								</ul></li>
						</ul>
					</nav>
					<!--top_navi 주메뉴-->
					<div id="quick">
						<!--js태그 추가자리-->
						<ul>
							<li><a href="store.html" title="매장안내">매장안내</a></li>
							<li><a href="cscenter.html" title="고객센터">고객센터</a></li>
							<li class="top_btn1"><img src="images/top/login.png"
								alt="로그인" width="16" height="16"><br> <span>login</span>
								<ul class="btn_sub">
									<li><img src="images/top/diamond.png" alt="다이아몬드"
										width="80" height="55"></li>
									<li>티파니 온라인회원이 되어<br>특별한 혜택을 경험해보세요.
									</li>
									<li><a href="login.html">로그인</a></li>
									<li><a href="join.html">회원가입</a></li>
								</ul></li>
							<li class="top_btn2"><img src="images/top/search.png"
								alt="상단바 검색" width="16" height="16"><br> <span>검색</span>
								<ul class="btn_sub2">
									<li><img src="images/top/seartop_btn.png" alt="검색드롭다운메뉴"
										width="40" height="40"></li>
									<li><input type="text" title="검색어 입력"
										placeholder="검색어를 입력해주세요. " id="seartop_input"></li>
									<li><button type="submit" id="seartop_btn">검색</button></li>
								</ul> <!--btn_sub2--></li>
							<!--top_btn2-->
						</ul>
					</div>
					<!--top_sub 서브메뉴-->
				</div>
				<!--top_bar-->
			</header>
			<!--top 상단전체-->
			<div id="banner">
				<p>
					<img src="images/csc/cscenter.png" alt="고객센터메인배너" width="1920"
						height="480">
				</p>
				<div id="ban_con">
					<h2>고객센터</h2>
					<p>진실한 마음과 친절한 태도로 무엇이든 도와드리겠습니다.</p>
				</div>
				<!--ban_con 배너 안 내용-->
			</div>
			<!--main_ban- 메인 상단 배너 전체-->
		</div>
		<!--top_wrap2-->
	</div>
	<!--top_wrap-->

	<!--//////페이지위치///////-->
	<div id="page_wrap">
		<div id="page">
			<ul id="r_page">
				<li>Home</li>
				<li><img src="images/icon/page_arrow.png" alt="페이지화살표1"
					width="5" height="9"></li>
				<li>고객센터</li>
			</ul>
		</div>
		<!--page-->
	</div>
	<!--page wrap:페이지위치 전체-->

	<!--////////고객센터 내용////////-->
	<div id="con_wrap">
		<div id="cs_wrap">
			<!--/////내용왼쪽/////-->
			<div id="con_left">

				<!--////고객센터 리스트////-->
				<div id="list_wrap">
					<ul id="list1">
						<li><a href="#">공지사항</a></li>
						<li><a href="#">자주 찾는 질문</a></li>
					</ul>
					<!--list-->
					<ul id="list2">
						<li><img src="images/csc/call.png" alt="고객센터전화번호" width="30"
							height="31"></li>
						<li>블루업 고객센터</li>
						<li>02-123-4567</li>
						<li>평일 15:00 ~ 22:00</li>
						<li>저녁: 오후 18:20 ~ 19:07</li>
						<li>토, 일 공휴일 휴무</li>
					</ul>
				</div>
				<!--list_wrap-->
			</div>
			<!--con_left-->

			<div id="con_right">

				<!--//////고객서비스//////-->

				<!--//////공지사항///////-->
				<div id="notice">
					<div class="no_tit">
						<h3 style="display:inline-block;">문의하기</h3>
						
						<button onClick="location.href='/test/qnaWriteForm.do?qna_no=0&pageNum=${pageNum}'">문의작성</button>
					
					</div>
					<!--no_tit-->
					<ul>
						<c:forEach items="${list }" var="list">
							<c:choose>
								<c:when test="${list.depth gt 0 }">
									<c:choose>
										<c:when test="${list.secret eq true }">
											<p>
												&nbsp;&nbsp;&nbsp;&nbsp;<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/review/arrow.png"
													width="20"><img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/review/lock.png"
													width="15px" />&nbsp;&nbsp;<a href="/test/getQnaContent.do?qna_no=${list.qna_no }&pageNum=${pageNum}">${list.qna_title }</a></p>
											<hr>
										</c:when>
										<c:otherwise>
											<p>
												&nbsp;&nbsp;&nbsp;&nbsp;<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/review/arrow.png"
													width="20"><a href="/test/getQnaContent.do?qna_no=${list.qna_no }&pageNum=${pageNum}">${list.qna_title }</a></p>
											<hr>
										</c:otherwise>
									</c:choose>
								</c:when>

								<c:otherwise>
									<c:choose>
										<c:when test="${list.secret eq true }">
											<p>
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/review/lock.png"
													width="15px" />&nbsp;&nbsp;<a href="/test/getQnaContent.do?qna_no=${list.qna_no }&pageNum=${pageNum}">${list.qna_title }</a></p>
											<hr>
										</c:when>
										<c:otherwise>
											<p><a href="/test/getQnaContent.do?qna_no=${list.qna_no }&pageNum=${pageNum}">${list.qna_title }</a></p>
											<hr>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>

						</c:forEach>

						<!-- 페이지 -->
						<div style="display: block; text-align: center;">
							<c:if test="${pageMaker.startPage != 1 }">
								<a
									href="/test/qna.do?pageNum=${pageMaker.startPage - 1 }">&lt;</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == cri.page }">
										<b>${p }</b>
									</c:when>
									<c:when test="${p != cri.page }">
										<a
											href="/test/qna.do?pageNum=${p }">${p }</a>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${pageMaker.endPage != pageMaker.tempEndPage}">
								<a
									href="/test/qna.do?pageNum=${pageMaker.endPage+1 }">&gt;</a>
							</c:if>
						</div>


					</ul>
				</div>
				<!--notice-->

			</div>
			<!--con_right-->
		</div>
		<!--cs_wrap-->
	</div>
	<!--con_wrap-->

	<!--/////////하단/////////-->
	<div id="bottom_wrap">
		<footer id="bottom">
			<p>
				<a href="index.html"><img src="images/bottom/logo_white.png"
					alt="하단로고"></a>
			</p>
			<div id="info1">
				<address>
					사업자 등록번호 : 106-81-59905<br> 대표이사 : 마크제임스에르켁<br> 본사 :
					04542 서울 중구 청계천로 100 (수표동, 시그니쳐타워, 서관 17층)<br> 전화번호 :
					02-540-6270 &nbsp; &nbsp; &nbsp; &nbsp; 팩스번호 : 02-540-6271<br>
				</address>
			</div>
			<!--info1-->
			<div id="info2">
				<ul id="info2_menu">
					<li><a href="cscenter.html">고객센터</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
				</ul>
				<!--info2_menu-->
				<ul id="sns">
					<li class="sns_img"><a
						href="https://www.youtube.com/user/OfficialTiffanyAndCo"> <img
							src="images/bottom/sns1.png" alt="유튜브1" width="32" height="32">
							<img src="images/bottom/sns1_hover.png" alt="유튜브2" width="32"
							height="32" class="sns_hover">
					</a></li>
					<!--sns_img-->
					<li class="sns_img"><a
						href="https://www.instagram.com/tiffanyandco/"> <img
							src="images/bottom/sns2.png" alt="인스타그램1" width="32" height="32">
							<img src="images/bottom/sns2_hover.png" alt="인스타그램2" width="32"
							height="32" class="sns_hover">
					</a></li>
					<!--sns_img-->
					<li class="sns_img"><a href="https://pf.kakao.com/_xlieQj">
							<img src="images/bottom/sns3.png" alt="카카오톡1" width="32"
							height="32"> <img src="images/bottom/sns3_hover.png"
							alt="카카오톡2" width="32" height="32" class="sns_hover">
					</a></li>
					<!--sns_img-->
				</ul>
				<!--sns-->
			</div>
			<!--info2-->
			<p id="copyright">copyright&copy;2021.T&amp;CO alrights reserved</p>
		</footer>
		<!--bottom-->
	</div>
	<!--bottom_wrap-->

</body>
</html>