<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>블루업 | BlueUp</title>
   <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
   <script src="${pageContext.request.contextPath}/js/top.js"></script>
   <script src="${pageContext.request.contextPath}/js/index.js"></script>
   <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">

	<link href="${pageContext.request.contextPath}/css/bs.css?v=10-2-19-53-58" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/cm.css?v=10-2-19-53-58" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/ly.css?v=10-2-19-53-58" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/my.css?v=10-2-19-53-58" rel="stylesheet" type="text/css" />

</head>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="${pageContext.request.contextPath}/images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="${pageContext.request.contextPath}/images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>
<!--상단-->
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
<body class="body" oncontextmenu="return false"
	ondragstart="return false" onselectstart="return false">
	<div id="targetGateScriptLoader"></div>
	<div id="criteoScriptLoader"></div>
	<script>
		/* 회원등급소개 */
		
	</script>
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">
			<h2 class="title01">마이페이지</h2>
			<nav id="lnb" class="lnb-nav">
				<strong><img
					src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png"
					alt="MYPAGE"></strong>
				<p>
					<b>블루업</b>님<br />반갑습니다.
				</p>
				<hr class="hr-ddd" />
				<ul class="nav-mnlist">
					<li id="myNavi1"><a href="javascript:;"><span>주문정보</span></a>
						<ul>
							<li><a href="/mypage/order/list"><span>주문/배송조회</span></a></li>
							<li><a href="/mypage/claim/list"><span>취소/교환/반품
										조회</span></a></li>
						</ul></li>
					<li id="myNavi2"><a href="javascript:;"><span>활동정보</span></a>
						<ul>
							<li><a href="/mypage/wishlist/list"><span>위시리스트</span></a></li>
							<li><a href="/mypage/todaygood/list"><span>최근 본
										상품</span></a></li>
							<li><a href="/mypage/goods/reviewView"><span>상품리뷰</span></a></li>
							<li><a href="/mypage/inquiry/list"><span>1 : 1 문의</span></a></li>
						</ul></li>
					<li id="myNavi3"><a href="javascript:;"><span>혜택정보</span></a>
						<ul>
							<li><a href="/mypage/benefit/listPoint"><span>포인트</span></a></li>
							<li><a href="/mypage/benefit/listCoupon"><span>쿠폰함</span></a></li>
							<li><a href="/mypage/benefit/membershipRateInfo"><span>회원혜택안내</span></a></li>
						</ul></li>
					<li id="myNavi4"><a href="javascript:;"><span>회원정보</span></a>
						<ul>
							<li><a href="/mypage/member/deliveryLocationList"><span>배송지
										관리</span></a></li>
							<li><a href="/mypage/member/modifyMemberView"><span>회원정보
										수정</span></a></li>
							<li><a href="/mypage/member/secessionMemberView"><span>회원탈퇴</span></a></li>
						</ul></li>
				</ul>
			</nav>
			<main class="contents myPageMain-wrap" id="contents">

				<div class="location-contents">
					<p class="location">
						<span><a href="/main/mall/view">Home</a></span> <strong>마이페이지</strong>
					</p>
				</div>
				<!-- 회원정보S -->
				<div class="memberSTcont boxCont03">
					<ul>
						<li class="colorBlk friends_SY">
							<p>Level</p> <strong>Friends</strong> <a href="#ratingBenefit"
							onclick="goMembershipInfo();return false;" class="d_layer_open">
								<span>구매등급 혜택보기</span>
						</a>
						</li>
						<li>
							<p>포인트</p> <strong><a href="#" class="text-color01"
								ctgrysectcd="GNRL_CTGRY" url="/mypage/benefit/listPoint"
								onClick="javascript:goMypageAction(this);return false;">0</a>원</strong>
						</li>
						<li>
							<p>쿠폰</p> <strong><a href="#" class="text-color01"
								ctgrysectcd="GNRL_CTGRY" url="/mypage/benefit/listCoupon"
								onClick="javascript:goMypageAction(this);return false;">0</a>장</strong>
						</li>
					</ul>
				</div>
				<!-- //회원정보E -->


				<div class="justify-wrap">
					<h3 class="title02 left">주문내역</h3>
					<a href="#" class="btn sm fill right" url="/mypage/order/list"
						onClick="javascript:goMypageAction(this);return false;"><span>전체보기</span></a>
				</div>

				<!-- 주문내역 S -->
				<div class="odResulCon" id="includeOrderList"></div>
				<!-- //주문내역 E -->

				<div class="justify-wrap">
					<h3 class="title02 left">쿠폰함</h3>
					<a href="#" class="btn sm fill right"
						url="/mypage/benefit/listCoupon"
						onClick="javascript:goMypageAction(this);return false;"><span>전체보기</span></a>
				</div>

				<!-- 쿠폰함 S -->
				<div class="board-list" id="includeCouponList"></div>
				<!-- //쿠폰함 E -->
			</main>
		</div>
	</div>
	<article id="ratingBenefit" class="layer-popup ratingBenefit-pop">
		<section class="layer-popup-cont" tabindex="0">
			<h2>구매등급 혜택보기</h2>
			<div class="layer-cont scroll">
				<div class="ratingBenefit-popWrap">
					<!-- MLB 등급 혜택 안내 S -->
					<div class="membership-level-list">
						<table>
							<caption>회원등급혜택</caption>
							<colgroup>
								<col style="width: 105px;">
								<col style="width: 141px;">
								<col style="width: 141px;">
								<col style="width: 141px;">
								<col style="width: 141px;">
								<col style="width: 141px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">등급</th>
									<th scope="col">
										<div>
											<img
												src="https://static.mlb-korea.com/pc/static/images/my/bg_friends.png"
												alt="FRIENDS"> <strong class="lv">FRIENDS</strong>
										</div>
									</th>
									<th scope="col">
										<div>
											<img
												src="https://static.mlb-korea.com/pc/static/images/my/bg_family.png"
												alt="FAMILY"> <strong class="lv">FAMILY</strong>
										</div>
									</th>
									<th scope="col">
										<div>
											<img
												src="https://static.mlb-korea.com/pc/static/images/my/bg_silver.png"
												alt="SILVER"> <strong class="lv">SILVER</strong>
										</div>
									</th>
									<th scope="col">
										<div>
											<img
												src="https://static.mlb-korea.com/pc/static/images/my/bg_gold.png"
												alt="GOLD VIP"> <strong class="lv">GOLD VIP</strong>
										</div>
									</th>
									<th scope="col">
										<div>
											<img
												src="https://static.mlb-korea.com/pc/static/images/my/bg_platinum.png"
												alt="PLATINUM VVIP"> <strong class="lv">PLATINUM
												VVIP</strong>
										</div>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>등급조건</th>
									<td>
										<div>
											<p>
												신규회원<br>~ 20만원 미만 구매
											</p>
										</div>
									</td>
									<td>
										<div>
											<p>
												20만원 이상<br>~ 50만원 미만 구매
											</p>
										</div>
									</td>
									<td>
										<div>
											<p>
												50만원 이상<br>~ 100만원 미만 구매
											</p>
										</div>
									</td>
									<td>
										<div>
											<p>
												100만원 이상<br>~200만원 미만 구매<br>(구매 2회 이상)
											</p>
										</div>
									</td>
									<td>
										<div>
											<p>
												200만원 이상 ~<br>(구매 2회 이상)
											</p>
										</div>
									</td>
								</tr>
								<tr>
									<th>적립 마일리지</th>
									<td>
										<div class="CouponST">
											<div class="mileageDiv">
												<p>1%</p>
											</div>
										</div>
									</td>
									<td>
										<div class="CouponST">
											<div class="mileageDiv">
												<p>4%</p>
											</div>
										</div>
									</td>
									<td>
										<div class="CouponST">
											<div class="mileageDiv">
												<p>4%</p>
											</div>
										</div>
									</td>
									<td>
										<div class="CouponST">
											<div class="mileageDiv">
												<p>5%</p>
											</div>
										</div>
									</td>
									<td>
										<div class="CouponST">
											<div class="mileageDiv">
												<p>6%</p>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--// MLB 등급 혜택 안내 E -->

					<ul class="text-list02">
						<li>일부 상품은 쿠폰 적용에서 제외될수 있습니다.</li>
						<li>등급 산정은 구매확정 후 익일에 반영 됩니다.</li>
					</ul>

				</div>
			</div>
			<div class="layer-popup-close">
				<button type="button" class="d_layer_close">닫기</button>
			</div>
		</section>
	</article>
</body>
</html>