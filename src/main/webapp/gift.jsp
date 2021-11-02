<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>티파니앤코 (리뉴얼)</title>
	<script src="js/jquery-1.12.4.min.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script>
	<script src = "js/top.js"></script>
	<script src="js/gift.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/gift.css">
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
				<p><img src="images/gift/gift.png" alt="기프트메인배너" width="1920" height="480"></p>
				<div id="ban_con">
					<h2>Gift</h2>
					<p>사랑하는 사람을 위해 고급스럽고 우아한 선물을 준비해보세요.</p>
				</div><!--ban_con 배너 안내용-->
		</div><!--main_ban- 메인 상단 배너 전체-->
	</div><!--top_wrap2-->
</div><!--top_wrap-->

<!--//////페이지위치///////-->
<div id="page_wrap">
	<div id="page">
		<ul id="r_page">
			<li>Home</li>
			<li><img src="images/icon/page_arrow.png" alt="페이지화살표1" width="5" height="9"></li>
			<li>Gift</li>
			<li><img src="images/icon/page_arrow.png" alt="페이지화살표1" width="5" height="9"></li>
			<li>전체</li>
		</ul>
	</div><!--page-->
</div><!--page wrap:페이지위치 전체-->


<!--////내용////-->
<div id="con_wrap">
	<!--/////////best gift///////-->
	<div id="best">
		<h3>Best gift</h3>
    <p class="prev">
      <img src="images/gift/prev.png" alt="이전" width="16" height="28">
    </p><!--prev 이전-->
    <p class="next">
      <img src="images/gift/next.png" alt="다음" width="16" height="28">
    </p><!--next 다음-->

		<div id="best_con">
		  <div class="gift_item">
       
        <div class="item">
          <div class ="item_img">
            <img src="images/gift/gift1.jpg" alt="블루 하트 펜던트1" width="300" height="300">
            <div class="item_hover">
              <img src="images/gift/gift1_hover.jpg" alt="블루 하트 펜던트2" width="300" height="300">
              <p><span class="h_txt">실버소재 / 18인치</span> ￦350,000</p>
            </div><!--item_hover : 마우스 오버시-->
          </div><!--item_img :gift 이미지-->
          <p>리턴 투 티파니</p>
          <p>티파니 블루 하트 펜던트</p>
          <p class="heart">
            <img src="images/gift/heart.png" alt="찜1" width="25" height="23">
          </p><!--heart:찜하기 하트버튼-->
        </div><!--item: gift1-->
        <div class="item">
          <div class ="item_img">
            <img src="images/gift/gift2.jpg" alt="태그 펜던트1" width="300" height="300">
            <div class="item_hover">
              <img src="images/gift/gift2_hover.jpg" alt="태그 펜던트2" width="300" height="300">
              <p><span class="h_txt">실버소재 / 24인치</span> ￦740,000</p>
            </div>
          </div>
          <p>Tiffany 1837<span class="sup">TM</span></p>
          <p>Makers I.D. 태그 펜던트</p>
          <p class="heart">
            <img src="images/gift/heart.png" alt="찜1" width="25" height="23">
          </p><!--heart:찜하기 하트버튼-->
        </div><!--item: gift2-->
        <div class="item">
          <div class ="item_img">
            <img src="images/gift/gift3.jpg" alt="체인 팔찌1" width="300" height="300">
            <div class="item_hover">
              <img src="images/gift/gift3_hover.jpg" alt="체인 팔찌2" width="300" height="300">
              <p><span class="h_txt">실버소재 / 8인치</span> ￦1,360,000</p>
            </div>
          </div>
          <p>Tiffany 1837<span class="sup">TM</span></p>
          <p>Makers I.D. 체인 팔찌</p>
          <p class="heart">
            <img src="images/gift/heart.png" alt="찜1" width="25" height="23">
          </p><!--heart:찜하기 하트버튼-->
        </div><!--item: gift3-->
			
			
        <div class="item">
          <div class ="item_img">
            <img src="images/gift/gift4.jpg" alt="블루 하트 펜던트1" width="300" height="300">
            <div class="item_hover">
              <img src="images/gift/gift4_hover.jpg" alt="블루 하트 펜던트2" width="300" height="300">
              <p><span class="h_txt">로즈골드소재</span> ￦2,520,000</p>
            </div><!--item_hover : 마우스 오버시-->
          </div><!--item_img :gift 이미지-->
          <p>Tiffany T</p>
          <p>T1링</p>
          <p class="heart">
            <img src="images/gift/heart.png" alt="찜1" width="25" height="23">
          </p><!--heart:찜하기 하트버튼-->
        </div><!--item: gift4-->
        <div class="item">
          <div class ="item_img">
            <img src="images/gift/gift5.jpg" alt="태그 펜던트1" width="300" height="300">
            <div class="item_hover">
              <img src="images/gift/gift5_hover.jpg" alt="태그 펜던트2" width="300" height="300">
              <p><span class="h_txt">스털링 실버소재</span>￦1,050,000</p>
            </div>
          </div>
          <p>Tiffany Hardwear</p>
          <p>담수 진주 링</p>
          <p class="heart">
            <img src="images/gift/heart.png" alt="찜1" width="25" height="23">
          </p><!--heart:찜하기 하트버튼-->
        </div><!--item: gift5-->
        <div class="item">
          <div class ="item_img">
            <img src="images/gift/gift6.jpg" alt="체인 팔찌1" width="300" height="300">
            <div class="item_hover">
              <img src="images/gift/gift6_hover.jpg" alt="체인 팔찌2" width="300" height="300">
              <p><span class="h_txt">18K 골드소재</span> ￦5,500,000</p>
            </div>
          </div>
          <p>Tiffany 1837</p>
          <p>Makers 블랙 오닉스 시그넷 링</p>
          <p class="heart">
            <img src="images/gift/heart.png" alt="찜1" width="25" height="23">
          </p><!--heart:찜하기 하트버튼-->
        </div><!--item: gift6-->
        
			</div> <!--gift_item-->	
		</div><!--best_con-->
	</div><!--best-->

	<!--//////선물카테고리//////-->
	<div id="rec_wrap">
		<h3>선물 카테고리 </h3>
		<div id="rec">
			<div class="rec">
				<img src="images/gift/rec1.jpg" alt="생일" width="300" height="375">
				<div class="rec_btn">
					<p>생일 </p>
					<img src="images/gift/next_white.png" alt="자세히보기" width="11" height="20">
				</div>
			</div><!--rec : 생일-->
			<div class="rec">
				<img src="images/gift/rec2.jpg" alt="기념일" width="300" height="375">
				<div class="rec_btn">
					<p>기념일 </p>
					<img src="images/gift/next_white.png" alt="자세히보기" width="11" height="20">
				</div>
			</div><!--rec : 기념일-->
			<div class="rec">
				<img src="images/gift/rec3.png" alt="맞춤형" width="300" height="375">
				<div class="rec_btn">
					<p>맞춤형</p>
					<img src="images/gift/next_white.png" alt="자세히보기" width="11" height="20">
				</div>
			</div><!--rec : 맞춤형-->
			<div class="rec">
				<img src="images/gift/rec4.jpg" alt="여성" width="300" height="375">
				<div class="rec_btn">
					<p>여성</p>
					<img src="images/gift/next_white.png" alt="자세히보기" width="11" height="20">
				</div>
			</div><!--rec : 여성-->
			<div class="rec">
				<img src="images/gift/rec5.jpg" alt="남성" width="300" height="375">
				<div class="rec_btn">
					<p>남성</p>
					<img src="images/gift/next_white.png" alt="자세히보기" width="11" height="20">
				</div>
			</div><!--rec : 남성-->
			<div class="rec">
				<img src="images/gift/rec6.png" alt="홈" width="300" height="375">
				<div class="rec_btn">
					<p>홈</p>
					<img src="images/gift/next_white.png" alt="자세히보기" width="11" height="20">
				</div>
			</div><!--rec : 홈-->
		</div><!--rec 전체-->
	</div><!--rec_wrap : 선물추천 카테고리-->
	
	<!--///////gift service//////-->
	<div id="ser_wrap">
		<div id="ser_con">
			<h3>GIFT SERVICE</h3>
			<div id="ser_con2">
				<figure class="ser">
					<img src="images/gift/ser1.png" alt="포장" width="34" height="35">
					<figcaption>포장 서비스
						<span class="ser_tool">구매하신 모든 티파니 제품은 보증서와 함께
						시그니처 블루박스로 포장해드립니다.
						</span>
					</figcaption>
					
				</figure>
				<figure class="ser">
					<img src="images/gift/ser2.png" alt="배송" width="55" height="35">
					<figcaption>배송 서비스
						<span class="ser_tool">일반제품 : 우체국 택배를 통해 배송해드립니다.
							500만원 이상 : 발렉스를 통해 배송해드립니다.
						</span>
					</figcaption>
				</figure>
				
				<figure class="ser">
					<img src="images/gift/ser3.png" alt="맞춤" width="44" height="35">
					<figcaption>맞춤 서비스
						<span class="ser_tool">고객님의 근처 가까운 매장에서 맞춤 서비스를
							진행해드립니다.

							자세한 사항 / 문의는 고객센터(02-540-6270)에
							연락주시기바랍니다.
						</span>
					</figcaption>
				</figure>
			</div>
		</div><!--ser_con: 서비스 내용-->
	</div><!--ser_wrap : 서비스 전체-->
</div><!--con_wrap-->


<!--///////하단///////-->
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