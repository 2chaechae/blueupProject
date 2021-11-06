<!-- 회원 배송지 관리 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>블루업 | BlueUp</title>
   <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
   <script src="${pageContext.request.contextPath}/js/top.js"></script>
   <script src="${pageContext.request.contextPath}/js/index.js"></script>
   <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberaddress.css">
</head>
<body>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="${pageContext.request.contextPath}/images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="${pageContext.request.contextPath}/images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>

<!--상단-->
<div id="top_wrap">
	<header id="top">
		<!--js태그 추가자리-->
		<div id="top_bar">
			<h1><a href="#"><img src="${pageContext.request.contextPath}/images/top/blueup_logo.png" alt="블루업"></a></h1>
			<nav id="top_navi">
				<ul id="mtop">
					<li><a href="#"  data-atitle="세일상품" data-btitle="Gift">SALES</a></li>
					<li><a href="#" data-atitle="아우터" data-btitle="Collection">OUTER</a>
						<ul class="sub">
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">가디건</a></li>
							<li><a href="#">자켓/베스트</a></li>
							<li><a href="#">점퍼</a></li>
							<li><a href="#">코트</a></li>
						</ul>
					</li>
					<li><a href="#" data-atitle="상의" data-btitle="Collection">TOP</a>
						<ul class="sub">
							<li><a href="#">티셔츠</a></li>
							<li><a href="#">니트</a></li>
							<li><a href="#">맨투맨/후드</a></li>
							<li><a href="#">셔츠/블라우스</a></li>
							<li><a href="#">크롭</a></li>
						</ul>
					</li>
					<li><a href="#" data-atitle="바지" data-btitle="Collection">BOTTOM</a>
						<ul class="sub">
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">긴바지</a></li>
							<li><a href="#">트레이닝</a></li>
							<li><a href="#">반바지</a></li>
							<li><a href="#">스커트</a></li>
						</ul>
						
					</li>
					<li><a href="#" data-atitle="기타" data-btitle="Collection">ACC</a>
						<ul class="sub">
							<li><a href="#">Necklace</a></li>
							<li><a href="#">Earrings</a></li>
							<li><a href="#">Rings</a></li>
							<li><a href="#">Bracelet</a></li>
							<li><a href="#">BAGS/SHOES</a></li>
							<li><a href="#">CAP</a></li>
							<li><a href="#">ETC</a></li>
						</ul>
					</li>
				</ul>
			</nav><!--top_navi 주메뉴-->
			<div id="quick">
					<!--js태그 추가자리-->
					<ul>
						<li class="top_btn1"><a href="#"><img src="${pageContext.request.contextPath}/images/top/notice.png"></a>
							<ul class="btn_sub">
								<li><a href="${pageContext.request.contextPath}/getNoticeList.do">공지사항</a></li>
								<li><a href="#">QnA</a></li>
								<li><a href="#">REVIEW</a></li>
							</ul>
						</li>
						<li class="top_btn"><a href="#"><img src="${pageContext.request.contextPath}/images/top/login.png" alt="로그인" width="16" height="16"></a><br><span>LOGIN</span></li>
						<li class="top_btn2"><a href="#"><img src="${pageContext.request.contextPath}/images/top/search.png" alt="상단바 검색" width="16" height="16"></a><br><span>검색</span>
							<ul class="btn_sub2">
								<li><img src="${pageContext.request.contextPath}/images/top/seartop_btn.png" alt="검색드롭다운메뉴" width="40" height="40"></li>
								<li><input type="text" title="검색어 입력" placeholder="검색어를 입력해주세요. " id="seartop_input"></li>
								<li><button type="submit" id="seartop_btn">검색</button></li>
							</ul><!--btn_sub2-->
						</li><!--top_btn2-->
					</ul>
				</div><!--top_sub 서브메뉴-->
		</div><!--top_bar-->
	</header><!--top 상단전체-->
</div><!--top_wrap-->
	<div id="top_wrap">
		<!-- 컨텐츠 시작 -->
		<div class="contain my lnblist-Wrap" id="contain">
			<div class="container">
				<h2 class="title01">마이페이지</h2>
				<nav id="lnb" class="lnb-nav">
					<strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
					<p>
						<b>블루업</b>님<br />반갑습니다.
					</p>
					<ul class="nav-mnlist">
						<li id="myNavi1"><a href="javascript:;"><span>주문정보</span></a>
							<ul>
								<li><a href="#"><span>주문/배송조회</span></a></li>
								<li><a href="#"><span>취소/교환/반품 조회</span></a></li>
							</ul></li>
						<li id="myNavi2"><a href="javascript:;"><span>활동정보</span></a>
							<ul>
								<li><a href="#"><span>위시리스트</span></a></li>
								<li><a href="#"><span>최근 본 상품</span></a></li>
								<li><a href="#"><span>상품리뷰</span></a></li>
								<li><a href="#"><span>1:1 문의</span></a></li>
							</ul></li>
						<li id="myNavi3"><a href="javascript:;"><span>혜택정보</span></a>
							<ul>
								<li><a href="#"><span>포인트/쿠폰함</span></a></li>
								<li><a href="#"><span>회원혜택안내</span></a></li>
							</ul></li>
						<li id="myNavi4"><a href="javascript:;"><span>회원정보</span></a>
							<ul>
								<li><a href="/view/user/memberaddress.jsp"><span>배송지 관리</span></a></li>
								<li><a href="#"><span>회원정보 수정</span></a></li>
								<li><a href="#"><span>회원탈퇴</span></a></li>
							</ul></li>
					</ul>
				</nav>
				<main class="contents deliveryList-wrap" id="contents">
					<div class="location-contents">
						<p class="location">
							<span><a href="/main/mall/view">Home</a></span> 
							<span><a href="/mypage/view">마이페이지</a></span> <span>회원정보</span> <strong>배송지 관리</strong>
						</p>
					</div>
					<div class="tbst-div">
						<div class="mid fl">
							<span>전체</span> (<span class="text-color01" id="deliveryCnt">0</span>건)
						</div>
					</div>
					<input type="button" value="배송지추가">
				</main>
				
			</div>
		</div>
	</div>
	<%@ include file="/view/user/footer.jsp"%>
</body>
</html>