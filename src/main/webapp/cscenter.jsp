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
	<script src="js/cscenter.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/cscenter.css">
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
			<p><img src="images/csc/cscenter.png" alt="고객센터메인배너" width="1920" height="480"></p>
			<div id="ban_con">
				<h2>고객센터</h2>
				<p>진실한 마음과 친절한 태도로 무엇이든 도와드리겠습니다. </p>
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
			<li>고객센터</li>
		</ul>
	</div><!--page-->
</div><!--page wrap:페이지위치 전체-->

<!--////////고객센터 내용////////-->
<div id="con_wrap">
	<div id="cs_wrap">
	<!--/////내용왼쪽/////-->
    <div id="con_left">

    <!--////고객센터 리스트////-->
      <div id="list_wrap">
        <ul id="list1">
          <li><a href="#">공지사항</a></li>
          <li class="list_li2"><a href="#" id="list_lia">고객 서비스</a><span>+</span>
            <div>
              <ul>
                <li><a href="#">문의하기</a></li>
                <li><a href="#">맞춤서비스</a></li>
               <li><a href="#">제품 관리&amp;수리</a></li>
                <li><a href="#">기프트상담</a></li>              
              </ul>
            </div>
          </li><!--고객서비스-->
          <li><a href="#">자주 찾는 질문</a></li>
          <li class="list_last"><a href="#">카탈로그</a></li>
        </ul><!--list-->
        <ul id="list2">
          <li><img src="images/csc/call.png" alt="고객센터전화번호" width="30" height="31"></li>
          <li>블루업 고객센터</li>
          <li>02-123-4567</li>
          <li>평일 15:00 ~ 22:00</li>
          <li>저녁: 오후 18:20 ~ 19:07</li>
          <li>토, 일 공휴일 휴무</li>
        </ul>
      </div><!--list_wrap-->
    </div><!--con_left-->

    <div id="con_right">

  <!--//////고객서비스//////-->
      <div id="service_wrap">
        <figure class="service">
          <img src="images/csc/service1.png" alt="문의하기" width="54" height="45">
          <figcaption>문의하기</figcaption>
        </figure><!--service-->
        <figure class="service">
          <img src="images/csc/service2.png" alt="맞춤서비스" width="45" height="45">
          <figcaption>맞춤서비스</figcaption>
        </figure><!--service-->
        <figure class="service">
          <img src="images/csc/service3.png" alt="제품관리" width="45" height="45">
          <figcaption>제품관리 &amp; 수리</figcaption>
        </figure><!--service-->
        <figure class="service">
          <img src="images/csc/service4.png" alt="기프트상담" width="44" height="45">
          <figcaption>기프트상담</figcaption>
        </figure><!--service-->
      </div><!--service_wrap-->

      <!--//////공지사항///////-->
      <div id="notice">
        <div class="no_tit">
          <h3>공지사항 </h3>
          <p class="all"><a href="#">전체보기&nbsp; &#9002;</a></p>
        </div><!--no_tit-->
        <ul>
          <li><a href="#">[공지사항] 개인정보 처리방침 이용약관 변경안내 <span class="nt_txt">2021-11-01</span></a></li>
          <li><a href="#">[공지사항] 택배 파업으로 인한 배송지연 <span class="nt_txt">2021-11-01</span></a></li>
          <li><a href="#">[공지사항] IOS 카카오 페이 결제오류 안내 <span class="nt_txt">2021-11-01</span></a></li>
        </ul>
      </div><!--notice-->

      <!--//////카탈로그///////-->
      <div id="catalog">
        <div class="no_tit">
          <h3>카탈로그</h3>
          <p class="all"><a href="#">전체보기&nbsp; &#9002;</a></p>
        </div><!--no_tit-->
        <figure id="catalog_con">
          <img src="images/csc/catalog1.png" alt="카탈로그" width="96" height="160">
          <img src="images/csc/catalog2.png" alt="카탈로그" width="96" height="160">
          <figcaption><a href="#">2021 <br>THIS IS <br>BLUE UP</a> </figcaption>
        </figure>
      </div><!--catalog-->

      <!--//////자주찾는 질문///////-->
      <div id="search_wrap">
        <div class="no_tit">
          <h3>자주 찾는 질문</h3>
          <p class="all"><a href="#">전체보기&nbsp; &#9002;</a></p>
        </div><!--no_tit-->
        <div id="sear_wrap">
          <form id=sear_form action="#" method="get">
            <label for="sear_input">자주 찾는 질문 검색</label>
            <input type="text" title="검색어 입력" placeholder="검색어를 입력해주세요. " id="sear_input">
            <p class="sear_btn"><button type="submit" id="sear_btn">검색</button></p>
          </form><!--sear_form-->
          <!--///자주찾는 질문 Top5///-->
          <div class="top5_wrap">
            <h4>자주찾는 질문 Top5</h4>
            <dl>
              <dt><p><span class="t5_num">1</span><span class="top_tit">교환/환불/AS</span>AS 접수는 어떻게 해야하나요?</p></dt>
              <dd>
                - 블루업 매장에 방문하시어 접수가 가능합니다. (매장 방문시 보증서 or 구매 내역서 지참)
              </dd>
            </dl>
            <dl>
              <dt><p><span class="t5_num">2</span><span class="top_tit">교환/환불/AS</span>교환 / 환불은 어떻게 해야하나요?</p></dt>
              <dd>
                - 일반적으로 상품교환권이나 제품의 교환을 위해서는 제품을 구입한 매장에서 지정한 기한 이내에 접수해야합니다. <br>
                - 교환이나 환불과 관련된 궁금한 사항은 가까운 매장이나 고객센터로 문의 바랍니다.
              </dd>
            </dl>
            <dl>
              <dt><p><span class="t5_num">3</span><span class="top_tit">상품</span>블루업 제품은 어떻게 주문하나요?</p></dt>
              <dd>
                - 오프라인 : 종로 매장을 방문하여 블루업제품을 직접 경험해보시기 바랍니다. <br>
                - 온라인 : 블루업 홈페이지를 통해 블루업 제품을 구매할 수 있습니다.
              </dd>
            </dl>
            <dl>
              <dt><p><span class="t5_num">4</span><span class="top_tit">상품</span>옷은 어떻게 관리하나요?  </p></dt>
              <dd>
                - 실크로 제작된 상품들은 전문적인 관리를 정기적으로 받는 것이 좋습니다. <br>
                - 블루업 주얼리에 비연마성 클리너를 가끔씩만 사용할 것을 권장합니다. <br>
                - 백들은 전문 세탁점에 가서 세탁을 하시길 바랍니다.
              </dd>
            </dl>
            <dl>
              <dt><p><span class="t5_num">5</span><span class="top_tit">상품</span>티파니 블루박스를 별도로 구매할 수 있나요?</p></dt>
              <dd>
                - 블루업 패키지는 블루업 제품을 구매한 경우에만 제공됩니다.
              </dd>
            </dl>
          </div><!--top5_wrap-->
        </div><!--search_wrap-->
      </div><!--sear_wrap-->
    </div><!--con_right-->
  </div><!--cs_wrap-->
</div><!--con_wrap-->

<!--/////////하단/////////-->
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