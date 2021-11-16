<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!-- 컨텐츠 시작 -->
	<div class="contain mb idpw" id="contain" style="padding-top: 50px; min-height: 412px;">		
		<div class="container">

			<div class="location-container">
                <div class="location-contents">
                    <h2 class="title01">아이디 찾기</h2>
                    <p class="location">                    
	                    <span><a href="/main/mall/view">Home</a></span>
								<strong>아이디 찾기</strong>
								</p>
                 </div>
            </div><main class="contents" id="contents">
				
				<div class="member-certification-wrap">
					<div class="member-certification-cnt d_tab02">
						<ul class="tab-type05">
							<li class="d_tab02_select on"><a href="#" id="findIdTab">아이디 찾기</a></li><li class="d_tab02_select"><a href="#" id="findPwTab">비밀번호 찾기</a></li></ul>
						<div class="d_tab02_cont" style="display:block;">
							<ul class="certification-list">
								<li><a href="#" class="" name="pccCertBtn">휴대폰 인증</a></li><li><a href="#" class="" name="ipinCertBtn">아이핀 인증</a></li></ul>
						</div>
						<div class="d_tab02_cont">
							<ul class="certification-list">
								<li><a href="#" class="" name="pccCertBtn">휴대폰 인증</a></li><li><a href="#" class="" name="ipinCertBtn">아이핀 인증</a></li></ul>
						</div>
						<h3 class="title06">인증방법안내</h3><ul class="text-list02 col-type01">
							<li>휴대폰 인증 : 고객님 명의의 휴대폰 인증을 통해 본인임을 확인 합니다.</li>
							<li>I-PIN인증 : I-PIN으로 회원가입 하신 경우, I-PIN 인증을 통해 본인임을 확인 합니다.</li>
						</ul>
					</div>
					<div class="guds">
						<strong class="cs-number">고객센터 : 080-807–0012</strong> <ul class="links">
							<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li><li><a href="#" onclick="goKakaoTalkOpen(); return false;">카카오톡 상담하기</a></li></ul>
						<div class="time">운영시간 : 평일 오전 9시 ~ 오후 6시 (토/일/공휴일휴무)</div></div>
				</div>
				
			</main>
			
		</div>
	</div>
	
		<!--  본인인증 확인결과 -->
		<article id="layerPopCertificationCheck01" class="layer-popup popCertifi">
			<section class="layer-popup-cont" tabindex="0">
				<h2>본인인증 확인결과</h2>
				<div class="layer-popup-wrap">					
					<p class="msg-txt">회원 탈퇴 후 30일이 경과하지 않아 <br> 재가입 하실 수 없습니다.</p>
					<p class="date-info">탈퇴일  :  <strong name="layerPopupSecsnDt"></strong></p>					
					<div class="btns"><a href="javascript:;" class="btn lg fill btn-confirm d_layer_close">확인</a></div>
					<p class="msg">비회원으로 서비스를 이용하시겠습니까?  <br>  <a class="link" href="/">쇼핑 계속하기</a></p>
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
						<li><a href="#" onclick="goKakaoTalkOpen(); return false;">카카오톡 상담하기</a></li>
					</ul>
				</div>
				<div class="bots-info">
					<p><strong>080-807-0012</strong> 평일 AM 9시 ~ PM 6시 (토/일/공휴일 휴무)</p>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>
		
		<!-- 이미가입한 회원 -->
		<article id="layerPopCertificationCheck02" class="layer-popup popCertifiReady">
			<section class="layer-popup-cont" tabindex="0">
				<h2>본인인증 확인결과</h2>
				<div class="layer-popup-wrap">
					<p class="msg-txt">고객님은 이미 가입되어 있습니다.</p>
					<p class="date-info">가입일  :  <strong name="layerPopupJoinDt"></strong></p>
					<p class="id-info">아이디  :  <strong name="layerPopupMbrId"></strong></p>
					<div class="btns"><a href="/member/login/view" class="btn lg fill btn-login">로그인</a></div>
					<p class="msg">비밀번호를 잊으셨나요?  <a class="link" href="#" onclick="moveFindPwd();">비밀번호 찾기</a></p>
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
						<li><a href="#" onclick="goKakaoTalkOpen(); return false;">카카오톡 상담하기</a></li>
					</ul>
				</div>
				<div class="bots-info">
					<p><strong>080-807-0012</strong> 평일 AM 9시 ~ PM 6시 (토/일/공휴일 휴무)</p>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>

		<!--  본인인증 확인결과 -->
		<article id="layerPopCertificationCheck03" class="layer-popup popCertifi">
			<section class="layer-popup-cont" tabindex="0">
				<h2>본인인증 확인결과</h2>
				<div class="layer-popup-wrap">
					<p class="msg-txt">만 14세 이상 대상자만 회원 가입하실 수 있습니다.</p>			
					<div class="btns"><a href="javascript:;" class="btn lg fill btn-confirm d_layer_close">확인</a></div>		
					<p class="msg">비회원으로 서비스를 이용하시겠습니까?  <br>  <a class="link" href="/">쇼핑 계속하기</a></p>
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
						<li><a href="#" onclick="goKakaoTalkOpen(); return false;">카카오톡 상담하기</a></li>
					</ul>
				</div>
				<div class="bots-info">
					<p><strong>080-807-0012</strong> 평일 AM 9시 ~ PM 6시 (토/일/공휴일 휴무)</p>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>

		<!--  본인인증 확인결과 -->
		<article id="layerPopCertificationCheck04" class="layer-popup popCertifi">
			<section class="layer-popup-cont" tabindex="0">
				<h2>본인인증 확인결과</h2>
				<div class="layer-popup-wrap">
					<p class="msg-txt">본인 인증정보가 일치하지 않아 <br> 휴대전화를 변경하실 수 없습니다.</p>			
					<div class="btns"><a href="javascript:;" class="btn lg fill btn-confirm d_layer_close">확인</a></div>		
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
						<li><a href="#" onclick="goKakaoTalkOpen(); return false;">카카오톡 상담하기</a></li>
					</ul>
				</div>
				<div class="bots-info">
					<p><strong>080-807-0012</strong> 평일 AM 9시 ~ PM 6시 (토/일/공휴일 휴무)</p>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>

		<!--  본인인증 확인결과 -->
		<article id="layerPopCertificationCheck05" class="layer-popup popCertifi">
			<section class="layer-popup-cont" tabindex="0">
				<h2>본인인증 확인결과</h2>
				<div class="layer-popup-wrap">
					<p class="msg-txt">휴대폰 가입자 정보와 회원정보 정보가 일치하지 않아 수정이 불가합니다.</p>			
					<div class="btns"><a href="javascript:;" class="btn lg fill btn-confirm d_layer_close">확인</a></div>		
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
						<li><a href="#" onclick="goKakaoTalkOpen(); return false;">카카오톡 상담하기</a></li>
					</ul>
				</div>
				<div class="bots-info">
					<p><strong>080-807-0012</strong> 평일 AM 9시 ~ PM 6시 (토/일/공휴일 휴무)</p>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>
		<script>
		function moveFindPwd(){
			var param = null;
			
			param = {
				'_csrf' : '5104510f-f5a0-4952-bc08-cb6990822de7'
		        , 'type' : 'PASSWORD'
		    };
			
			jsLinkUrlPost('/member/login/viewFind', param);
		}		
		</script>
