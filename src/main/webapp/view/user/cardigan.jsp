<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>cardigan</title>
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
	href="${pageContext.request.contextPath}/css/outer.css">
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

	<!--상단-->
<div id="top_wrap">
   <header id="top">
      <!--js태그 추가자리-->
      <h1><a href="#"><img src="https://blueup.s3.ap-northeast-2.amazonaws.com/main/blueuplogo.png" alt="블루업"></a></h1>
      <div id="top_bar">
         <nav id="top_navi">
            <ul id="mtop">
               <li><a href="#"  data-atitle="세일상품" data-btitle="Gift">SALES</a></li>
               <li><a href="#" data-atitle="아우터" data-btitle="Collection">OUTER</a>
                  <ul class="sub">
                     <li><a href="#">가디건</a></li>
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
                     <li><a href="#">긴바지</a></li>
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
                  <li class="top_btn1"><a href="#" title="고객센터"><br><span>COMMUNTIY</span></a>
                     <ul class="btn_sub">
                        <li><a href="#" onclick="location.href='cscenter.jsp'">공지사항</a></li>
                        <li><a href="#" onclick="location.href='cscenter.jsp'">QnA</a></li>
                        <li><a href="#" onclick="location.href='cscenter.jsp'">REVIEW</a></li>
                     </ul>
                  </li>
                  <li class="top_btn"><img src="${pageContext.request.contextPath}/images/top/login.png" alt="로그인" width="16" height="16"><br><span>LOGIN</span></li>
                  <li class="top_btn2"><img src="${pageContext.request.contextPath}/images/top/search.png" alt="상단바 검색" width="16" height="16"><br><span>검색</span>
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

	<!--//////페이지위치///////-->
<%-- 	<div id="page_wrap">
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
	</div> --%>
	<!-- 이부분 item css로 통일해야함. -->
	<!--page wrap:페이지위치 전체-->

<div id="outcon_wrap">
<!--///////////////////item///////////////////////	-->
	<div id="outer_wrap">
	<!--///////jewerly////////-->
		<div class="outers">
			<h3>CARDIGAN</h3>
			<c:forEach var="i" begin="1" end="20">
				<c:if test="${i % 4 == 0}">
					  <div class="outer_con"	>
				</c:if>
				<div class="outer">
				  <!-- <c:forEach var="notice" items="${noticeList}" varStatus="status"></c:forEach>-->
		               <div class ="outer_img">
							<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/t.jpg" alt="맨투맨" width="300" height="300">
						</div><!--item_img :gift 이미지-->
						<p>키몬 아가일 가디건</p>
						<p>블랙 브라운 아보카도</p>
						<p class="heart">
							<img src="${pageContext.request.contextPath}/images/item/heart.png" alt="찜" width="25" height="23">
						</p><!--heart:찜하기 하트버튼-->
						
          		 	</div><!--item: jewerly1-->
          		 <c:if test="${i % 4 == 0}">
					</div>
					
				</c:if>
          	</c:forEach></div>
			<p class="outer_btn"><a href="jewerly.html">Outer 더보기</a></p>
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