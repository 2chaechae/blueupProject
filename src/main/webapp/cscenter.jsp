<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
          <li><a href="#">자주 찾는 질문</a></li>
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
      <!--//////공지사항///////-->
     <div id="search_wrap">
          <!--///자주찾는 질문 Top5///-->
          <div class="top5_wrap">
          	<br>
            <h4>공지사항</h4>
            	 <dl>
	              <dt>
	              	<p>
	              	  <span class="t5_num">NO.</span>
		              <span class="top_tit">조회수</span>
		              <span class="top_tit">공지유형</span>제목
		            </p>
		            </dt>
	            </dl>
            <c:forEach var="notice" items="${noticeList}" varStatus="status">
	            <dl>
	              <dt>
	              	<p>
	              	  <span class="t5_num">${status.count}</span>
		              <span class="top_tit">${notice.notice_cnt}</span>
		              <span class="top_tit">${notice.notice_type}</span>${notice.notice_title}
		            </p>
		            </dt>
	              <dd>
	              		${notice.notice_content}
	              </dd>
	            </dl>
	        </c:forEach>
	        <!--//for문//-->
          </div>
         </div>
      <div id="search_wrap">
          <!--///자주찾는 질문 Top5///-->
          <div class="top5_wrap">
          	<br>
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