<article id="layerPopupIdFind01" class="layer-popup layer-type02">
			<section class="layer-popup-cont" tabindex="0">
				<h2>아이디 찾기</h2><div class="layer-popup-wrap02">
					<p class="layer-txt">아직 회원가입을 하지 않으셨습니다. <br>F&amp;F 통합회원에 가입하셔서 많은 혜택을 받아보세요.</p>
				</div>
				<div class="btn-wrap03">
					<a href="#" class="btn lg fill btn-login" id="join" onclick="return false;">회원가입하기</a></div>
				
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>
		
		<!-- 아이디 찾기 -->
		<article id="layerPopupIdFind02" class="layer-popup layer-type02 popIdFind">
			<section class="layer-popup-cont" tabindex="0">
				<h2>아이디 찾기</h2><div class="layer-popup-wrap02">
					<p class="layer-txt"></p><dl class="join-date-info">
						<dt>가입일 : </dt><dd name="layerPopupJoinDt"></dd>
					</dl>
					<div class="btns"><a href="#" class="btn lg fill btn-login" id="login" onclick="return false;">로그인</a></div>
		
					<p class="layer-txt04">
						비밀번호를 잊으셨나요?&nbsp;<a href="#" id="findPassword" onclick="return false;">비밀번호 찾기</a></p>
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
						<li><a href="#" onclick="goKakaoTalkOpen(); return false;">카카오톡 상담하기</a></li>
					</ul>
				</div>
				<div class="layer-footer-info">
					<p><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>
		
		<article id="layerPopupModifyPassword" class="layer-popup layer-type02 popPwFind">
			<section class="layer-popup-cont" tabindex="0">
				<h2>비밀번호 변경</h2>
				<div class="layer-popup-wrap02">
					<p class="layer-txt03">새로운 비밀번호를 입력해주세요.</p>
					<form id="modifyPasswordForm" action="/member/login/viewFind" method="post"><div class="layer-input-box">
						<input type="password" class="input-style01" placeholder="비밀번호" style="width:100%" id="newPassword" name="newPassword" validate="required" validatetext="비밀번호" maxlength="12">						
						<input type="password" class="input-style01" placeholder="비밀번호 확인" style="width:100%" id="mbrCheckPw" name="mbrCheckPw" validate="required" validatetext="비밀번호 확인" maxlength="12">														
					</div>
					<span class="error-msg"></span>							
					<div>
