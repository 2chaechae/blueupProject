<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
<div class="contain my lnblist-Wrap" id="contain">
	<div class="container">
		<h2 class="title01">마이페이지</h2>
		<%@ include file="mypageMenu.jsp" %>
		<main class="contents memberPassWord-wrap" id="contents">
			<form id="checkPasswordForm" name="checkPasswordForm">
				<input type="text" name="name1" style="display:none;"/>
				<div class="location-contents">
					<p class="location">
						<span>
							<a href="/main/mall/view">Home</a>
						</span>
						<span>
							<a href="/mypage/view">마이페이지</a>
						</span>
						<span>회원정보</span>
						<strong>비밀번호 확인</strong>
					</p>
				</div>
				<div class="board-write">
					<p class="txt13-666">
						회원님의 개인정보 보호를 위한 본인 확인 절차를 위해 <strong>비밀번호</strong>를 입력해 주세요.
					</p>
					<input type="password" class="input-style01" style="width:400px;" id="user_password" name="user_password" placeholder="비밀번호">				
				</div>
			</form>
			<div class="btnWrapBox">
				<a href="#" class="btn" id="checkPasswordCancel">취소</a>
				<a href="#none;" class="btn fill" id="confirmPwchkBtn">확인</a>
			</div>
		</main>
	</div>
</div>
<form id="movedPage" method="post" action="/test/quitPage.do"></form>
<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$('#confirmPwchkBtn').on('click',function(){
	   var userPw = $('#user_password').val();
	   var userId = localStorage.getItem("user_id");
	
	   if(userPw == ""){
	      alert("비밀번호를 입력해 주세요");
	      $('#user_passsword').focus();
	      return;
	   } else {
	      $.ajax({
	         type : 'post',
	         url:"/test/PwChk.do",
	         data : { user_password : userPw, user_id : userId },
	         dataType : 'json',
	         success : function(data){
	         	console.log(data);
	         	var userPwChkNum = data.userPwChkNum;
	         	if(userPwChkNum == 0){
	         		alert("비밀번호를 확인해주세요");
	         		$('#user_password').val("");
	         		$('#user_password').focus();
	         		return;
	         	}else{
	         		$("#movedPage").submit();
	         	}
	         },
	         error:function(request,status,error){
	         	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
	         }
	      });
	   }
	});
});
</script>
</html>