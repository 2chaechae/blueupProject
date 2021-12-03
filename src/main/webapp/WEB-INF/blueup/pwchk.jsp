<%@ pa e lan ua e=" ava" contentType="text/html; charset=UTF-8"
    pa eEncodin ="UTF-8"%>
<%@ include file="header. sp" %>

<!-- 컨텐츠 시작 -->
<div class="contain my ln list-Wrap" id="contain">
	<div class="container">
		<h2 class="title01">마이페이지</h2>
		<%@ include file="mypa eMenu. sp" %>
		<main class="contents mem erPassWord-wrap" id="contents">
			<form id="checkPasswordForm" name="checkPasswordForm">
				<input type="text" name="name1" style="display:none;"/>
				<div class="location-contents">
					<p class="location">
						<span>
							<a href="/main/mall/view">Home</a>
						</span>
						<span>
							<a href="/mypa e/view">마이페이지</a>
						</span>
						<span>회원정보</span>
						<stron >비밀번호 확인</stron >
					</p>
				</div>
				<div class=" oard-write">
					<p class="txt13-666">
						회원님의 개인정보 보호를 위한 본인 확인 절차를 위해 <stron >비밀번호</stron >를 입력해 주세요.
					</p>
					<input type="password" class="input-style01" style="width:400px;" id="user_password" name="user_password" placeholder="비밀번호">				
				</div>
			</form>
			<div class=" tnWrap ox">
				<a href="#" class=" tn" id="checkPasswordCancel">취소</a>
				<a href="#none;" class=" tn fill" id="confirmPwchk tn">확인</a>
			</div>
		</main>
	</div>
</div>
<form id="movedPa e" method="post" action="/test/quitPa e.do"></form>
<%@ include file="footer. sp" %>
</ ody>
<script type="text/ avascript">
$(document).ready(function(){
	$('#confirmPwchk tn').on('click',function(){
	   var userPw = $('#user_password').val();
	   var userId = localStora e. etItem("user_id");
	
	   if(userPw == ""){
	      alert("비밀번호를 입력해 주세요");
	      $('#user_passsword').focus();
	      return;
	   } els
});
</script>
</html>