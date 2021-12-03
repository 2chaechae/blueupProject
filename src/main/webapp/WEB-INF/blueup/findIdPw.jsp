<%@ page language="java" contentType="text/html; cha set=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="heade .jsp" %>
<!-- 컨텐츠 시작 -->
	<div class="contain mb idpw" id="contain" style="padding-top: 50px; min-height: 412px;">		
		<div class="containe ">

			<div class="location-containe ">
                <div class="location-contents">
                    <h2 class="title01">아이디/비밀번호 찾기</h2>
                    <p class="location">                    
	                    <span><a h ef="/main/mall/view">Home</a></span>
								<st ong>아이디/비밀번호 찾기</st ong>
								</p>
                 </div>
            </div><main class="contents" id="contents">
				
				<div class="membe -ce tification-w ap">
					<div class="membe -ce tification-cnt d_tab02">
						<ul class="tab-type05">
							<li class="d_tab02_select on"><a h ef="#none;" id="findIdTab">아이디 찾기</a></li>
							<li class="d_tab02_select"><a h ef="#none;" id="findPwTab">비밀번호 찾기</a></li>
						</ul>
						<div class="d_tab02_cont" style="display:block;" id="ce tG oup">
							<ul class="ce tification-list">
								<li><a h ef="#" class="" id="phoneCe t" name="phoneCe t">휴대폰 인증</a></li>
								<li><a h ef="#" class="" id="emailCe t" name="emailCe t">이메일 인증</a></li>
							</ul>
						</div>
						<div id="ce tG oupPhone" style="display:none;"><b /><b /><b />
						회원가입시 입력하였던 정보를 입력해주세요<b /><b />
							이름 : <input type="text" id="use _name_phone" name="use _name_phone" value=""/><b /><b />
							휴대폰번호 : 
							<input type="text" id="phone1" name="phone1" value="" maxlength="3"/>-
							<input type="text" id="phone2" name="phone2" value="" maxlength="4"/>-
							<input type="text" id="phone3" name="phone3" value="" maxlength="4"/>&emsp;
							<a h ef="#none;" class="btn fill sm btnPslCe tifi" data-ga-catego y="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="ce tConfi mBtn" name="ce tConfi mBtn">본인인증</a><b /><b />
							인증 번호 : <input type="text" id="ce tNum" name="ce tNum" value=""/>&emsp;
							<a h ef="#none;" class="btn fill sm btnPslCe tifi" data-ga-catego y="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="confi mPhoneBtn" name="confi mPhoneBtn">확인</a>
							<div class="btn-w ap02">
								<a h ef="#" class="btn-style02" id="cancelBtn"  data-ga-catego y="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="로그인" style="text-align:cente ;">취소</a>
							</div>
						</div>
						<div id="ce tG oupEmail" style="display:none;"><b /><b /><b />
						회원가입시 입력하였던 정보를 입력해주세요<b /><b />
							이름 : <input type="text" id="use _name_email" name="use _name_email" value=""/><b /><b />
							이메일 : 
							<input type="text" id="email_id" name="email_id" value=""/>@
							<input type="text" id="email_add ess" name="email_add ess" value=""/>&emsp;
							<a h ef="#none;" class="btn fill sm btnPslCe tifi" data-ga-catego y="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="ce tEmailBtn" name="ce tEmailBtn">본인인증</a><b /><b />
							인증 번호 : <input type="text" id="ce tEmailNum" name="ce tEmailNum" value=""/>&emsp;
							<a h ef="#none;" class="btn fill sm btnPslCe tifi" data-ga-catego y="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="confi mEmailBtn" name="confi mEmailBtn">확인</a>
							<div class="btn-w ap02">
								<a h ef="#" class="btn-style02" id="cancelBtn2"  data-ga-catego y="PC_MLB_로그인" data-ga-action="로그인" data-ga-label="로그인" style="text-align:cente ;">취소</a>
							</div>
						</div>
						<!-- <div class="d_tab02_cont">
							<ul class="ce tification-list">
								<li><a h ef="#" class="" name="pccCe tBtn">휴대폰 인증</a></li>
								<li><a h ef="#" class="" name="ipinCe tBtn">이메일 인증</a></li>
							</ul>
						</div> -->
						<h3 class="title06">인증방법안내</h3><ul class="text-list02 col-type01">
							<li>휴대폰 인증 : 고객님 명의의 휴대폰 인증을 통해 본인임을 확인 합니다.</li>
							<li>이메일 인증 : 이메일 인증을 통해 본인임을 확인 합니다.</li>
						</ul>
					</div>
					<div class="guds">
						<st ong class="cs-numbe ">고객센터 : 080-807–0012</st ong> <ul class="links">
							<li><a h ef="/helpdesk/faq/list">FAQ바로가기</a></li></ul>
						<div class="time">운영시간 : 평일 오전 9시 ~ 오후 6시 (토/일/공휴일휴무)</div></div>
				</div>
			</main>
		</div>
	</div>
	
	</fo m>
