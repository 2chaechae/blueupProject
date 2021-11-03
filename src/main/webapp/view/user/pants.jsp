<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>티파니앤코 (리뉴얼)</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script src = "${pageContext.request.contextPath}/js/top.js"></script>
<script src="${pageContext.request.contextPath}/js/collection.js"></script>
<link rel="shortcut icon" type="${pageContext.request.contextPath}/image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/collection.css">
<style>
	.coll_i2{
		position:absolute;
		left:0; top:0;
		background:rgba(0,0,0,0.8);
		width:280px;
		height:375px;
		color:#ffffff;
		padding: 40px 20px;
		box-sizing:border-box;
		opacity:0;
		transition:all 0.3s;
	}
	.coll_i:hover .coll_i2{
		opacity:1;
	}
</style>
</head>
<body>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="${pageContext.request.contextPath}/images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="${pageContext.request.contextPath}/images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>

<!--////////////상단//////////////-->
<div id="top_wrap">
	<div id="top_wrap2">
		<header id="top">
			<!--js태그 추가자리-->
			<div id="top_bar">
				<h1><a href="index.html"><img src="${pageContext.request.contextPath}/images/top/logo.png" alt="티파니앤코" width="168" height="22"></a></h1>

				<nav id="top_navi">
					<ul id="mtop">
						<li><a href="brand.html" data-atitle="브랜드" data-btitle="Brand">Brand</a>
							<ul class="sub">
								<li><a href="brand.html">티파니 스토리</a></li>
								<li><a href="#">지속가능성</a></li>
								<li><a href="#">사이트 맵</a></li>
							</ul>
						</li>
						<li><a href="item.html" data-atitle="제품" data-btitle="Item">Item</a>
							<ul class="sub">
								<li><a href="item.html">BEST</a></li>
								<li><a href="#">JEWERLY</a></li>
								<li><a href="#">WATCH</a></li>
								<li><a href="#">PERFUME</a></li>
								<li class="overline"><a href="#">HOME &amp; ACC</a></li>
							</ul>
						</li>
						<li><a href="gift.html"  data-atitle="선물" data-btitle="Gift">Gift</a>
							<ul class="sub">
								<li><a href="gift.html">전체</a></li>
								<li><a href="#">생일</a></li>
								<li><a href="#">기념일</a></li>
								<li><a href="#">맞춤형</a></li>
								<li><a href="#">여성</a></li>
								<li><a href="#">남성</a></li>
								<li><a href="#">홈</a></li>
							</ul>
						</li>
						<li><a href="collection.html" data-atitle="기획전" data-btitle="Collection">Collection</a>
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
							</ul>
						</li>
					</ul>
				</nav><!--top_navi 주메뉴-->
				<div id="quick">
					<!--js태그 추가자리-->
					<ul>
						<li><a href="store.html" title="매장안내">매장안내</a></li>
						<li><a href="cscenter.html" title="고객센터">고객센터</a></li>
						<li class="top_btn1"><img src="${pageContext.request.contextPath}/images/top/login.png" alt="로그인" width="16" height="16"><br><span>login</span>
							<ul class="btn_sub">
								<li><img src="${pageContext.request.contextPath}/images/top/diamond.png" alt="다이아몬드" width="80" height="55"></li>
								<li>티파니 온라인회원이 되어<br>특별한 혜택을 경험해보세요.</li>
								<li><a href="login.html">로그인</a></li>
								<li><a href="join.html">회원가입</a></li>
							</ul>
						</li>
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
	</div><!--top_wrap2-->
</div><!--top_wrap-->

<!--//////페이지위치///////-->
<div id="page_wrap">
	<div id="page">
		<ul id="r_page">
			<li>Home</li>
			<li><img src="${pageContext.request.contextPath}/images/icon/page_arrow.png" alt="페이지화살표1" width="5" height="9"></li>
			<li>Collection</li>
		</ul>
	</div><!--page-->
</div><!--page wrap:페이지위치 전체-->

