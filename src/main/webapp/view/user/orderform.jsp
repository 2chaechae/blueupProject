<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BlueUP</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/top.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<link rel="shortcut icon"
	type="${pageContext.request.contextPath}/image/x-icon"
	href="images/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/cscenter.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/orderform.css">
	
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
			<h1>
				<a href="#"><img
					src="https://blueup.s3.ap-northeast-2.amazonaws.com/main/blueuplogo.png"
					alt="블루업"></a>
			</h1>
			<div id="top_bar">
				<nav id="top_navi">
					<ul id="mtop">
						<li><a href="#" data-atitle="세일상품" data-btitle="Gift">SALES</a></li>
						<li><a href="#" data-atitle="아우터" data-btitle="Collection">OUTER</a>
							<ul class="sub">
								<li><a href="#">가디건</a></li>
								<li><a href="#">자켓/베스트</a></li>
								<li><a href="#">점퍼</a></li>
								<li><a href="#">코트</a></li>
							</ul></li>
						<li><a href="#" data-atitle="상의" data-btitle="Collection">TOP</a>
							<ul class="sub">
								<li><a href="#">티셔츠</a></li>
								<li><a href="#">니트</a></li>
								<li><a href="#">맨투맨/후드</a></li>
								<li><a href="#">셔츠/블라우스</a></li>
								<li><a href="#">크롭</a></li>
							</ul></li>
						<li><a href="#" data-atitle="바지" data-btitle="Collection">BOTTOM</a>
							<ul class="sub">
								<li><a href="#">긴바지</a></li>
								<li><a href="#">트레이닝</a></li>
								<li><a href="#">반바지</a></li>
								<li><a href="#">스커트</a></li>
							</ul></li>
						<li><a href="#" data-atitle="기타" data-btitle="Collection">ACC</a>
							<ul class="sub">
								<li><a href="#">Necklace</a></li>
								<li><a href="#">Earrings</a></li>
								<li><a href="#">Rings</a></li>
								<li><a href="#">Bracelet</a></li>
								<li><a href="#">BAGS/SHOES</a></li>
								<li><a href="#">CAP</a></li>
								<li><a href="#">ETC</a></li>
							</ul></li>
					</ul>
				</nav>
				<!--top_navi 주메뉴-->
				<div id="quick">
					<!--js태그 추가자리-->
					<ul>
						<li class="top_btn1"><a href="#" title="고객센터"><br>
							<span>COMMUNTIY</span></a>
							<ul class="btn_sub">
								<li><a href="#" onclick="location.href='cscenter.jsp'">공지사항</a></li>
								<li><a href="#" onclick="location.href='cscenter.jsp'">QnA</a></li>
								<li><a href="#" onclick="location.href='cscenter.jsp'">REVIEW</a></li>
							</ul></li>
						<li class="top_btn"><img
							src="${pageContext.request.contextPath}/images/top/login.png"
							alt="로그인" width="16" height="16"><br>
						<span>LOGIN</span></li>
						<li class="top_btn2"><img
							src="${pageContext.request.contextPath}/images/top/search.png"
							alt="상단바 검색" width="16" height="16"><br>
						<span>검색</span>
							<ul class="btn_sub2">
								<li><img
									src="${pageContext.request.contextPath}/images/top/seartop_btn.png"
									alt="검색드롭다운메뉴" width="40" height="40"></li>
								<li><input type="text" title="검색어 입력"
									placeholder="검색어를 입력해주세요. " id="seartop_input"></li>
								<li><button type="submit" id="seartop_btn">검색</button></li>
							</ul>
							<!--btn_sub2--></li>
						<!--top_btn2-->
					</ul>
				</div>
				<!--top_sub 서브메뉴-->
			</div>
			<!--top_bar-->
		</header>
		<!--top 상단전체-->
	</div>
	<!--top_wrap-->


	 
	<h2 class="orderform_title">주문서 작성</h2> 
	<!-- product form 상품 정보-->
	<div class="productInfo">
	<h1>상품 정보</h1><div class="orderimg"><img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg" alt="맨투맨" width="200" height="300">
                  </div></div>
	
	<!-- 주문정보 -->
 <div class="orderform">
 
	<div class="orderInfo">
	
		<form role="form" method="post" autocomplete="off">
        <h1>주문 정보
        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				*필수입력사항</h1>
				<br>
			<input type="hidden" name="amount" value="${sum}" />
			<div class="inputArea">
				<input type="text" name="orderRec" placeholder="주문하시는 분*"
					id="orderRec" required="required" />
					</div>
					<div class="inputArea">
				<input type="text" name="orderRec" placeholder="주소*"
					id="orderRec" required="required" />
					</div>
					<div class="inputArea">
				<input type="text" name="orderRec" placeholder="기본주소"
					id="orderRec" required="required" />
					</div>
					<div class="inputArea">
				<input type="text" name="orderRec" placeholder="나머지주소"
					id="orderRec" required="required" />
					</div>
					<div class="inputArea">
			        <input type="text" name="orderRec" id="orderRec" placeholder="일반전화" required="required" />
				</div>
				<div class="inputArea">
			        <input type="text" name="orderRec" id="orderRec" placeholder="휴대전화" required="required" />
				</div>
				<br>
				<h1>배송정보&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				*필수입력사항</h1>
				<br>
				 <div class="radio_boxs">
                <input id="secure1" type="radio" name="open" >
                <label for="secure1">주문자 정보와 동일</label>
                <input id="secure2" type="radio" name="open" checked>
                <label for="secure2">새로운 배송지</label>
                </div>
                <br>
			<div class="inputArea">
				<label for="">수령인</label> <input type="text" name="orderRec"
					id="orderRec" placeholder="받으시는 분을 입력해주세요" required="required" />
			</div>

			<div class="inputArea">
				<label for="orderPhon">수령인 연락처</label> <input type="text"
					name="orderPhon" id="orderPhon" required="required" />
			</div>

			<div class="inputArea">
				<label for="userAddr1">우편번호</label> <input type="text"
					name="userAddr1" id="userAddr1" required="required" />
			</div>

			<div class="inputArea">
				<label for="userAddr2">1차 주소</label> <input type="text"
					name="userAddr2" id="userAddr2" required="required" />
			</div>

			<div class="inputArea">
				<label for="userAddr3">2차 주소</label> <input type="text"
					name="userAddr3" id="userAddr3" required="required" />
			</div>
		<label for="comment" class="title">메 모</label> <textarea
							cols="40" rows="3" placeholder="메모" id="comment"></textarea>
			<div class="buttons_area">
                <button class="orderform_btn cancle">주문</button>
                <button class="orderform_btn confirm">취소</button>
            </div>
		
	</form>
	</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>