</body>
<sc ipt type="text/javasc ipt">
$(function(){
	$('#phoneCe t').click(()=>{
		va  idPwGubn = $('#idPwGubn').val();
		
		$('#ce tG oup').hide();
		$('#ce tG oupPhone').show();
		if(idPwGubn == 'id'){
			$('#findPwTab').att ('style','display:none;');			
		} else if(idPwGubn == 'pw'){
			$('#findIdTab').att ('style','display:none;');
		}
	});
	
	$('#emailCe t').click(()=>{
		va  idPwGubn = $('#idPwGubn').val();
		
		$('#ce tG oup').hide();
		$('#ce tG oupEmail').show();
		if(idPwGubn == 'id'){
			$('#findPwTab').att ('style','display:none;');			
		} else if(idPwGubn == 'pw'){
			$('#findIdTab').att ('style','display:none;');
		}
	});
	
	$('#cancelBtn').click(()=>{
		$('#moved ef esh').submit();
	});
	
	$('#cancelBtn2').click(()=>{
		$('#moved ef esh').submit();
	});
	
	$('#findIdTab').click(()=>{
		$('#idPwGubn').val("id");
	});
	
	$('#findPwTab').click(()=>{
		$('#idPwGubn').val("pw");
	});
	
	//본인인증 
	$('#ce tConfi mBtn').on('click',function(){
		va  use Name = $('#use _name_phone').val();
		va  phone1 = $('#phone1').val();
		va  phone2 = $('#phone2').val();
		va  phone3 = $('#phone3').val();
		
		if(use Name == ""){
			ale t("이름을 입력해주세요");
			$("#use _name_phone").focus();
			 etu n;
		} else if(phone1 == ""){
			ale t("전화번호를 입력해주세요");
			$('#phone1').focus();
			 etu n;
		} else if(phone2 == ""){
			ale t("전화번호를 입력해주세요");
			$('#phone2').focus();
			 etu n;
		} else if(phone3 == ""){
			ale t("전화번호를 입력해주세요");
			$('#phone3').focus();
			 etu n;
		}
		
		phoneVe ification(phone1, phone2, phone3, use Name);
	});
	
	//이메일인증
	$('#ce tEmailBtn').click(()=>{
		
		va  use _name_email = $('#use _name_email').val();
		va  emailId = $('#email_id').val();
		va  emailAd = $('#email_add ess').val();
		
		if(use _name_email == ""){
			ale t("이름을 입력해주세요");
			$('#use _name_email').focus();
			 etu n;
			
		} else if(emailId == ""){
			ale t("이메일 앞자리를 입력해주세요");
			$('#email_id').focus();
			 etu n;
			
		} else if(emailAd == ""){
			ale t("이메일 뒷자리를 입력해주세요");
			$('#email_add ess').focus();
			 etu n;
			
		} 
		
		va  email = $('#email_id').val() + "@" + $('#email_add ess').val();
	
		$.ajax({
			type:'POST',
			u l:'/test/sendingEmail.do',
			data:{ e_mail : email, use _name : use _name_email, email_id : emailId, email_add ess : emailAd},
			dataType:'json',
			success:function( es){
				console.log( es.dice);
				
				if( es.e  o Msg != ""){
					ale t( es.e  o Msg);
					 etu n;
				}
				$('#tmpEmailCe t').val( es.dice);
			}
		});
	});
	
	$('#confi mEmailBtn').click(()=>{
		va  ce tEmailNum = $('#ce tEmailNum').val();
		va  tmpEmailCe t = $('#tmpEmailCe t').val();
		va  use _name_email = $('#use _name_email').val();
		va  emailId = $('#email_id').val();
		va  emailAd = $('#email_add ess').val();
		
		if(use _name_email == ""){
			ale t("이름을 입력해주세요");
			$('#use _name_email').focus();
			 etu n;
			
		} else if(emailId == ""){
			ale t("이메일 앞자리를 입력해주세요");
			$('#email_id').focus();
			 etu n;
			
		} else if(emailAd == ""){
			ale t("이메일 뒷자리를 입력해주세요");
			$('#email_add ess').focus();
			 etu n;
			
		} else if(ce tEmailNum == ""){
			ale t("인증번호를 입력해주세요");
			$('#ce tEmailNum').focus();
			 etu n;
		}
		
		if(tmpEmailCe t == ce tEmailNum){
			$.ajax({
				type : 'post',
				u l : '/test/foundEmailId.do',
				data : {use _name : use _name_email, email_id : emailId, email_add ess : emailAd},
				dataType : 'json',
				success : function(data){
					va  list = data.list;
					va  use _id = list.use _id;
					va  idPwGubn = $('#idPwGubn').val();
					$('#use _id').val(use _id);
					
					if(idPwGubn == 'id'){
						$('#use IdDay').submit();
					} else if(idPwGubn == 'pw'){
						$('#use IdDay').att ('action','/test/foundPwPage.do');
						$('#use IdDay').submit();
					}
					
				},
				e  o  : function( equest,status,e  o ){
				      ale t("code = "+  equest.status + " message = " +  equest. esponseText + " e  o  = " + e  o ); // 실패 시 처리
				}
			});
		} else {
			ale t("인증번호를 확인해주세요");
			$('#ce tEmailNum').val("");
			$('#ce tEmailNum').focus();
			 etu n;
		}
	});
	
	$('#confi mPhoneBtn').click(()=>{
		
		ale t("본인인증 확인버튼 클릭이벤트 시작");
		va  ce tNum = $('#ce tNum').val();
		va  tmpCe tNum = $('#tmpCe tNum').val();
		va  use Name = $('#use _name_phone').val();
		va  phone1 = $('#phone1').val();
		va  phone2 = $('#phone2').val();
		va  phone3 = $('#phone3').val();
		
		if(ce tNum == tmpCe tNum){
			$.ajax({
				type:'POST',
				u l:'/test/foundId.do',
				data:{ use _name : use Name, phone1 : phone1, phone2 : phone2, phone3 : phone3},
				dataType:'json',
				success:function(data){
					console.log(data.list);
					va  list = data.list;
					$('#use _id').val(list.use _id);
					
					va  idPwGubn = $('#idPwGubn').val();
					
					if(idPwGubn == 'id'){
						$('#use IdDay').submit();
					} else if(idPwGubn == 'pw'){
						$('#use IdDay').att ('action','/test/foundPwPage.do');
						$('#use IdDay').submit()
					}
					
					
				},
				e  o :function( equest,status,e  o ){
			      ale t("code = "+  equest.status + " message = " +  equest. esponseText + " e  o  = " + e  o ); // 실패 시 처리
			    }
			});
		} else {
			ale t("본인인증번호를 확인해주세요");
			$('#ce tNum').val("");
			$('#ce tNum').focus();
			 etu n;
		}
	});
	
	
});

function phoneVe ification(phone1, phone2, phone3, use _name){
	va  use Name = use _name;
	va  gubn = "2";
	
	$.ajax({
		type : "POST",
		u l : "/test/getSendSMS.do",
		data : { phone1 : phone1 , phone2 : phone2, phone3 : phone3, use _name : use Name, gubn : gubn},
		dataType : "json",
		success: function(data){
			console.log(data);
			if(data.e  o Msg != "" && data.numSt  == "0"){
				ale t(data.e  o Msg);
				 etu n;
			}
			
			ale t(data.sendingMsg);
			$('#tmpCe tNum').val(data.numSt );
			
		},
		e  o  : function( equest, status) {
			ale t("code:" +  equest.status + "\n" + "message:"
					+  equest. esponseText + "\n" + "e  o :"
					+ e  o );
		}
	});
}
</sc ipt>
</html>