<!--/////////////collection내용/////////////////////-->
<!-- <div id="con_wrap"> -->
	<div id="coll_tit">
		<h2>PANTS</h2>
		<p>슬랙스 데님 면바지 어쩌구 넣을곳</p>
	</div>
	<div id="coll_con">
		<div id="coll_con2">
			<div class="coll_i" data-n="1">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg" alt="Tiffany T" width="280" height="375">
					<h3>호딘 트레이닝 팬츠</h3>
				</div>
				<div class="coll_i2">
					<p>BlueUp Outer</p>
					<p>블루업의 시그니처 코드인  <br>
							세련된 B 모티브</p>
					<p class="coll_btn" ><a href="#">자세히 보기 <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg" alt="자세히보기" width="29" height="12"></a></p>
				</div>
			</div><!--coll_i-->
			<div class="coll_i" data-n="1">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/vvvvvv.jpg" alt="아틀라스Tm" width="280" height="375">
					<h3>리처 와이드 코튼팬츠</h3>
				</div>
				<div class="coll_i2">
					<p>Top</p>
					<p>블루업의 시그니처인 <br> 상의들</p>
					<p class="coll_btn" ><a href="#">자세히보기<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/t.jpg" alt="자세히보기" width="29" height="12"></a></p>
				</div>
			</div><!--coll_i-->
			<div class="coll_i" data-n="1">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/pants/jeans.webp" alt="Tiffany key" width="280" height="375">
					<h3>릭커스 와이드 데님 팬츠</h3>
				</div><!--coll_i-->
				<div class="coll_i2">
					<p>pants</p>
					<p>성공적인 삶에 대한 <br> 블루업의 개성넘치는 팬츠 </p>
					<p class="coll_btn" ><a href="#">자세히 보기 <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/t.jpg" alt="자세히보기" width="29" height="12"></a></p>
				</div>
			</div><!--coll_i-->
			<div class="coll_i" data-n="1">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg" alt="Tiffany T" width="280" height="375">
					<h3>도미닉 와이드 롱 슬랙스</h3>
				</div>
				<div class="coll_i2">
					<p>도미닉</p>
					<p>슬랙스 <br>
					와이드 너비에 롱한 기장감 </p>
					<p class="coll_btn" ><a href="#">자세히 보기 <img src="${pageContext.request.contextPath}/images/coll/link.png" alt="자세히보기" width="29" height="12"></a></p>
				</div>
			</div><!--coll_i-->
			<div class="coll_i" data-n="1">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg" alt="Tiffany T" width="280" height="375">
					<h3>도미닉 F/W 와이드 롱 슬랙스</h3>
				</div>
				<div class="coll_i2">
					<p>BAG&SHOES</p>
					<p>블루업의 <br>독창적인 방식으로 
					만든 백앤슈즈</p>
					<p class="coll_btn" ><a href="#">자세히 보기 <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/t.jpg" alt="자세히보기" width="29" height="12"></a></p>
				</div>
			</div><!--coll_i-->
			<div class="coll_i" data-n="2">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/vvvvvv.jpg" alt="Tiffany T" width="280" height="375">
					<h3>퍼스티 스트레이트 데님팬츠</h3>
				</div>
				<div class="coll_i2">
					<p>니트</p>
					<p>여러 색감들이 담겨있는<br>따뜻한 니트들</p>
					<p class="coll_btn" ><a href="#">자세히 보기 <img src="${pageContext.request.contextPath}/images/coll/link.png" alt="자세히보기" width="29" height="12"></a></p>
				</div>
			</div><!--coll_i-->
			<div class="coll_i" data-n="2">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/banner/shop1_211_top_699965.jpg" alt="엘사페러티" width="280" height="375">
					<h3>SLIM BOOTS-CUT 001 - BLACK</h3>
				</div>
				<div class="coll_i2">
					<p>자켓</p>
					<p>블루업만의<br>독특한 자켓</p>
					<p class="coll_btn" ><a href="#">자세히 보기 <img src="${pageContext.request.contextPath}/images/coll/link.png" alt="자세히보기" width="29" height="12"></a></p>
				</div>
				
			</div><!--coll_i-->
			<div class="coll_i" data-n="2">
				<div class="coll_i1">
					<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg" alt="빅토리아" width="280" height="375">
					<h3>재니스 기모 트레이닝 팬츠</h3>
				</div>
				<div class="coll_i2">
					<p>ETC</p>
					<p>꼭 필요한<br>제품들</p>
					<p class="coll_btn" ><a href="#">자세히 보기 <img src="${pageContext.request.contextPath}/images/coll/link.png" alt="자세히보기" width="29" height="12"></a></p>
				</div>
			</div><!--coll_i-->
			
		</div><!--coll_con2-->
	</div><!--coll_con-->
	<div id="coll_scroll">
			<p class="coll_prev">◀</p>
			<div class="coll_t1">
				<p class="sn1">1 </p>
			</div><!--coll_t1-->
			<div class="coll_t2"> &nbsp;/ 2</div>
			<p class="coll_next">▶</p>
		</div><!--coll_scroll-->
<!-- </div>con_wrap -->
<%@ include file="footer.jsp" %>