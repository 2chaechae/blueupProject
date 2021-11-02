<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--맨위로 가기 맨 아래로 가기-->
	<p>
		<img src="images/icon/scrollup.png" alt="맨위로" width="40" height="41"
			class="up_btn">
	</p>
	<p>
		<img src="images/icon/scrolldown.png" alt="맨아래로" width="40"
			height="41" class="down_btn">
	</p>

	<!--////////////상단//////////////-->
	<div id="top_wrap">
		<div id="top_wrap2">
			<header id="top">
				<!--js태그 추가자리-->
				<div id="top_bar">
					<h1>
						<a href="index.html"><img src="images/top/logo.png"
							alt="티파니앤코" width="168" height="22"></a>
					</h1>

					<nav id="top_navi">
						<ul id="mtop">
							<li><a href="brand.html" data-atitle="브랜드"
								data-btitle="Brand">Brand</a>
								<ul class="sub">
									<li><a href="brand.html">티파니 스토리</a></li>
									<li><a href="#">지속가능성</a></li>
									<li><a href="#">사이트 맵</a></li>
								</ul></li>
							<li><a href="item.html" data-atitle="제품" data-btitle="Item">Item</a>
								<ul class="sub">
									<li><a href="item.html">BEST</a></li>
									<li><a href="#">JEWERLY</a></li>
									<li><a href="#">WATCH</a></li>
									<li><a href="#">PERFUME</a></li>
									<li class="overline"><a href="#">HOME &amp; ACC</a></li>
								</ul></li>
							<li><a href="gift.html" data-atitle="선물" data-btitle="Gift">Gift</a>
								<ul class="sub">
									<li><a href="gift.html">전체</a></li>
									<li><a href="#">생일</a></li>
									<li><a href="#">기념일</a></li>
									<li><a href="#">맞춤형</a></li>
									<li><a href="#">여성</a></li>
									<li><a href="#">남성</a></li>
									<li><a href="#">홈</a></li>
								</ul></li>
							<li><a href="collection.html" data-atitle="기획전"
								data-btitle="Collection">Collection</a>
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
								</ul></li>
						</ul>
					</nav>
					<!--top_navi 주메뉴-->
					<div id="quick">
						<!--js태그 추가자리-->
						<ul>
							<li><a href="store.html" title="매장안내">매장안내</a></li>
							<li><a href="cscenter.html" title="고객센터">고객센터</a></li>
							<li class="top_btn1"><img src="images/top/login.png"
								alt="로그인" width="16" height="16"><br>
							<span>login</span>
								<ul class="btn_sub">
									<li><img src="images/top/diamond.png" alt="다이아몬드"
										width="80" height="55"></li>
									<li>티파니 온라인회원이 되어<br>특별한 혜택을 경험해보세요.
									</li>
									<li><a href="login.html">로그인</a></li>
									<li><a href="join.html">회원가입</a></li>
								</ul></li>
							<li class="top_btn2"><img src="images/top/search.png"
								alt="상단바 검색" width="16" height="16"><br>
							<span>검색</span>
								<ul class="btn_sub2">
									<li><img src="images/top/seartop_btn.png" alt="검색드롭다운메뉴"
										width="40" height="40"></li>
									<li><input type="text" title="검색어 입력"
										placeholder="검색어를 입력해주세요. " id="seartop_input"></li>
									<li><button type="submit" id="seartop_btn">검색</button></li>
								</ul>
								<!--btn_sub2--></li>
							<!--top_btn2-->
						</ul>
					</div>
					<!--top_sub 서브메뉴-->
				</div>
				<!--top_bar-->
			</header>
			<!--top 상단전체-->
			<div id="banner">
				<p>
					<img src="images/item/banner2.jpg" alt="아이템메인배너" width="1920"
						height="700">
				</p>
				<div id="ban_con">
					<h2>TOP</h2>
					<p>새로운 상의를 만나보세요.</p>
				</div>
				<!--ban_con 배너 안 내용-->
			</div>
			<!--main_ban- 메인 상단 배너 전체-->
		</div>
		<!--top_wrap2-->
	</div>
	<!--top_wrap-->

	<!--//////페이지위치///////-->
	<div id="page_wrap">
		<div id="page">
			<ul id="r_page">
				<li>Home</li>
				<li><img src="images/icon/page_arrow.png" alt="페이지화살표1"
					width="5" height="9"></li>
				<li>Item</li>
				<li><img src="images/icon/page_arrow.png" alt="페이지화살표1"
					width="5" height="9"></li>
				<li>Best</li>
			</ul>
		</div>
		<!--page-->
	</div>
	<!--page wrap:페이지위치 전체-->

	<div id="con_wrap">
		<!--///////////////////item///////////////////////	-->
		<div id="item_wrap">
			<!--///////jewerly////////-->
			<div class="items">
				<h3>New</h3>
				<div class="item_con">
					<div class="item">
						<div class="item_img">
							<img
								src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/mtm.jpg"
								alt="맨투맨" width="300" height="300">
							<div class="item_hover">
								<img src="images/item/jewerly1_hover.png" alt="맨투맨" width="300"
									height="300">
								<p>
									<span class="h_txt">맨투맨</span> ￦23,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>맨투맨</p>
						<p>어디에나 착용가능한 맨투맨</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly1-->
					<div class="item">
						<div class="item_img">
							<img
								src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/vvvvvv.jpg"
								alt="니트" width="300" height="300">
							<div class="item_hover">
								<img src="images/item/jewerly2_hover.png" alt="더블드롭귀걸이2"
									width="300" height="300">
								<p>
									<span class="h_txt">니트</span> ￦32,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>니트</p>
						<p>쫀쫀한 니트재질</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly2-->
					<div class="item">
						<div class="item_img">
							<img
								src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg"
								alt="워머니트" width="300" height="300">
							<div class="item_hover">
								<img src="images/item/jewerly3_hover.png" alt="워머니트" width="300"
									height="300">
								<p>
									<span class="h_txt">니트소재</span> ￦28,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>워머니트</p>
						<p>워머니트</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly3-->
					<div class="item">
						<div class="item_img">
							<img
								src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/polartee.jpg"
								alt="워머니트" width="300" height="300">
							<div class="item_hover">
								<img src="images/item/jewerly3_hover.png" alt="T1 링2"
									width="300" height="300">
								<p>
									<span class="h_txt">니트소재</span> ￦28,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>워머니트</p>
						<p>워머니트</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly3-->
				</div>
				<!--item_con-->
				<p class="item_btn">
					<a href="jewerly.html">top 더보기</a>
				</p>
			</div>
			<!--items-->

			<!--///////watch////////-->
			<div class="items">
				<h3>Watch</h3>
				<div class="item_con">
					<div class="item">
						<div class="item_img">
							<img src="images/item/watch1.png" alt="스퀘어워치1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/watch1_hover.png" alt="스퀘어워치2" width="300"
									height="300">
								<p>
									<span class="h_txt">27mm / 남성용</span> ￦5,200,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>Tiffany 1837</p>
						<p>maker's 스퀘어 워치</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly1-->
					<div class="item">
						<div class="item_img">
							<img src="images/item/watch2.png" alt="핸드워치1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/watch2_hover.png" alt="핸드워치2" width="300"
									height="300">
								<p>
									<span class="h_txt">37.5mm / 남성용</span> ￦3,710,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>아틀라스2</p>
						<p>핸드 워치</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly2-->
					<div class="item">
						<div class="item_img">
							<img src="images/item/watch3.png" alt="T1 링1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/watch3_hover.png" alt="T1 링2" width="300"
									height="300">
								<p>
									<span class="h_txt">25mm / 여성용</span> ￦5,200,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>Tiffany T</p>
						<p>리미티드 에디션 라운드 워치</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly3-->
				</div>
				<!--item_con-->
				<p class="item_btn">
					<a href="jewerly.html">Watch 더보기</a>
				</p>
			</div>
			<!--items-->

			<!--///////perfume////////-->
			<div class="items">
				<h3>Perfume</h3>
				<div class="item_con">
					<div class="item">
						<div class="item_img">
							<img src="images/item/perfume1.png" alt="오드퍼퓸1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/perfume1_hover.png" alt="오드퍼퓸2"
									width="300" height="300">
								<p>
									<span class="h_txt">1.6온스 / 여성용</span> ￦153,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>Tiffany &amp; Love</p>
						<p>오드 퍼퓸</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly1-->
					<div class="item">
						<div class="item_img">
							<img src="images/item/perfume2.png" alt="오드트왈렛1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/perfume2_hover.png" alt="오드트왈렛2"
									width="300" height="300">
								<p>
									<span class="h_txt">3.0온스 / 남성용</span> ￦142,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>Tiffany &amp; Love</p>
						<p>오드 트왈렛</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly2-->
					<div class="item">
						<div class="item_img">
							<img src="images/item/perfume3.png" alt="T1 링1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/perfume3_hover.png" alt="T1 링2"
									width="300" height="300">
								<p>
									<span class="h_txt">2.5온스 / 남녀공용</span> ￦152,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>Tiffany 시어</p>
						<p>오드 트왈렛</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly3-->
				</div>
				<!--item_con-->
				<p class="item_btn">
					<a href="jewerly.html">Perfume 더보기</a>
				</p>
			</div>
			<!--items-->

			<!--///////home & accessory////////-->
			<div class="items">
				<h3>Home &amp; acc</h3>
				<div class="item_con">
					<div class="item">
						<div class="item_img">
							<img src="images/item/home1.png" alt="여성용 토트1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/home1_hover.png" alt="여성용 토트2" width="300"
									height="300">
								<p>
									<span class="h_txt">가죽 소재</span> ￦2,440,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>Tiffany</p>
						<p>여성용 토트</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly1-->
					<div class="item">
						<div class="item_img">
							<img src="images/item/home2.png" alt="페이퍼컵1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/home2_hover.png" alt="페이퍼컵2" width="300"
									height="300">
								<p>
									<span class="h_txt">본차이나소재</span> ￦230,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>인테리어 오브제</p>
						<p>본차이나 페이퍼컵</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜1" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly2-->
					<div class="item">
						<div class="item_img">
							<img src="images/item/home3.png" alt="카드 케이스1" width="300"
								height="300">
							<div class="item_hover">
								<img src="images/item/home3_hover.png" alt="카드 케이스2" width="300"
									height="300">
								<p>
									<span class="h_txt">가죽 소재</span> ￦305,000
								</p>
							</div>
							<!--item_hover : 마우스 오버시-->
						</div>
						<!--item_img :gift 이미지-->
						<p>Tiffany</p>
						<p>카드 케이스</p>
						<p class="heart">
							<img src="images/item/heart.png" alt="찜" width="25" height="23">
						</p>
						<!--heart:찜하기 하트버튼-->
					</div>
					<!--item: jewerly3-->
				</div>
				<!--item_con-->
				<p class="item_btn">
					<a href="home.html">Home &amp; accessory 더보기</a>
				</p>
			</div>
			<!--items-->
		</div>
		<!--item_wrap-->
		<!--////////item notice////////-->
		<div id="notice_wrap">
			<div id="notice_con">
				<h4>NOTICE</h4>
				<ul id="notice">
					<li>각 카테고리마다 ‘더보기’ 버튼을 누르시면 더 많은 제품을 보실 수 있습니다.</li>
					<li>제품 수리는 가까운 티파니 매장에 문의하시길 바랍니다. <a href="store.html">매장안내</a></li>
					<li>교환 &amp; 환불은 고객센터로 문의하시길 바랍니다. <a href="cscenter.html">고객센터</a></li>
				</ul>
				<!--notice-->
			</div>
			<!--notice_con-->
		</div>
		<!--notice_wrap-->
	</div>
	<!--con_wrap-->

	<!--/////////하단/////////-->
	<div id="bottom_wrap">
		<footer id="bottom">
			<p>
				<a href="index.html"><img src="images/bottom/logo_white.png"
					alt="하단로고"></a>
			</p>
			<div id="info1">
				<address>
					사업자 등록번호 : 106-81-59905<br> 대표이사 : 마크제임스에르켁<br> 본사 :
					04542 서울 중구 청계천로 100 (수표동, 시그니쳐타워, 서관 17층)<br> 전화번호 :
					02-540-6270 &nbsp; &nbsp; &nbsp; &nbsp; 팩스번호 : 02-540-6271<br>
				</address>
			</div>
			<!--info1-->
			<div id="info2">
				<ul id="info2_menu">
					<li><a href="cscenter.html">고객센터</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
				</ul>
				<!--info2_menu-->
				<ul id="sns">
					<li class="sns_img"><a
						href="https://www.youtube.com/user/OfficialTiffanyAndCo"> <img
							src="images/bottom/sns1.png" alt="유튜브1" width="32" height="32">
							<img src="images/bottom/sns1_hover.png" alt="유튜브2" width="32"
							height="32" class="sns_hover">
					</a></li>
					<!--sns_img-->
					<li class="sns_img"><a
						href="https://www.instagram.com/tiffanyandco/"> <img
							src="images/bottom/sns2.png" alt="인스타그램1" width="32" height="32">
							<img src="images/bottom/sns2_hover.png" alt="인스타그램2" width="32"
							height="32" class="sns_hover">
					</a></li>
					<!--sns_img-->
					<li class="sns_img"><a href="https://pf.kakao.com/_xlieQj">
							<img src="images/bottom/sns3.png" alt="카카오톡1" width="32"
							height="32"> <img src="images/bottom/sns3_hover.png"
							alt="카카오톡2" width="32" height="32" class="sns_hover">
					</a></li>
					<!--sns_img-->
				</ul>
				<!--sns-->
			</div>
			<!--info2-->
			<p id="copyright">copyright&copy;2021.T&amp;CO alrights reserved</p>
		</footer>
		<!--bottom-->
	</div>
	<!--bottom_wrap-->
</body>
</html>