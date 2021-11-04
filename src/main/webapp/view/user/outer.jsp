<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>티파니앤코 (리뉴얼)</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery-ui-1.10.4.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/js/top.js"></script>
<script src="${pageContext.request.contextPath}/js/item.js"></script>
<link rel="shortcut icon"
	type="${pageContext.request.contextPath}/image/x-icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/item.css">
</head>
<body>
	<!--맨위로 가기 맨 아래로 가기-->
	<p>
		<img src="${pageContext.request.contextPath}/images/icon/scrollup.png"
			alt="맨위로" width="40" height="41" class="up_btn">
	</p>
	<p>
		<img
			src="${pageContext.request.contextPath}/images/icon/scrolldown.png"
			alt="맨아래로" width="40" height="41" class="down_btn">
	</p>

	<!--////////////상단//////////////-->
	<div id="top_wrap">
		<div id="top_wrap2">
			<header id="top">
				<!--js태그 추가자리-->
				<div id="top_bar">
					<h1>
						<a href="index.html"><img
							src="${pageContext.request.contextPath}/images/top/logo.png"
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
							<li class="top_btn1"><img
								src="${pageContext.request.contextPath}/images/top/login.png"
								alt="로그인" width="16" height="16"><br> <span>login</span>
								<ul class="btn_sub">
									<li><img
										src="${pageContext.request.contextPath}/images/top/diamond.png"
										alt="다이아몬드" width="80" height="55"></li>
									<li>티파니 온라인회원이 되어<br>특별한 혜택을 경험해보세요.
									</li>
									<li><a href="login.html">로그인</a></li>
									<li><a href="join.html">회원가입</a></li>
								</ul></li>
							<li class="top_btn2"><img
								src="${pageContext.request.contextPath}/images/top/search.png"
								alt="상단바 검색" width="16" height="16"><br> <span>검색</span>
								<ul class="btn_sub2">
									<li><img
										src="${pageContext.request.contextPath}/images/top/seartop_btn.png"
										alt="검색드롭다운메뉴" width="40" height="40"></li>
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
				<li><img
					src="${pageContext.request.contextPath}/images/icon/page_arrow.png"
					alt="페이지화살표1" width="5" height="9"></li>
				<li>Item</li>
				<li><img
					src="${pageContext.request.contextPath}/images/icon/page_arrow.png"
					alt="페이지화살표1" width="5" height="9"></li>
				<li>Best</li>
			</ul>
		</div>
		<!--page-->
	</div>
	<!--page wrap:페이지위치 전체-->

<div id="con_wrap">
<!--///////////////////item///////////////////////	-->
	<div id="item_wrap">
	<!--///////jewerly////////-->
		<div class="items">
			<h3>OUTER</h3>
			<c:forEach var="i" begin="1" end="20">
				<c:if test="${i % 5 == 0}">
					  <div class="item_con"	>
				</c:if>
				<div class="item">
				  <!-- <c:forEach var="notice" items="${noticeList}" varStatus="status"></c:forEach>-->
		               <div class ="item_img">
							<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/t.jpg" alt="맨투맨" width="300" height="300">
						</div><!--item_img :gift 이미지-->
						<p>점퍼</p>
						<p>어디에나 착용가능한 맨투맨</p>
						<p class="heart">
							<img src="${pageContext.request.contextPath}/images/item/heart.png" alt="찜" width="25" height="23">
						</p><!--heart:찜하기 하트버튼-->
						
          		 	</div><!--item: jewerly1-->
          		 <c:if test="${i % 4 == 0}">
					</div>
					
				</c:if>
          	</c:forEach></div>
			<p class="item_btn"><a href="jewerly.html">Outer 더보기</a></p>
		<!--items-->
		
	
		</div><!--items-->
	</div><!--item_wrap-->
	<!--////////item notice////////-->
	<div id="notice_wrap">
		<div id="notice_con">
			<h4>NOTICE</h4>
			<ul id="notice">
				<li>각 카테고리마다 ‘더보기’ 버튼을 누르시면 더 많은 제품을 보실 수 있습니다.</li>
				<li>제품 수리는 가까운 티파니 매장에 문의하시길 바랍니다. <a href="store.html">매장안내</a></li>
				<li>교환 &amp; 환불은 고객센터로 문의하시길 바랍니다. <a href="cscenter.html">고객센터</a></li>
			</ul>
			<!--notice-->
		</div>
		<!--notice_con-->
	</div>
	<!--notice_wrap-->
	
	<!--con_wrap-->
	<%@ include file="/view/user/footer.jsp"%>