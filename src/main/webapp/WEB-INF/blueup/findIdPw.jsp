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
							<li class="d_tab02_select on"><a href="#none;" id="findIdTab">아이디 찾기</a></li>
							<li class="d_tab02_select"><a href="#none;" id="findPwTab">비밀번호 찾기</a></li>
						</ul>
						<div class="d_tab02_cont" style="display:block;" id="certGroup">
							<ul class="certification-list">
								<li><a href="#" class="" id="phoneCert" name="phoneCert">휴대폰 인증</a></li>
								<li><a href="#" class="" id="emailCert" name="emailCert">이메일 인증</a></li>
							</ul>
						</div>
						<div id="certGroupPhone" style="display:none;"><br/><br/><br/>
						회원가입시 입력하였던 정보를 입력해주세요<br/><br/>
							이름 : <input type="text" id="user_name" name="user_name" value=""/><br/><br/>
							휴대폰번호 : 
							<input type="text" id="phone1" name="phone1" value=""/>-
							<input type="text" id="phone2" name="phone2" value=""/>-
							<input type="text" id="phone1" name="phone1" value=""/>&emsp;
							<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="certBtn" name="phoneCertBtn">본인인증</a><br/><br/>
							인증 번호 : <input type="text" id="certNum" name="certNum" value=""/>&emsp;
							<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="confirmBtn" name="confirmBtn">확인</a>
							<div class="btn-wrap02">
								<a href="#" class="btn-style02" id="cancelBtn"  data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="로그인" style="text-align:center;">취소</a>
							</div>
						</div>
						<div id="certGroupEmail" style="display:none;"><br/><br/><br/>
						회원가입시 입력하였던 정보를 입력해주세요<br/><br/>
							이름 : <input type="text" id="user_name" name="user_name" value=""/><br/><br/>
							이메일 : 
							<input type="text" id="email_id" name="email_id" value=""/>@
							<input type="text" id="email_address" name="email_address" value=""/>&emsp;
							<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="certEmailBtn" name="certEmailBtn">본인인증</a><br/><br/>
							인증 번호 : <input type="text" id="certNum" name="certNum" value=""/>&emsp;
							<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="confirmEmailBtn" name="confirmEmailBtn">확인</a>
							<div class="btn-wrap02">
								<a href="#" class="btn-style02" id="cancelBtn2"  data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="로그인" style="text-align:center;">취소</a>
							</div>
						</div>
						<!-- <div class="d_tab02_cont">
							<ul class="certification-list">
								<li><a href="#" class="" name="pccCertBtn">휴대폰 인증</a></li>
								<li><a href="#" class="" name="ipinCertBtn">이메일 인증</a></li>
							</ul>
						</div> -->
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
	<input type="hidden" id="idPwGubn" name="idPwGubn" value="id"/>
	<form id="movedRefresh" method="post" action="/test/findIdPwPage.do"></form>
</body>
<script type="text/javascript">
$(function(){
	$('#phoneCert').click(()=>{
		var idPwGubn = $('#idPwGubn').val();
		
		$('#certGroup').hide();
		$('#certGroupPhone').show();
		if(idPwGubn == 'id'){
			$('#findPwTab').attr('style','display:none;');			
		} else if(idPwGubn == 'pw'){
			$('#findIdTab').attr('style','display:none;');
		}
	});
	
	$('#emailCert').click(()=>{
		var idPwGubn = $('#idPwGubn').val();
		
		$('#certGroup').hide();
		$('#certGroupEmail').show();
		if(idPwGubn == 'id'){
			$('#findPwTab').attr('style','display:none;');			
		} else if(idPwGubn == 'pw'){
			$('#findIdTab').attr('style','display:none;');
		}
	});
	
	$('#cancelBtn').click(()=>{
		$('#movedRefresh').submit();
	});
	
	$('#findPwTab').click(()=>{
		$('#idPwGubn').val("pw");
	});
	
	$('#findIdTab').click(()=>{
		$('#idPwGubn').val("id");
	});
	
	$('#certEmailBtn').click(()=>{
		var email = $('#email_id').val() + "@" + $('#email_address').val();
		$.ajax({
			type:'POST',
			url:'/test/sendingEmail.do',
			data:{ e_mail : email },
			dataType:'json',
			success:function(res){
				console.log(res.dice);
			}
		});
	});
	
	$('#cancelBtn2').click(()=>{
		$('#movedRefresh').submit();
	});
	
});
</script>
</html>