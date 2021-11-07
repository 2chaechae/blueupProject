<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name ="google-signin-client_id" content="303706230192-tavphhgtu7mtjal0puhe1g7fkedf5652.apps.googleusercontent.com">
<title></title>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script src = "${pageContext.request.contextPath}/js/top.js"></script>
<link rel="shortcut icon" type="${pageContext.request.contextPath}/image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">	
</head>
<body>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="${pageContext.request.contextPath}/images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="${pageContext.request.contextPath}/images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>

<!--상단-->
<div id="top_wrap">
	<header id="top">
		<!--js태그 추가자리-->
		<h1><a href="#"><img src="https://blueup.s3.ap-northeast-2.amazonaws.com/main/blueuplogo.png" alt="블루업"></a></h1>
		<div id="top_bar">
			
			<nav id="top_navi">
				<ul id="mtop">
					<li><a href="#"  data-atitle="세일상품" data-btitle="Gift">SALES</a></li>
					<li><a href="#" data-atitle="아우터" data-btitle="Collection">OUTER</a>
						<ul class="sub">
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">가디건</a></li>
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
							<li><a href="javascript:void(0)" onclick="checkCategory(this)">긴바지</a></li>
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
				</ul>
			</nav><!--top_navi 주메뉴-->
			<div id="quick">
					<!--js태그 추가자리-->
					<ul>
						<li class="top_btn1"><a href="#" title="고객센터"><br><span>COMMUNTIY</span></a>
							<ul class="btn_sub">
								<li><a href="#">공지사항</a></li>
								<li><a href="#">QnA</a></li>
								<li><a href="#">REVIEW</a></li>
							</ul>
						</li>
						<li class="top_btn"><img src="${pageContext.request.contextPath}/images/top/login.png" alt="로그인" width="16" height="16"><br><span>LOGIN</span></li>
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

<!--//////페이지위치///////-->
<div id="page_wrap">
	<div id="page">
		<ul id="r_page">
			<li>Home</li>
			<li><img src="${pageContext.request.contextPath}/images/icon/page_arrow.png" alt="페이지화살표1" width="5" height="9"></li>
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
				<p class="u_id"><input type="text" id="user_id" name="user_id" placeholder="아이디 입력" title="아이디"></p>
				<p class="u_pwd"><input type="password" id="user_pw" name="user_pw" placeholder="비밀번호 입력" title="비밀번호"></p>
				<p class="login_chk"><input type="checkbox" id="chk" name="chk" value="아이디 저장"><label for="chk">아이디저장</label></p>
				<p class="login"><input type="button" id="login_btn" value="로그인"></p>
				<ul class="login_list">
					<li><a href="#">아이디 / 비밀번호 찾기</a></li>
					<li><a href="/test/join.do">회원가입</a></li>
				</ul><!--login_list-->
			</div><!--login_l 회원로그인-->
			<div class="login_r">
				<h3>SNS 간편로그인</h3>
				<ul class="btn_wrap">
					<li><input type="button" id="kakaoLogin" value="카카오톡으로 회원가입하기"></li>
					<li><input type="button" id="GgCustomLogin" href="javascript:void(0)"value="구글로 회원가입하기"></li>
				</ul>
			</div><!--login_r SNS간편로그인-->
		</form>
	</div><!--login_wrap-->
</div><!--con_wrap-->
<form id="userInfoForm" method="post" action="/test/join.do">
	<input type="hidden" id="email_address" name="email_address" value=""/>
	<input type="hidden" id="user_name" name="user_name" value=""/>
	<input type="hidden" id="user_gender" name="user_gender" value=""/>
</form>

<script src = "${pageContext.request.contextPath}/js/top.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<script type="text/javascript"> 
$(document).ready(function(){
	
	//로그인페이지가 load 됬을 때
	var idSave = ""; // 아이디저장 체크 값 true/false => localStorage 저장 key 담을 변수 선언
	var user_id = ""; // 아이디 => localStorage 저장 key 담을 변수 선언
	if(localStorage.getItem("idSave")){ // idSave가 존재 한다면
		idSave = localStorage.getItem("idSave");
	}
	
	if(idSave != "" && idSave == "true"){ // idSave가 true 값일 때
		user_id = localStorage.getItem("userId");
		$('#user_id').val(user_id);
		$("#chk").attr("checked", true);
	}
	
	$('#kakaoLogin').on('click',function(){//카카오톡 로그인 클릭시 kakaoLogin()실행
		kakaoLogin();
	});

	$('#login_btn').on('click',function(){
		
		/* 로그인 id/pw 유효성 검사 START */
		var userId = $('#user_id').val();
		var userPw = $('#user_pw').val();
		
		if(userId == ""){
			alert("아이디를 입력해주세요");
			$('#user_id').focus();
			return;
		} else if(userPw == ""){
			alert("패스워드를 입력해주세요");
			$('#user_pw').focus();
			return;
		} else {
			
			//아이디 저장 체크 여부
			var chk = document.getElementById('chk').checked; // true, false 반환됨;
			
			if(chk){
				localStorage.setItem("idSave", "" + chk); // localStorage key값 저장
				localStorage.setItem("userId", userId); // localStorage key값 저장
			} else {
				localStorage.removeItem("idSave"); // localStorage key값 삭제
				localStorage.removeItem("userId"); // localStorage key값 삭제
			}
			
			//로그인 성공 혹은 실패 처리
		}
		/* 로그인 id/pw 유효성 검사 END */
	});
});
	
<!-- 카카오 api -->
//카카오로그인
function kakaoLogin() {
	Kakao.init('954e6984f5971a61992abec1bd348638'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  var kakao_account = response.kakao_account;
        	  var nickname = response.properties.nickname; //properties 안에 담겨있는 닉네임
        	  var email = kakao_account.email; // kakao_account 안에 담겨있는 이메일
        	  var gender = kakao_account.gender; // kakao_account 안에 담겨있는 성별
        	  /* console.log("qweqwe____ kakao_account ", kakao_account);
        	  console.log("qweqwe____ email ", email);
        	  console.log("qweqwe____ nickname ", nickname);
        	  console.log("qweqwe____ gender ", gender);
        	  console.log(response); */
        	  $('#user_name').val(nickname);
        	  $('#email_address').val(email);
        	  $('#user_gender').val(gender);
        	  
        	  $('#userInfoForm').submit();
        	  
          },
          fail: function (error) {
            console.log(error);
          },
        })
      },
      fail: function (error) {
        console.log(error);
      },
    })
  }
/* //카카오로그아웃  
function kakaoLogout() { 회원가입으로 가지고 온거라 로그아웃 불필요
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined);
    }
 } */
<!--// 카카오 api -->

<!-- 구글 api -->
//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyByjxAWUnuO0MvwmAS2xaAVaaVeAoA-PFQ', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log("google login done", profile)
	})
	.fail(function(e){
		console.log("google login fail", e);
	})
}

function onSignInFailure(t){		
	console.log(t);
}
<!--// 구글 api -->
	
<!-- localStorage 기능 주석 -->
// 키에 데이터 쓰기
//localStorage.setItem("key", value);

// 키로 부터 데이터 읽기
//localStorage.getItem("key");

// 키의 데이터 삭제
//localStorage.removeItem("key");

// 모든 키의 데이터 삭제
//localStorage.clear();

// 저장된 키/값 쌍의 개수
//localStorage.length;
<!--// localStorage 기능 주석 -->
	
</script>

<!-- 하단-->
<%@ include file="footer.jsp" %>
<!--// 하단-->

