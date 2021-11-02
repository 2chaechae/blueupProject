<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>티파니앤코 (리뉴얼)</title>
<script src="js/jquery-1.12.4.min.js"></script>
<script src = "js/top.js"></script>
<script src="js/join.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<script src="js/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/join.css">	
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
			<li>회원가입</li>
		</ul><!--r_page-->
	</div><!--page-->
</div><!--page wrap:페이지위치 전체-->

<!--////////회원가입전체/////////-->
<div id="con_wrap">
	<div id="join_wrap">
		<h2>회원가입</h2>
		<form action="join.asp" method="post">
      <ul class="join_step">
        <li class="join1"><a href="#join1" class="j_sel">약관동의 및 본인인증</a></li>
        <li class="join2"><a href="#join2">정보입력</a></li>
        <li class="join3"><a href="#join3">가입완료
          </a></li>
      </ul>
      <div id="join_wrap2">
        <div id="join_con">
          <div id="join1" class="contents">
            <div id="phone_info">
              <a href="#">
                <img src="images/join/phone.png" alt="문자인증" width="30" height="45">
                <p>문자 본인인증</p>
              </a>
            </div>
            <div id="check_wrap">
              <p class="chk_all">
                <input type="checkbox" id="chk" ><label for="chk"  class="type type1">아래 내용에 모두 동의합니다.</label>
              </p> 
              <p class="chk_sub">
                <input type="checkbox" id="chk1" ><label for="chk1"  class="type type2">BlueUp 이용약관</label><a href="getTerms.do">전문보기</a>
              </p>
              <p class="chk_sub">
                <input type="checkbox" id="chk2"><label for="chk2"  class="type type3">개인정보 수집과 이용</label><a href="#">전문보기</a>
              </p>
              <p class="chk_sub">
                <input type="checkbox" id="chk3"><label for="chk3" class="type type4">만14세 이상입니다.</label> 
              </p>
              <p class="chk_sub">
                <input type="checkbox" id="chk4"><label for="chk4"  class="type type5">홍보성 정보 수신동의(선택)</label>
              </p>
            </div><!--check_wrap-->   
          </div><!--join1-->
          <div id="join2" class="contents">
            <div id="join2_wrap">
             <div class="join_box">
              <label for="u_name">이름</label><input type="text" id="u_name" autocomplete="off" required placeholder="홍길동">
             </div>
             <div class="join_box">
								<label for="u_birth">생년월일 / 성별</label><input type="text" id="u_birth" autocomplete="off" required placeholder="900101">
								<div class="r_gender">
									<label for="man">
											<input type="radio" name="gender" value="m" id="man"><span>남자</span>
									</label>
									<label for="woman">
										<input type="radio" name="gender" value="m" id="woman"><span>여자</span>
									</label>
								</div><!--r_gender-->
							</div>
							<div class="join_box">
								<label for="phone1" class="box_s">연락처</label>
								<p id="phone1_wrap">
									<select id="phone1">
										<option>선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
									</select>
								</p><!--phone1_wrap-->
								- <input type="tel" id="phone2" title="전화번호 앞자리">
								- <input type="tel" id="phone3" title="전화번호 뒷자리">&nbsp;&nbsp;&nbsp;
								<span class="r_selfC">
									<a href="#"><input type="button" value="본인 인증"></a>
								</span>
							</div><!--휴대전화번호-->
							<div class="join_box">
								<label for="u_id">아이디</label>
								<input type="text" id="u_id" placeholder="영문 / 숫자 6~15자리 이내">
							</div>
							<div class="join_box2 join_box2_1">
								<label for="pwd1">비밀번호</label><input type="password" id="pwd1" autocomplete="off" required placeholder="영문필수 8~12자이내"><!--비밀번호-->
							</div>
							<div class="join_box2 join_box2_2">
								<label for="pwd2">비밀번호 확인</label><input type="password" id="pwd2" autocomplete="off" required placeholder="한번 더 확인해주세요"><!--비밀번호 확인-->
							</div>
							<div class="join_box3 join_box">
								<label for="u_email" class="l_con">이메일</label>
								<div class="r_con">
									<p class="email1"><input type="email" id="u_email" autocomplete="off"></p>
									<span class="email2">@</span>
									<p class="email3">
										<select>
											<option>선택</option>
											<option value="naver.com">naver.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="nate.com">nate.com</option>
										</select>
									</p><!--email3-->
								</div><!--r_con-->
							</div>
						</div><!--join2_wrap-->
          </div><!--join2-->
          <div id="join3" class="contents">
          	 <ul id="join3_wrap">
          	 	<li>회원가입이 완료되었습니다.</li>
          	 	<li>모든 회원가입 절차가 완료되었습니다.</li>
          	 	<li>로그인 후 사이트를 이용하시면 더 많은 혜택을 받을 수 있습니다.</li>
          	 </ul>
          </div><!--join3-->
        </div><!--join_con-->
      </div><!--join_wrap2-->
      <p class="btn_prev"><input type="button" id="btn_prev" value="이전"></p>
      <p class="btn_next"><input type="button" id="btn_next" value="다음"></p>
		</form><!--join-->
	</div><!--join_wrap-->
</div><!--con_wrap-->
<%@ include file="footer.jsp" %>