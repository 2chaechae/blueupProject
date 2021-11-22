<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<br>
<br>
<br>
<article id="" class="layer-popup-cont">
			<h2>비밀번호 변경</h2>
			<br>
			<h2>새로운 비밀번호를 입력해주세요.</h2>
				<div class="layer-popup-wrap02">
					<form id="modifyPasswordForm" action="/member/login/viewFind" method="post"><div class="layer-input-box">
						<input type="password" class="input-style01" placeholder="비밀번호" style="width:100%" id="newUser_pw" name="newUser_pw"  maxlength="12">						
						<input type="password" class="input-style01" placeholder="비밀번호 확인" style="width:100%" id="newUser_pwChk" name="newUser_pwChk" maxlength="12">				
						<p class="layer-txt03">비밀번호는 8~12자 영문, 숫자, 특수문자 중 최소 2가지 조합으로 만들어 주세요</p>
					<div>
</div></form></div>
				<div class="btn-wrap">
					<a href="#" id="modifyPwConfirm" class="btn lg fill" onclick="return false;">비밀번호 변경하기</a>
				</div>
		</article>
<%@ include file="footer.jsp" %>
</body>

<script type="text/javascript">
$(document).ready(function(){
	var user_id = "${user_id}";
	
	$('#modifyPwConfirm').on('click',function(){
		var newUserPw = $('#newUser_pw').val();
		var newUserPwChk = $('#newUser_pwChk').val();
		
		if(newUserPw == ""){
			alert("새로운 비밀번호를 적어주세요");
			$('#newUser_pw').focus();
			return;
		}else if(newUserPwChk == ""){
			alert("새로운 비밀번호확인란을 채워주세요");
			$('#newUser_pwChk').focus();
			return;
		}else if(newUserPw != newUserPwChk){
			alert("새로운 비밀번호가 맞지 않습니다 다시 작성해주세요");
			$('#newUser_pw').val("");
			$('#newUser_pwChk').val("");
			$('#newUser_pw').focus();
			return;
		}
		if(confirm("정말로 변경하시겠습니까?")){
			$.ajax({
				type : 'post',
				url : '/test/foundPw.do',
				data : { user_id : user_id , user_password : newUserPw },
				dataType : 'json',
				success:function(data){
					console.log(data);
					alert("비밀번호 변경에 성공하였습니다");
				}
			}); 
			
		} else {
			return;
		}
		
	});
	
	
	
	
});

</script>
</html>