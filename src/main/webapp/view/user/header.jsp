<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>
<!--상단-->
<div id="top_wrap">
	<header id="top">
		<!--js태그 추가자리-->
		<div id="top_bar">
			<h1><a href="#"><img src="https://blueup.s3.ap-northeast-2.amazonaws.com/main/blueuplogo.png" alt="블루업"></a></h1>
			<nav id="top_navi">
				<ul id="mtop">
					<li class="selected"><a href="#"  data-atitle="세일상품" data-btitle="Gift">SALES</a></li>
					<li class="selected"><a href="#" data-atitle="아우터" data-btitle="Collection">OUTER</a>
						<ul class="sub">
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">가디건</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">자켓/베스트</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">점퍼</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">코트</a></li>
						</ul>
					</li>
					<li class="selected"><a href="#" data-atitle="상의" data-btitle="Collection">TOP</a>
						<ul class="sub">
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">티셔츠</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">니트</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">맨투맨/후드</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">셔츠/블라우스</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">크롭</a></li>
						</ul>
					</li>
					<li class="selected"><a href="#" data-atitle="바지" data-btitle="Collection">BOTTOM</a>
						<ul class="sub">
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">긴바지</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">트레이닝</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">반바지</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">스커트</a></li>
						</ul>
					</li>
					<li class="selected"><a href="#" data-atitle="기타" data-btitle="Collection">ACC</a>
						<ul class="sub">
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">Necklace</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">Earrings</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">Rings</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">Bracelet</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">BAGS/SHOES</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">CAP</a></li>
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">ETC</a></li>
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