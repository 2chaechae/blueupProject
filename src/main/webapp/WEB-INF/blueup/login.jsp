<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<!-- 컨텐츠 시작 -->
<meta charset="UTF-8">
<meta name ="google-signin-client_id" content="303706230192-tavphhgtu7mtjal0puhe1g7fkedf5652.apps.googleusercontent.com">
	<div class="contain mb login" id="contain">		
		<div class="container">
			<div class="location-container">
                <div class="location-contents">
                    <h2 class="title01">로그인</h2>
                    <p class="location">                    
	                    <span><a href="/main/mall/view">Home</a></span>
						<strong>로그인</strong>
					</p>
                 </div>
            </div>
            <main class="contents" id="contents">					
				<div class="login-wrap">
					<div class="login-cnt d_tab02">
						<ul class="tab-type05">
							<li class="d_tab02_select on"><a href="javascript:;">회원</a></li><li class="d_tab02_select"><a href="javascript:;">비회원 (주문조회)</a></li></ul>
								
						<div class="d_tab02_cont" style="display:block;">
							<form id="loginForm" action="/loginProcess" method="post"><input type="hidden" name="accessToken" id="accessToken" value=""/>
								<input type="text" class="input-style01" title="아이디 입력창" placeholder="아이디" id="user_id" name="user_id" value=""/>
								<input type="password" class="input-style01" title="비밀번호 입력창" placeholder="비밀번호" id="user_password" name="user_password"/>
								<p class="login-check-id">
									<span class="check-skin">
										<input type="checkbox" id="chkSaveId" name="chkSaveId" >
										<span>선택</span> </span>
									<label for="chkSaveId">아이디 저장</label> </p>
								<p class="error-msg"></p>
							
								<div class="btn-wrap02">
									<a href="#" class="btn-style02" id="loginBtn"  data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="로그인">로그인</a> 
									<a href="javascript:void(0)" class="btn-npay02" id="GgCustomLogin" data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="구글 로그인"><span>구글로 회원가입</span></a>
									<a href="#" class="btn-kakao" id="kakaojoin" data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="카카오 로그인"><span>카카오로 회원가입</span></a></div>
								<div class="login-btn-lnk">
									<a href="#" id="findId" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="아이디 찾기">아이디 찾기</a><a href="#" id="findPassword" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="비밀번호 찾기">비밀번호 찾기</a>
									<a href="#" id="joinin" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="회원가입">회원가입</a>
								</div>
							</form>
						</div>
						
						<div class="d_tab02_cont">
							<form id="guestForm" action="/loginProcess" method="post"><input type="text" class="input-style01" title="주문번호 입력창" placeholder="주문번호" name="ordNo" maxlength = "17">
								<input type="text" class="input-style01" title="이름 입력창" placeholder="이름" name="cstmrNm">							
								<div class="phon-wrap">
									<input type="text" class="input-style01" title="연락처 첫번째 입력창" id="mobilAreaNo" maxlength = "3" value="010">
									<span class="hyphen">-</span>
									<input type="text" class="input-style01" title="연락처 가운데 입력창" id="mobilTlofNo" maxlength = "4">
									<span class="hyphen">-</span>
									<input type="text" class="input-style01" title="연락처 마지막 입력창" id="mobilTlofWthnNo" maxlength = "4">
								</div>							
								<p class="login-cs-info"><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
							</form>
						</div>
					</div>
				</div>						
			</main>
		</div>
	</div>
	<form id="movedIndex" method="post" action="/test/movedIndex.do"></form>
	<form id="userInfoForm" method="post" action="/test/join.do">
		  <input type="hidden" id="user_name" name="user_name" value=""/>
		  <input type="hidden" id="email_id" name="email_id" value=""/>
      	  <input type="hidden" id="email_address" name="email_address" value=""/>
      	  <input type="hidden" id="user_gender"	name="user_gender" value=""/>
      	  <input type="hidden" id="logintype" name="logintype" value=""/>
	</form>
	<form id ="movedJoinFrm" method="post" action="/test/join.do"></form>
<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript">
$(document).ready(function(){
	if(localStorage.getItem("saveId")){
		$('#user_id').val(localStorage.getItem("userId"));
		$('#chkSaveId').attr("checked",true);
	} else {
		$('#chkSaveId').attr("checked",false);
	}
	
	$('#kakaojoin').on('click',function(){//카카오톡 로그인 클릭시 kakaoLogin()실행
		kakaoLogin();
	});
	
	$('#joinin').on('click',function(){
		$('#movedJoinFrm').submit(); 
	});
	
	$('#loginBtn').on('click',function(){
		var userid = $('#user_id').val();
		var userpw = $('#user_password').val();
		var chkSaveId = document.getElementById("chkSaveId").checked;
		
		if(userid == ""){
			alert("아이디를 입력해 주세요");
			$('#user_id').focus();
			return;
		}else if(userpw == ""){
			alert("비밀번호를 입력해 주세요");
			$('#user_password').focus();
			return;
		}
		
		$.ajax({
			type : 'post',
			url : '/test/loginChkId.do',
			data : { user_id : userid,
				     user_password : userpw }, 
			dataType : 'json',
			success :function(data){
				var userInfo = data.userInfo;
				
				if(userInfo != ""){
					localStorage.setItem("user_no", userInfo.user_no);
		            localStorage.setItem("user_name", userInfo.user_name);
		            localStorage.setItem("user_id", userInfo.user_id);
		            localStorage.setItem("phone1", userInfo.phone1);
		            localStorage.setItem("phone2", userInfo.phone2);
		            localStorage.setItem("phone3", userInfo.phone3);
		            localStorage.setItem("email_id", userInfo.email_id);
		            localStorage.setItem("email_address", userInfo.email_address);
				}
				
				if(data.userIdChkNum == 0){
					alert("아이디와 비밀번호를 확인해 주세요");
					return;
				}else{
					//로그인 성공시 indexmlb 이동
					if(chkSaveId){
						localStorage.setItem("userId", userid);
						localStorage.setItem("saveId", chkSaveId);
	
					} else {
						localStorage.removeItem("userId");
						localStorage.removeItem("saveId");
					}
					
					$('#movedIndex').submit();
				}
			},
			error:function(request,status,error){
		      alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		    }
		});
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
   
      	  var tmpList = [];
      	  tmpList = email.split("@");
      	  var email_id = tmpList[0];
      	  var email_address = tmpList[1];
      	  
      	  $('#user_name').val(nickname);
      	  $('#email_id').val(email_id);
      	  $('#email_address').val(email_address);
      	  $('#user_gender').val(gender);
      	  $('#logintype').val("kakao");
      	  
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
      	var Yt = profile.Yt;
      	
		$('#logintype').val("google");
		$('#user_name').val(profile.Re);
		
		var tmp = [];
		tmp = Yt.split("@");
		var emailId = tmp[0];
		var emailadd = tmp[1];
		
		$('#email_id').val(emailId);
		$('#email_address').val(emailadd);
      
		$('#userInfoForm').submit();
		
		console.log("google login done", profile);
	})
	.fail(function(e){
		console.log("google login fail", e);
	})
}

function onSignInFailure(t){		
	console.log(t);
}
<!--// 구글 api -->
</script>

<!-- //구글 api 사용을 위한 스크립트 -->
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</html>