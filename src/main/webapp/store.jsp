<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>티파니앤코 (리뉴얼)</title>
	<script src="js/jquery-1.12.4.min.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script src = "js/top.js"></script>		
	<script src="js/store.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/store.css">
</head>
<body>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>

<!--////////////상단//////////////-->
<div id="top_wrap">
	<div id="top_wrap2">
		<header id="top">
			<!--js태그 추가자리-->
			<div id="top_bar">
				<h1><a href="index.html"><img src="images/top/logo.png" alt="티파니앤코" width="168" height="22"></a></h1>

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
						<li class="top_btn1"><img src="images/top/login.png" alt="로그인" width="16" height="16"><br><span>login</span>
							<ul class="btn_sub">
								<li><img src="images/top/diamond.png" alt="다이아몬드" width="80" height="55"></li>
								<li>티파니 온라인회원이 되어<br>특별한 혜택을 경험해보세요.</li>
								<li><a href="login.html">로그인</a></li>
								<li><a href="join.html">회원가입</a></li>
							</ul>
						</li>
						<li class="top_btn2"><img src="images/top/search.png" alt="상단바 검색" width="16" height="16"><br><span>검색</span>
							<ul class="btn_sub2">
								<li><img src="images/top/seartop_btn.png" alt="검색드롭다운메뉴" width="40" height="40"></li>
								<li><input type="text" title="검색어 입력" placeholder="검색어를 입력해주세요. " id="seartop_input"></li>
								<li><button type="submit" id="seartop_btn">검색</button></li>
							</ul><!--btn_sub2-->
						</li><!--top_btn2-->
					</ul>
				</div><!--top_sub 서브메뉴-->
			</div><!--top_bar-->
		</header><!--top 상단전체-->
		<div id="banner">
			<p><img src="images/store/store.png" alt="매장메인배너" width="1920" height="480"></p>
			<div id="ban_con">
				<h2>매장안내</h2>
				<p>원하시는 지역을 선택하여 티파니 매장을 찾아보세요</p>
			</div><!--ban_con 배너 안 내용-->
		</div><!--main_ban- 메인 상단 배너 전체-->
	</div><!--top_wrap2-->
</div><!--top_wrap-->

<!--//////페이지위치///////-->
<div id="page_wrap">
	<div id="page">
		<ul id="r_page">
			<li>Home</li>
			<li><img src="images/icon/page_arrow.png" alt="페이지화살표1" width="5" height="9"></li>
			<li>매장안내</li>
		</ul>
	</div><!--page-->
</div><!--page wrap:페이지위치 전체-->

<!--///////매장안내 내용//////////-->
<div id="con_wrap">
<!--///// 지역검색/////-->
	<div id="loc_wrap">
		<div id="loc_sear">
			<h3>지역 검색</h3>
			<p class="lo_select">
				<select id="lo1_select">
					<option>시/도 선택</option>
					<option value="1">서울</option>
					<option value="2">인천</option>
					<option value="3">경기</option>
					<option value="4">대구</option>
					<option value="5">대전</option>
					<option value="6">부산</option>
					<option value="7">제주</option>
				</select><!--lo1_select-->
			</p><!--lo_select-->
			<p class="lo_select">
				<select id="lo2_select">
					<option>전체보기</option>
					<option value="1" class="s1">강남구</option>
					<option value="1" class="s1">서대문구</option>
					<option value="1" class="s1">서초구</option>
					<option value="1" class="s1">송파구</option>
					<option value="1" class="s1">영등포구</option>
					<option value="1" class="s1">중구</option>
					<option value="2" class="s2">중구</option>
					<option value="3" class="s3">성남시</option>
					<option value="3" class="s3">하남시</option>
					
					<option value="4" class="s4">동구</option>
					<option value="4" class="s4">중구</option>
					<option value="5" class="s5">서구</option>
					<option value="6" class="s6">부산진구</option>
					<option value="6" class="s6">해운대구</option>
					<option value="7" class="s7">연동</option>
				</select><!--lo1_select-->
			</p><!--lo_select-->
			<input type="text" id="lo_input" title="매장명입력" placeholder="매장명을 입력해주세요. ">
			<p class="sear_btn"><button type="submit" id="sear_btn">검색</button></p>
		</div><!--loc_sear-->
	</div><!--loc_wrap-->
	
