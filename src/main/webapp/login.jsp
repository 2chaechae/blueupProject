<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<script src="js/jquery-1.12.4.min.js"></script>
<script src = "js/top.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/login.css">	
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
	</div><!--top_wrap2-->
</div><!--top_wrap-->

<!--//////페이지위치///////-->
<div id="page_wrap">
	<div id="page">
		<ul id="r_page">
			<li>Home</li>
			<li><img src="images/icon/page_arrow.png" alt="페이지화살표1" width="5" height="9"></li>
			<li>Login</li>
		</ul>
	</div><!--page-->
</div><!--page wrap:페이지위치 전체-->

<!--///////로그인전체////////-->
<div id="con_wrap">
<!--///////로그인내용////////-->
	<div id="login_wrap">
		<div id="login_tit">
			<h2>Login</h2>
			<p>Blueup에 오신 것을 환영합니다. <br>로그인 하시면 더욱 편리하게 홈페이지를 이용하실 수 있습니다.</p>
		</div><!--login_tit-->
		<form action="login.asp" method="post">
			<div id="login_l">
				<p class="u_id"><input type="text" placeholder="아이디 입력" title="아이디"></p>
				<p class="u_pwd"><input type="password" placeholder="비밀번호 입력" title="비밀번호"></p>
				<p class="login_chk"><input type="checkbox" name="save" value="아이디 저장" id="chk"><label for="chk">아이디저장</label></p>
				<p class="login"><input type="button" value="로그인"></p>
				<ul class="login_list">
					<li><a href="#">아이디 / 비밀번호 찾기</a></li>
					<li><a href="join.html">회원가입</a></li>
				</ul><!--login_list-->
			</div><!--login_l 회원로그인-->
			<div class="login_r">
				<h3>SNS 간편로그인</h3>
				<ul class="btn_wrap">
					<li><input type="button" value="카카오톡으로 로그인"></li>
					<li><input type="button" value="네이버로 로그인"></li>
				</ul>
			</div><!--login_r SNS간편로그인-->
		</form>
	</div><!--login_wrap-->
</div><!--con_wrap-->

<!--/////////////하단///////////////-->
<%@ include file="footer.jsp" %>