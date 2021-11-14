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
            </div><main class="contents" id="contents">					
				<div class="login-wrap">
					<div class="login-cnt d_tab02">
						<ul class="tab-type05">
							<li class="d_tab02_select on"><a href="javascript:;">회원</a></li><li class="d_tab02_select"><a href="javascript:;">비회원 (주문조회)</a></li></ul>
								
						<div class="d_tab02_cont" style="display:block;">
							<form id="loginForm" action="/loginProcess" method="post"><input type="hidden" name="accessToken" id="accessToken" value=""/>
							<input type="hidden" name="loginTarget" id="loginTarget" value=""/> 
							<input type="hidden" name="remember-me" id="autologin" value="true">
							<input type="hidden" name="pageMode" value="false"/>	
							<input type="hidden" name="redirect_uri" id="redirect_uri" value=""/>
							
							<input type="text" class="input-style01" title="아이디 입력창" placeholder="아이디" id="userId" name="userId" value=""
									validate="required;" validateText="아이디"/>
							<input type="password" class="input-style01" title="비밀번호 입력창" placeholder="비밀번호" id="password" name="password"
									validate="required;" validateText="비밀번호"/>
							<p class="login-check-id">
								<span class="check-skin">
									<input type="checkbox" id="chkSaveId" name="chkSaveId" >
									<span>선택</span> </span>
								<label for="chkSaveId">아이디 저장</label> </p>
							<p class="error-msg"></p>
							
							<div class="btn-wrap02">
								<a href="#" class="btn-style02" id="login" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="로그인">로그인</a> <a href="#" class="btn-npay02" id="naverLogin" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="네이버 아이디 로그인"><span>네이버 아이디 로그인</span></a><a href="#" class="btn-kakao" id="kakaoLogin" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="카카오 로그인"><span>카카오 로그인</span></a></div>
							<div class="login-btn-lnk">
								<a href="#" id="findId" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="아이디 찾기">아이디 찾기</a><a href="#" id="findPassword" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="비밀번호 찾기">비밀번호 찾기</a><a href="#" id="join" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="정보찾기" data-ga-label="회원가입">회원가입</a></div>
							<div>
<input type="hidden" name="_csrf" value="d6e593ba-d14d-4a53-9009-88b474606d07" />
</div></form></div>
						
						<div class="d_tab02_cont">
							<form id="guestForm" action="/loginProcess" method="post"><input type="text" class="input-style01" title="주문번호 입력창" placeholder="주문번호" name="ordNo"
							validate="required;" validateText="주문번호" maxlength = "17">
							<input type="text" class="input-style01" title="이름 입력창" placeholder="이름" name="cstmrNm"
							validate="required;" validateText="이름">							
							<div class="phon-wrap">
								<input type="text" class="input-style01" title="연락처 첫번째 입력창" id="mobilAreaNo"
								validate="required;digit;" validateText="휴대전화" maxlength = "3" value="010">
								<span class="hyphen">-</span>
								<input type="text" class="input-style01" title="연락처 가운데 입력창" id="mobilTlofNo"
								validate="required;digit;" validateText="휴대전화" maxlength = "4">
								<span class="hyphen">-</span>
								<input type="text" class="input-style01" title="연락처 마지막 입력창" id="mobilTlofWthnNo"
								validate="required;digit;" validateText="휴대전화" maxlength = "4">
								<input type="hidden" name="cstmrMobilNo" validate="required;phone" validateText="휴대전화" />
							</div>							
							<p class="error-msg"></p>
							<div class="btn-wrap">
								<a href="#" class="btn-style02" id="guestLogin" onClick="return false;" data-ga-category="PC_MLB_로그인" data-ga-action="비회원" data-ga-label="주문조회">주문조회</a></div>
							
													
							<p class="login-cs-info"><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
							<div>

</div></form></div>
						
					</div>
				</div>						
			</main>
			
		</div>
	</div>
	
<%@ include file="footer.jsp" %>

</body>
</html>