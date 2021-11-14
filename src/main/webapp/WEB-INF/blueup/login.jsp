<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<!-- 컨텐츠 시작 -->
<!-- <script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/member/join.js?v=prod-version-858_20211102145956"></script> -->
<!-- <script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/social/social_login.js?v=prod-version-858_20211102145956"></script> -->

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
									<a href="#" class="btn-npay02" id="naverLogin" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="네이버 아이디 로그인"><span>네이버 아이디 로그인</span></a>
									<a href="#" class="btn-kakao" id="kakaoLogin" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="카카오 로그인"><span>카카오 로그인</span></a></div>
								<div class="login-btn-lnk">
									<a href="#" id="findId" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="아이디 찾기">아이디 찾기</a><a href="#" id="findPassword" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="비밀번호 찾기">비밀번호 찾기</a>
									<a href="#" id="join" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="회원가입">회원가입</a>
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
								<p class="error-msg"></p>
								<div class="btn-wrap">
									<a href="#" class="btn-style02" id="guestLogin" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="비회원" data-ga-label="주문조회">주문조회</a>
								</div>
								<p class="login-cs-info"><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
							</form>
						</div>
					</div>
				</div>						
			</main>
		</div>
	</div>
	<form id="movedIndex" method="post" action="/test/movedIndex.do">
	</form>
<%@ include file="footer.jsp" %>

</body>
<script type="text/javascript">
$(document).ready(function(){
	
	/* console.log("qweqwe____ " , localStorage.getItem("saveId"));
	console.log("qweqwe____ " , sessionStorage.getItem("userInfo")); */
	
	if(localStorage.getItem("saveId")){
		$('#user_id').val(localStorage.getItem("userId"));
		$('#chkSaveId').attr("checked",true);
	} else {
		$('#chkSaveId').attr("checked",false);
	}
	
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
				
				if(data.userInfo){
					/*
					세션
					sessionStorage 각각 담아줘야함 key&value
					
					address: null
					agree_email: true
					agree_sns: true
					detailed_address: null
					email_address: "naver.com"
					email_id: "kty2235"
					member_level: "friends"
					mobile_carrier: "kt"
					newbie: true
					phone1: "010"
					phone2: "1111"
					phone3: "3333"
					total_point: 2000
					user_gender: "남자"
					user_id: "1234"
					user_jumin1: "930819"
					user_jumin2: "1111111"
					user_name: "김태연"
					user_no: 4
					user_password: "03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"
					user_registration_time: 1636875162649
					zipcode: null
					*/
					
					//sessionStorage.setItem("userInfo", data.userInfo);   //ex
				}
				
				if(data.userIdChkNum == 0){
					alert("아이디와 비밀번호를 확인해 주세요");
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

</script>
</html>