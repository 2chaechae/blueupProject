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
							이름 : <input type="text" id="user_name_phone" name="user_name_phone" value=""/><br/><br/>
							휴대폰번호 : 
							<input type="text" id="phone1" name="phone1" value="" maxlength="3"/>-
							<input type="text" id="phone2" name="phone2" value="" maxlength="4"/>-
							<input type="text" id="phone3" name="phone3" value="" maxlength="4"/>&emsp;
							<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="certConfirmBtn" name="certConfirmBtn">본인인증</a><br/><br/>
							인증 번호 : <input type="text" id="certNum" name="certNum" value=""/>&emsp;
							<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="confirmPhoneBtn" name="confirmPhoneBtn">확인</a>
							<div class="btn-wrap02">
								<a href="#" class="btn-style02" id="cancelBtn"  data-ga-category="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="로그인" style="text-align:center;">취소</a>
							</div>
						</div>
						<div id="certGroupEmail" style="display:none;"><br/><br/><br/>
						회원가입시 입력하였던 정보를 입력해주세요<br/><br/>
							이름 : <input type="text" id="user_name_email" name="user_name_email" value=""/><br/><br/>
							이메일 : 
							<input type="text" id="email_id" name="email_id" value=""/>@
							<input type="text" id="email_address" name="email_address" value=""/>&emsp;
							<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="certEmailBtn" name="certEmailBtn">본인인증</a><br/><br/>
							인증 번호 : <input type="text" id="certEmailNum" name="certEmailNum" value=""/>&emsp;
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
	<input type="hidden" id="tmpCertNum" name="tmpCertNum" value=""/>
	<input type="hidden" id="tmpEmailCert" name="tmpEmailCert" value="" />
	<form id="movedRefresh" method="post" action="/test/findIdPwPage.do"></form>
	<form id="userIdDay" method="post" action="/test/foundIdPage.do">
		<input type="hidden" id="user_id" name="user_id" value=""/>
	</form>
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
	
	$('#cancelBtn2').click(()=>{
		$('#movedRefresh').submit();
	});
	
	$('#findIdTab').click(()=>{
		$('#idPwGubn').val("id");
	});
	
	$('#findPwTab').click(()=>{
		$('#idPwGubn').val("pw");
	});
	
	//본인인증 
	$('#certConfirmBtn').on('click',function(){
		var userName = $('#user_name_phone').val();
		var phone1 = $('#phone1').val();
		var phone2 = $('#phone2').val();
		var phone3 = $('#phone3').val();
		
		if(userName == ""){
			alert("이름을 입력해주세요");
			$("#user_name_phone").focus();
			return;
		} else if(phone1 == ""){
			alert("전화번호를 입력해주세요");
			$('#phone1').focus();
			return;
		} else if(phone2 == ""){
			alert("전화번호를 입력해주세요");
			$('#phone2').focus();
			return;
		} else if(phone3 == ""){
			alert("전화번호를 입력해주세요");
			$('#phone3').focus();
			return;
		}
		
		phoneVerification(phone1, phone2, phone3, userName);
	});
	
	//이메일인증
	$('#certEmailBtn').click(()=>{
		
		var user_name_email = $('#user_name_email').val();
		var emailId = $('#email_id').val();
		var emailAd = $('#email_address').val();
		
		if(user_name_email == ""){
			alert("이름을 입력해주세요");
			$('#user_name_email').focus();
			return;
			
		} else if(emailId == ""){
			alert("이메일 앞자리를 입력해주세요");
			$('#email_id').focus();
			return;
			
		} else if(emailAd == ""){
			alert("이메일 뒷자리를 입력해주세요");
			$('#email_address').focus();
			return;
			
		} 
		
		var email = $('#email_id').val() + "@" + $('#email_address').val();
	
		$.ajax({
			type:'POST',
			url:'/test/sendingEmail.do',
			data:{ e_mail : email, user_name : user_name_email, email_id : emailId, email_address : emailAd},
			dataType:'json',
			success:function(res){
				console.log(res.dice);
				
				if(res.errorMsg != ""){
					alert(res.errorMsg);
					return;
				}
				$('#tmpEmailCert').val(res.dice);
			}
		});
	});
	
	$('#confirmEmailBtn').click(()=>{
		var certEmailNum = $('#certEmailNum').val();
		var tmpEmailCert = $('#tmpEmailCert').val();
		var user_name_email = $('#user_name_email').val();
		var emailId = $('#email_id').val();
		var emailAd = $('#email_address').val();
		
		if(user_name_email == ""){
			alert("이름을 입력해주세요");
			$('#user_name_email').focus();
			return;
			
		} else if(emailId == ""){
			alert("이메일 앞자리를 입력해주세요");
			$('#email_id').focus();
			return;
			
		} else if(emailAd == ""){
			alert("이메일 뒷자리를 입력해주세요");
			$('#email_address').focus();
			return;
			
		} else if(certEmailNum == ""){
			alert("인증번호를 입력해주세요");
			$('#certEmailNum').focus();
			return;
		}
		
		if(tmpEmailCert == certEmailNum){
			$.ajax({
				type : 'post',
				url : '/test/foundEmailId.do',
				data : {user_name : user_name_email, email_id : emailId, email_address : emailAd},
				dataType : 'json',
				success : function(data){
					var list = data.list;
					var user_id = list.user_id;
					var idPwGubn = $('#idPwGubn').val();
					$('#user_id').val(user_id);
					
					if(idPwGubn == 'id'){
						$('#userIdDay').submit();
					} else if(idPwGubn == 'pw'){
						$('#userIdDay').attr('action','/test/foundPwPage.do');
						$('#userIdDay').submit();
					}
					
				},
				error : function(request,status,error){
				      alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
				}
			});
		} else {
			alert("인증번호를 확인해주세요");
			$('#certEmailNum').val("");
			$('#certEmailNum').focus();
			return;
		}
	});
	
	$('#confirmPhoneBtn').click(()=>{
		
		alert("본인인증 확인버튼 클릭이벤트 시작");
		var certNum = $('#certNum').val();
		var tmpCertNum = $('#tmpCertNum').val();
		var userName = $('#user_name_phone').val();
		var phone1 = $('#phone1').val();
		var phone2 = $('#phone2').val();
		var phone3 = $('#phone3').val();
		
		if(certNum == tmpCertNum){
			$.ajax({
				type:'POST',
				url:'/test/foundId.do',
				data:{ user_name : userName, phone1 : phone1, phone2 : phone2, phone3 : phone3},
				dataType:'json',
				success:function(data){
					console.log(data.list);
					var list = data.list;
					$('#user_id').val(list.user_id);
					
					var idPwGubn = $('#idPwGubn').val();
					
					if(idPwGubn == 'id'){
						$('#userIdDay').submit();
					} else if(idPwGubn == 'pw'){
						$('#userIdDay').attr('action','/test/foundPwPage.do');
						$('#userIdDay').submit()
					}
					
					
				},
				error:function(request,status,error){
			      alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
			    }
			});
		} else {
			alert("본인인증번호를 확인해주세요");
			$('#certNum').val("");
			$('#certNum').focus();
			return;
		}
	});
	
	
});

function phoneVerification(phone1, phone2, phone3, user_name){
	var userName = user_name;
	var gubn = "2";
	
	$.ajax({
		type : "POST",
		url : "/test/getSendSMS.do",
		data : { phone1 : phone1 , phone2 : phone2, phone3 : phone3, user_name : userName, gubn : gubn},
		dataType : "json",
		success: function(data){
			console.log(data);
			if(data.errorMsg != "" && data.numStr == "0"){
				alert(data.errorMsg);
				return;
			}
			
			alert(data.sendingMsg);
			$('#tmpCertNum').val(data.numStr);
			
		},
		error : function(request, status) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:"
					+ error);
		}
	});
}
</script>
</html>