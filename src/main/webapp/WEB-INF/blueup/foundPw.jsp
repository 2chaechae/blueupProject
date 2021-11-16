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
						<input type="password" class="input-style01" placeholder="비밀번호" style="width:100%" id="newPassword" name="newPassword" validate="required" validatetext="비밀번호" maxlength="12">						
						<input type="password" class="input-style01" placeholder="비밀번호 확인" style="width:100%" id="mbrCheckPw" name="mbrCheckPw" validate="required" validatetext="비밀번호 확인" maxlength="12">				
						<p class="layer-txt03">비밀번호는 8~12자 영문, 숫자, 특수문자 중 최소 2가지 조합으로 만들어 주세요</p>
					<div>
</div></form></div>
				<div class="btn-wrap">
					<a href="#" id="modifyPasswordConfirm" class="btn lg fill" onclick="return false;">비밀번호 변경하기</a>
				</div>
		</article>
<%@ include file="footer.jsp" %>

</body>
</html>