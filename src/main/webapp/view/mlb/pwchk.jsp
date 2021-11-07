<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">마이페이지</h2>
			
			
<%@ include file="mypageMenu.jsp" %>
<main class="contents memberPassWord-wrap" id="contents">
				<form id="checkPasswordForm" name="checkPasswordForm">
				<input type="hidden" name="targetUrl" value="modifyMemberView" />
				<input type="hidden" name="_csrf" value="3c6cc40e-e420-4266-9985-626c86d3b96d" />
				<input type="hidden" name="checkPasswordFlag" value="" />
				<input type="hidden" name="targetPath" value="" />
				
				<input type="text" name="name1" style="display:none;"/><div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span>
							<span><a href="/mypage/view">마이페이지</a></span>
							<span>회원정보</span>
							<strong>비밀번호 확인</strong>
							</p>
			</div> 		<div class="board-write">
					<p class="txt13-666">회원님의 개인정보 보호를 위한 본인 확인 절차를 위해 <strong>비밀번호</strong>를 입력해 주세요.</p>
					<input type="password" class="input-style01" style="width:400px;" id="password1" name="mbr.mbrPw" placeholder="비밀번호"
							validate="required;" validateText="비밀번호">
					<span class="error-msg"></span>					
				</div>
				</form>
				<div class="btnWrapBox">
					<a href="#" class="btn" id="checkPasswordCancel" onClick="return false;">취소</a>
					<a href="#" class="btn fill" id="checkPasswordConfirm" onClick="return false;">확인</a>
				</div>
				
			</main>
		</div>
	</div>
			

<%@ include file="footer.jsp" %>
</body>
</html>