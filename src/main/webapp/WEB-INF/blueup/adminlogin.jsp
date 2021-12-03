<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="adminHeader.jsp" %>
<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/member/join.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/social/social_login.js?v=prod-version-858_20211102145956"></script>

<div class="contain mb login" id="contain">
	<div class="container">
		<div class="location-container">
			<div class="location-contents">
				<h2 class="title01">로그인</h2>
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span> <strong>로그인</strong>
				</p>
			</div>
		</div>
		<main class="contents" id="contents">
			<div class="login-wrap">
				<div class="login-cnt d_tab02">
					<div class="d_tab02_cont" style="display: block;">
						<form id="loginForm" action="/test/getAdminLoginCheck.mdo" method="post">
							<input type="hidden" name="accessToken" id="accessToken" value="" />
							<input type="hidden" name="loginTarget" id="loginTarget" value="" />
							<input type="hidden" name="remember-me" id="autologin" value="true"> 
							<input type="hidden" name="pageMode" value="false" /> 
							<input type="hidden" name="redirect_uri" id="redirect_uri" value="" /> 
							<input type="hidden" name="pageNum" value="1" />

							<input type="text" class="input-style01" title="아이디 입력창" placeholder="아이디"
								id="adminlogin" name="admin_id" value="${admin_id }" validate="required;" validateText="아이디" /> 
							
							<input type="password" class="input-style01" title="비밀번호 입력창" placeholder="비밀번호"
								id="adminlogin" name="admin_password" validate="required;" validateText="비밀번호" />

							<p class="login-check-id">
								<span class="check-skin"> 
									<input type="checkbox" id="chkSaveId" name="chkSaveId"> <span>선택</span>
								</span> <label for="chkSaveId">아이디 저장</label>
							</p>
							<div class="btn-wrap02">
								<input class="btn-style02" id="login" type="submit" value="로그인" />
							</div>
							
							<div>
								<input type="hidden" name="_csrf" value="d6e593ba-d14d-4a53-9009-88b474606d07" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
</body>
</html>