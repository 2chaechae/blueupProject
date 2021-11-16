<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<br>
<br>
<br>
<section class="layer-popup-cont" tabindex="0">
				<h2>아이디 찾기</h2>
					<div class="layer-popup-wrap02">
					<p class="layer-txt"></p><dl class="join-date-info">
						<dt>가입일 : </dt><dd name="layerPopupJoinDt"></dd>
					</dl>
					<div class="btns"><a href="#" class="btn lg fill btn-login" id="login" onclick="return false;">로그인</a></div>
		
					<p class="layer-txt04">
						비밀번호를 잊으셨나요?&nbsp;<a href="#" id="findPassword" onclick="return false;">비밀번호 찾기</a></p>
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
					</ul>
				</div>
				<div class="layer-footer-info">
					<p><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
				</div>
			</section>
<%@ include file="footer.jsp" %>
</body>
</html>