<!--//////////매장검색창///////////-->
	<div id="list_store_wrap">
	
		<!--///매장리스트////-->
		<div id="list_store">
			<p><span class="num_store">3개</span>의 매장이 검색되었습니다.</p>
			<div class="l_store">
				<ul id="stores">
					<li>
						<div class="store_info">
							<h4>롯데백화점 본점</h4>
							<p>서울 중구 을지로 30 롯데백화점 본점 1F</p>
							<p><span class="stinfo_tit">운영시간</span>	10:30~20:00</p>
							<p><span class="stinfo_tit">전화번호</span>  02-6250-8500</p>
						</div>
					</li>
					<li>
						<div class="store_info">
							<h4>신세계면세점 명동점</h4>
							<p>서울 중구 퇴계로 77 신세계면세점 명동점 8F</p>
							<p><span class="stinfo_tit">운영시간</span>	매장에 문의하세요</p>
							<p><span class="stinfo_tit">전화번호</span>  02-6370-4012</p>
						</div>
					</li>
					<li>
						<div class="store_info">
							<h4>신세계백화점 본점</h4>
							<p>서울 중구 소공로 63 신세계백화점 본점 1F</p>
							<p><span class="stinfo_tit">운영시간</span>	10:30~20:30</p>
							<p><span class="stinfo_tit">전화번호</span>  02-6250-8530</p>
						</div>
					</li>
				</ul><!--stores-->
			</div><!--l_store-->
		</div><!--list_store-->
		
		<!--///지도////-->
		<div id="map_store">
		
		</div><!--map_store-->
	</div><!--list_store_wrap-->
</div><!--con_wrap-->

<!--////////////////////하단//////////////////////-->
<div id="bottom_wrap">
	<footer id="bottom">
		<p><a href="index.html"><img src="images/bottom/logo_white.png" alt="하단로고"></a></p>
		<div id="info1">
			<address>
				사업자 등록번호 : 106-81-59905<br>
				대표이사 : 마크제임스에르켁<br>
				본사 :  04542 서울 중구 청계천로 100 (수표동, 시그니쳐타워, 서관 17층)<br>
				전화번호 : 02-540-6270 &nbsp; &nbsp; &nbsp; &nbsp;  팩스번호 : 02-540-6271<br>
			</address>
		</div><!--info1-->
		<div id="info2">
			<ul id="info2_menu">
				<li><a href="cscenter.html">고객센터</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보처리방침</a></li>
			</ul><!--info2_menu-->
			<ul id="sns">
				<li class="sns_img">
					<a href="https://www.youtube.com/user/OfficialTiffanyAndCo">
						<img src="images/bottom/sns1.png" alt="유튜브1" width="32" height="32">
						<img src="images/bottom/sns1_hover.png" alt="유튜브2" width="32" height="32" class="sns_hover">
					</a>
				</li><!--sns_img-->	
				<li class="sns_img">
					<a href="https://www.instagram.com/tiffanyandco/">
						<img src="images/bottom/sns2.png" alt="인스타그램1" width="32" height="32">
						<img src="images/bottom/sns2_hover.png" alt="인스타그램2" width="32" height="32" class="sns_hover">
					</a>
				</li><!--sns_img-->		
				<li class="sns_img">
					<a href="https://pf.kakao.com/_xlieQj">
						<img src="images/bottom/sns3.png" alt="카카오톡1" width="32" height="32">
						<img src="images/bottom/sns3_hover.png" alt="카카오톡2" width="32" height="32" class="sns_hover">
					</a>
				</li><!--sns_img-->			
			</ul><!--sns-->
		</div><!--info2-->
		<p id="copyright">copyright&copy;2021.T&amp;CO alrights reserved</p>
	</footer><!--bottom-->
</div><!--bottom_wrap-->	
</body>
</html>