<input type="hidden" name="_csrf" value="5104510f-f5a0-4952-bc08-cb6990822de7">
</div>
</form>
</div>
				<div class="btn-wrap">
					<a href="#" id="modifyPasswordConfirm" class="btn lg fill" onclick="return false;">비밀번호 변경하기</a>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>
				 
		 <!-- 간편가입 : 비밀번호 등록 -->
		<article id="popPwRegist" class="layer-popup layer-type02 popPwFind">
			<section class="layer-popup-cont" tabindex="0">
				<h2>비밀번호 등록</h2>
				<div class="layer-popup-wrap02">
					<p class="layer-txt03">SNS 간편가입자의 경우 비밀번호 등록 후<br>회원정보 수정이 가능합니다.</p>
					<form id="modifyPasswordForm2" action="/mypage/member/" method="post">
					<input type="hidden" name="targetUrl" value="">
					<input type="hidden" name="_csrf" value="5104510f-f5a0-4952-bc08-cb6990822de7">
					<input type="hidden" name="checkPasswordFlag" value="">
					<input type="hidden" name="targetPath" value="">
						
					<div class="layer-input-box">
						<input type="password" id="newPassword2" name="newPassword" title="비밀번호 입력창" placeholder="비밀번호" validate="required;" validatetext="비밀번호" maxlength="12" class="input-style01" style="width:100%">
						<input type="password" id="mbrCheckPw2" name="mbrCheckPw" title="비밀번호 입력창" placeholder="비밀번호 확인" validate="required;" validatetext="비밀번호" maxlength="12" class="input-style01" style="width:100%">
						<span class="error-msg"></span>
					</div>
					</form>
				</div>
				<div class="btn-wrap">
					<a href="#" id="checkPasswordConfirm" class="btn lg fill" data-ga-category="PC_MLB_회원가입" data-ga-action="비밀번호 신규등록" data-ga-label="비밀번호 등록하기">비밀번호 등록하기</a>
				</div>
				<div class="layer-popup-close">
					<button type="button" class="d_layer_close">닫기</button>
				</div>
			</section>
		</article>
		

<%@ include file="footer.jsp" %>

</body>
</html>