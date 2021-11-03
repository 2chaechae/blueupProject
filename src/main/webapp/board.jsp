
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>BlueUP</title>
   <script src="js/jquery-1.12.4.min.js"></script>
   <script src = "js/top.js"></script>
   <script src="js/index.js"></script>
   <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
   <link rel="stylesheet" href="css/reset.css">
   <link rel="stylesheet" href="css/index.css">
   <link rel="stylesheet" href="css/board.css">
   <link rel="stylesheet" href="css/cscenter.css">
</head>
<body>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>
<!--상단-->
<div id="top_wrap">
<!--
   <div id="top_wrap2">
      <div id="banner">
         <video autoplay muted preload="auto" loop poster="images/index/main.png">
            <source src="video/tcvid.mp4" type="video/mp4">
         </video>
      </div><!--banner- 메인 상단 동영상
    <div id="ban_btn">
      <p class="play"><img src="images/index/play.png" alt="play" width="16" height="17"></p>
      <p class="stop"><img src="images/index/pause.png" alt="pause" width="16" height="17"></p>
    </div>
    -->
      <header id="top">
         <!--js태그 추가자리-->
         <div id="top_bar">
            <h1><a href="#"><img src="https://blueup.s3.ap-northeast-2.amazonaws.com/main/blueuplogo.png" alt="블루업" width="168" height="22"></a></h1>
            <nav id="top_navi">
               <ul id="mtop">
                  <li><a href="#" data-atitle="신상품" data-btitle="Brand">NEW IN</a></li>
                  <li><a href="#" data-atitle="베스트상품" data-btitle="Item">BEST 50</a></li>
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
                  <li><a href="#" data-atitle="위시리스트" data-btitle="Collection">WISH</a></li>
                  <li><a href="#" data-atitle="커뮤니티" data-btitle="Collection">COMMUNITY</a>
                     <ul class="sub">
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">QnA</a></li>
                        <li><a href="#">REVIEW</a></li>
                     </ul>
                  </li>
               </ul>
            </nav><!--top_navi 주메뉴-->
            <div id="quick">
               <!--js태그 추가자리-->
               <ul>
                  <li class="top_btn1"><img src="images/top/login.png" alt="로그인" width="16" height="16"><br><span>login</span>
                  <!-- 
                     <ul class="btn_sub">
                        <li><img src="images/top/diamond.png" alt="다이아몬드" width="80" height="55"></li>
                        <li>티파니 온라인회원이 되어<br>특별한 혜택을 경험해보세요.</li>
                        <li><a href="login.html">로그인</a></li>
                        <li><a href="join.html">회원가입</a></li>
                     </ul>
                   -->
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
</div><!--top_wrap-->
<!--//////페이지위치///////-->
<div id="page_wrap">
	<div id="page">
		<ul id="r_page">
			<li>Home</li>
			<li><img src="images/icon/page_arrow.png" alt="페이지화살표1" width="5" height="9"></li>
			<li>Q&A</li>
		</ul>
	</div><!--page-->
</div><!--page wrap:페이지위치 전체-->
    <div class="board_wrap">
        <h2 class="board_title">상품문의</h2>
        <form action="">
            <div class="black_box select_area">
                <select name="" id="">
                    <option value="1">[상품문의]</option>
                    <option value="2">[배송문의]</option>
                </select>
            </div>
            <div class="black_box writer">
                <input class="input_ea" type="text" placeholder="작성자">
            </div>
            <div class="black_box content_area">
                <textarea class="contents" name="" id="" placeholder="내용을 입력해주세요."></textarea>
            </div>
            <div class="black_box file">
                <input class="input_ea" type="file">
            </div>
            <div class="black_box passwords">
                <input class="input_ea password" type="password" placeholder="비밀번호">
            </div>
            <div class="radio_boxs">
                <input id="secure1" type="radio" name="open" checked>
                <label for="secure1">공개글</label>
                <input id="secure2" type="radio" name="open">
                <label for="secure2">비밀글</label>
            </div>
            <div class="black_box agree">
                <textarea class="agree" name="" id="">■ 개인정보의 수집·이용 목적서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적
■ 수집하려는 개인정보의 항목이름, 주소, 연락처 등 ■ 개인정보의 보유 및 이용 기간회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.
                </textarea>
                <div class="desc">
                    <span>개인정보 수집 및 이용에 동의하십니까?</span>
                    <input id="checked" type="checkbox" name="">
                    <label for="checked">개인정보처리방침 동의</label>
                </div>
            </div>

            <div class="buttons_area">
                <button class="board_btn cancle">취소</button>
                <button class="board_btn confirm">등록</button>
            </div>
        </form>
    </div><!--end board_wrap-->
<%@ include file="/view/user/footer.jsp" %>