<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>BLUEUP</title>
   <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
   <script src = "${pageContext.request.contextPath}/js/top.js"></script>
   <script src="${pageContext.request.contextPath}/js/index.js"></script>
   <link rel="shortcut icon" type="${pageContext.request.contextPath}/image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="${pageContext.request.contextPath}/images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="${pageContext.request.contextPath}/images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>
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
                  <li class="top_btn1"><img src="${pageContext.request.contextPath}/images/top/login.png" alt="로그인" width="16" height="16"><br><span>login</span>
                  <!-- 
                     <ul class="btn_sub">
                        <li><img src="images/top/diamond.png" alt="다이아몬드" width="80" height="55"></li>
                        <li>티파니 온라인회원이 되어<br>특별한 혜택을 경험해보세요.</li>
                        <li><a href="login.html">로그인</a></li>
                        <li><a href="join.html">회원가입</a></li>
                     </ul>
                   -->
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
</div><!--top_wrap-->
<!--//////티파니 아이템//////-->
<div id="item_wrap">
  <div id="item">
    <div id="item_con">
      <h2  >BlueUp Item</h2>
      <p>블루업만의 독특하면서 화려한 아름다운 디자인.<br>
          트랜디 함을 갖춘 아이템들을 선보입니다.</p>
      <p class="btn1"><a href="item.html">MORE +</a></p>
    </div>
    <div id="item_img" >
      <div>
        <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg" alt="주얼리" width="255" height="255" >
        <div class="over">
          <p>TOP</p>      
        </div><!--over-->
      </div>
      <div>
        <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg" alt="시계" width="255" height="255">
        <div class="over">
          <p>OUTER</p>      
        </div><!--over-->
      </div>
      <div>
        <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg" alt="향수" width="255" height="255">
        <div class="over">
          <p>PANTS</p>      
        </div><!--over-->
      </div>
      <div>
        <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/vvvvvv.jpg" alt="악세사리" width="255" height="255">
        <div class="over">
          <p>ACC</p>      
        </div><!--over-->      
      </div>
    </div><!--item_img-->
  </div><!--item-->
</div><!--item_wrap-->

<!--//////스페셜 기프트//////-->
<div id="gift">
   <p><img src="${pageContext.request.contextPath}/images/index/gift.png" alt="선물" width="1920" height="500"></p>
   <div id="gift_con" >
      <h2>Special Gift</h2>
      <p>블루박스 안에 있는 뜻깊은 선물로
   사랑과<br>감사의 마음을 표현해보세요.</p>
      <p class="btn2"><a href="gift.html">MORE +</a></p>
   </div><!--gift_con-->
</div><!--gift-->

<!--//////컬렉션//////-->
<div id="collection">   
   <h2>Collection</h2>
   <div id="coll_wrap">
      <p class="prev"><img src="${pageContext.request.contextPath}/images/index/prev.png" alt="이전" width="16" height="28"></p>
      <p class="next"><img src="${pageContext.request.contextPath}/images/index/next.png" alt="이전" width="16" height="28"></p>
      <div id="coll_s">
         <div id="coll_imgs">
            <ul class="coll">
               <li><a href="collection.html">
                     <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg" alt="티파니티" width="250" height="335">
                     <div class="img_txt">
                        <p>Tiffany T</p>
                        <p>티셔츠</p>   
                     </div><!--img_txt--></a>
               </li>
               <li><a href="collection.html">
                     <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/vvvvvv.jpg" alt="아틀라스" width="250" height="335">
                     <div class="img_txt">
                        <p>Atlas</p>
                        <p>아틀라스</p>
                     </div><!--img_txt--></a>
               </li>
               <li><a href="collection.html">
                     <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg" alt="티파니키" width="250" height="335">
                     <div class="img_txt">
                        <p>티셔츠</p>
                        <p>티셔츠</p>
                     </div><!--img_txt--></a>
               </li>
               <li><a href="collection.html">
                     <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg" alt="리턴투티파니" width="250" height="335">
                     <div class="img_txt">
                        <p>Return to Tiffany</p>
                        <p>리턴투티파니</p>
                     </div><!--img_txt--></a>
               </li>
               <li><a href="collection.html">
                     <img src="images/index/coll5.png" alt="Hardwear" width="250" height="335">
                     <div class="img_txt">
                        <p>Tiffany HardWear</p>
                        <p>티파니 하드웨어</p>
                     </div><!--img_txt--></a>
               </li>
               <li><a href="collection.html">
                     <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/vvvvvv.jpg" alt="팔로마피카소" width="250" height="335">
                     <div class="img_txt">
                        <p>Paloma Picasso</p>
                        <p>팔로마피카소</p>
                     </div><!--img_txt--></a>
               </li>
               <li><a href="collection.html">
                     <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg" alt="엘사퍼레티" width="250" height="335">
                     <div class="img_txt">
                        <p>Elsa peretti</p>
                        <p>엘사퍼레티</p>
                     </div><!--img_txt--></a>
               </li>
               <li><a href="collection.html">
                     <img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/vvvvvv.jpg" alt="빅토리아" width="250" height="335">
                     <div class="img_txt">
                        <p>Victoria</p>
                        <p>빅토리아</p>
                     </div><!--img_txt--></a>
               </li>
            </ul><!--coll-->
         </div><!--coll_imgs-->
      </div><!--coll_s-->
   </div><!--coll_wrap-->
</div><!--collection-->
<!--/////브랜드스토리//////-->
<div id="brand">
   <p id="brand_img"><img src="${pageContext.request.contextPath}/images/index/brand.png" alt="브랜드스토리" width="1011"  height="684"></p>
   <div id="brand_con">
      <h2>Brand story</h2>
      <p>모든 이야기에는 시작이 있습니다. <br>세계적인 럭셔리 디자인 하우스로 거듭나게 된 과정을 살펴보세요</p>
      <p class="btn1"><a href="brand.html">MORE +</a></p>
   </div>
</div>

<!--/////매장안내, 고객센터//////-->
<div id="etc">
   <p><img src="${pageContext.request.contextPath}/images/index/store_bg.png" alt="배경" width="1920" height="400"></p>
   <div class="store"><a href="store.html">
      <p><img src="${pageContext.request.contextPath}/images/index/store.png" alt="매장안내" width="48" height="62"></p>
      <p>매장안내</p></a>
   </div><!--store-->
   <div class="cs"><a href="getNoticeList.do">
      <p><img src="${pageContext.request.contextPath}images/index/cscenter.png" alt="고객센터" width="60" height="62"></p>
      <p>고객센터</p></a>
   </div><!--cs-->
</div><!--etc-->
<%@ include file="footer.jsp" %>