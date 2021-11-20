<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
            </div>
              <main class="contents" id="contents">
				
				<div class="member-certification-wrap">
					<div class="member-certification-cnt d_tab02">
						<ul class="tab-type05">
							<li class="d_tab02_select on"><a href="#none;" id="findIdTab">아이디 찾기</a></li>
						</ul>
					</div>
					
					<div class="layer-popup-wrap02">
					<p class="layer-txt"></p><dl class="join-date-info">
						<br/>
						<br/>
						<br/>
						<strong> 고객님의 아이디는 </strong><span id="user_id"></span><strong> 입니다.</strong>
						<br/>
						<br/>
						<strong>가입일 : </strong><fmt:formatDate value="${rgstTime}" pattern="yyyy-MM-dd"/>
						<br/>
						<br/>
						<h3>감사합니다.</h3>
						<br/>
						<br/>
					</dl>
					<div class="btns"><a href="#" class="btn lg fill btn-login" id="login">로그인 하러가기</a></div>
		
					<p class="layer-txt04">
						비밀번호를 잊으셨나요?&nbsp;<a href="#" id="findPassword" style="color:blue;">비밀번호 찾기</a></p>
					<ul class="links">
						<li><a href="/helpdesk/faq/list">FAQ바로가기</a></li>
					</ul>
				</div>
				<div class="layer-footer-info">
					<p><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
				</div>
			</main>
<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript">
$(function(){
	var userId = "${user_id}";
	$('#user_id').text(userId);
	
	
	
	
});
	
</script>
</html>