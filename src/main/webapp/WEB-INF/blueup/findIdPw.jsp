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
								<li><a href="#" class="" name="pccCertBtn">휴대폰 인증</a></li>
								<li><a href="#" class="" name="ipinCertBtn">이메일 인증</a></li></ul>
						</div>
						<div class="d_tab02_cont">
							<ul class="certification-list">
								<li><a href="#" class="" name="pccCertBtn">휴대폰 인증</a></li>
								<li><a href="#" class="" name="ipinCertBtn">이메일 인증</a></li></ul>
						</div>
						<h3 class="title06">인증방법안내</h3><ul class="text-list02 col-type01">
							<li>휴대폰 인증 : 고객님 명의의 휴대폰 인증을 통해 본인임을 확인 합니다.</li>
							<li>이메일 인증 : 이메일 인증을 통해 본인임을 확인 합니다.</li>
						</ul>
					</div>
					<div class="guds">
						<strong class="cs-number">고객센터 : 080-807–0012</strong> <ul class="links">
							<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li></ul>
						<div class="time">운영시간 : 평일 오전 9시 ~ 오후 6시 (토/일/공휴일휴무)</div></div>
				</div>
				
			</main>
			
		</div>
	</div>
	
	
	<section class="layer-popup-cont" tabindex="0">
				<h2>아이디 찾기</h2><div class="layer-popup-wrap02">
					<p class="layer-txt"><strong>이하진</strong> 고객님께서 등록하신 아이디는 <strong>hyunkyoung04</strong> 입니다.</p><dl class="join-date-info">
						<dt>가입일 : </dt><dd name="layerPopupJoinDt">2021-10-31</dd>
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






			
			
			


</body>
</html>