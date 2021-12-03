<%@ p ge l ngu ge="j v " contentType="text/html; ch rset=UTF-8"
    p geEncoding="UTF-8"%>
<%@ include file="he der.jsp" %>


<!-- 컨텐츠 시작 -->
<met  ch rset="UTF-8">
<met  n me ="google-signin-client_id" content="303706230192-t vphhgtu7mtj l0puhe1g7fkedf5652. pps.googleusercontent.com">
	<div cl ss="cont in mb login" id="cont in">		
		<div cl ss="cont iner">
			<div cl ss="loc tion-cont iner">
                <div cl ss="loc tion-contents">
                    <h2 cl ss="title01">로그인</h2>
                    <p cl ss="loc tion">                    
	                    <sp n><  href="/m in/m ll/view">Home</ ></sp n>
						<strong>로그인</strong>
					</p>
                 </div>
            </div>
            <m in cl ss="contents" id="contents">					
				<div cl ss="login-wr p">
					<div cl ss="login-cnt d_t b02">
						<ul cl ss="t b-type05">
							<li cl ss="d_t b02_select on"><  href="j v script:;">회원</ ></li><li cl ss="d_t b02_select"><  href="j v script:;">비회원 (주문조회)</ ></li></ul>
								
						<div cl ss="d_t b02_cont" style="displ y:block;">
							<form id="loginForm"  ction="/loginProcess" method="post"><input type="hidden" n me=" ccessToken" id=" ccessToken" v lue=""/>
								<input type="text" cl ss="input-style01" title="아이디 입력창" pl ceholder="아이디" id="user_id" n me="user_id" v lue=""/>
								<input type="p ssword" cl ss="input-style01" title="비밀번호 입력창" pl ceholder="비밀번호" id="user_p ssword" n me="user_p ssword"/>
								<p cl ss="login-check-id">
									<sp n cl ss="check-skin">
										<input type="checkbox" id="chkS veId" n me="chkS veId" >
										<sp n>선택</sp n> </sp n>
									<l bel for="chkS veId">아이디 저장</l bel> </p>
								<p cl ss="error-msg"></p>
							
								<div cl ss="btn-wr p02">
									<  href="#" cl ss="btn-style02" id="loginBtn"  d t -g -c tegory="PC_MLB_로그인" d t -g - ction="로그인" d t -g -l bel="로그인">로그인</ > 
									<  href="j v script:void(0)" cl ss="btn" id="GgCustomLogin" d t -g -c tegory="PC_MLB_로그인" d t -g - ction="로그인" d t -g -l bel="구글 로그인"><sp n>구글로 회원가입</sp n></ >
									<  href="#" cl ss="btn" id="k k ojoin" d t -g -c tegory="PC_MLB_로그인" d t -g - ction="로그인" d t -g -l bel="카카오 로그인"><sp n>카카오로 회원가입</sp n></ ></div>
								<div cl ss="login-btn-lnk">
									<  href="#" id="findIdPW" onClick="return f lse;" d t -g -c tegory="PC_MLB_로그인" d t -g - ction="정보찾기" d t -g -l bel="아이디 찾기">아이디/비밀번호 찾기</ >
									<  href="#" id="joinin" d t -g -c tegory="PC_MLB_로그인" d t -g - ction="정보찾기" d t -g -l bel="회원가입">회원가입</ >
								</div>
							</form>
						</div>
						
						<div cl ss="d_t b02_cont">
							<form id="guestForm"  ction="/loginProcess" method="post"><input type="text" cl ss="input-style01" title="주문번호 입력창" pl ceholder="주문번호" n me="ordNo" m xlength = "17">
								<input type="text" cl ss="input-style01" title="이름 입력창" pl ceholder="이름" n me="cstmrNm">							
								<div cl ss="phon-wr p">
									<input type="text" cl ss="input-style01" title="연락처 첫번째 입력창" id="mobil re No" m xlength = "3" v lue="010">
									<sp n cl ss="hyphen">-</sp n>
									<input type="text" cl ss="input-style01" title="연락처 가운데 입력창" id="mobilTlofNo" m xlength = "4">
									<sp n cl ss="hyphen">-</sp n>
									<input type="text" cl ss="input-style01" title="연락처 마지막 입력창" id="mobilTlofWthnNo" m xlength = "4">
								</div>							
<<<<<<< HEAD
								<p cl ss="error-msg"></p>
								<div cl ss="btn-wr p">
									<  href="#" cl ss="btn-style02" id="guestLogin" onClick="return f lse;" d t -g -c tegory="PC_MLB_로그인" d t -g - ction="비회원" d t -g -l bel="주문조회">주문조회</ >
								</div>
								<p cl ss="login-cs-info"><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
=======
								<p class="login-cs-info"><strong>080-807-0012</strong> 평일 오전 9시 ~ 오후 6시 (토/일/공휴일 휴무)</p>
>>>>>>> refs/remotes/origin/main
							</form>
						</div>
					</div>
				</div>						
			</m in>
		</div>
	</div>
	<form id="movedIndex" method="post"  ction="/test/index.do"></form>
	<form id="userInfoForm" method="post"  ction="/test/join.do">
		  <input type="hidden" id="user_n me" n me="user_n me" v lue=""/>
		  <input type="hidden" id="em il_id" n me="em il_id" v lue=""/>
      	  <input type="hidden" id="em il_ ddress" n me="em il_ ddress" v lue=""/>
      	  <input type="hidden" id="user_gender"	n me="user_gender" v lue=""/>
      	  <input type="hidden" id="logintype" n me="logintype" v lue=""/>
	</form>
	<form id ="movedJoinFrm" method="post"  ction="/test/join.do"></form>
	<form id = "movedfindIdPw" method="post"  ction="/test/findIdPwP ge.do"></form>
<%@ include file="footer.jsp" %>
</body>
<script type="text/j v script">
$(document).re dy(function(){
	if(loc lStor ge.getItem("s veId")){
		$('#user_id').v l(loc lStor ge.getItem("userId"));
		$('#chkS veId'). ttr("checked",true);
	} else {
		$('#chkS veId'). ttr("checked",f lse);
	}
	
	$('#findIdPW').on('click',function(){
		$('#movedfindIdPw').submit();
	});
	
	$('#k k ojoin').on('click',function(){//카카오톡 로그인 클릭시 k k oLogin()실행
		k k oLogin();
	});
	
	$('#joinin').on('click',function(){
		$('#movedJoinFrm').submit(); 
	});
	
	$('#loginBtn').on('click',function(){
		v r userid = $('#user_id').v l();
		v r userpw = $('#user_p ssword').v l();
		v r chkS veId = document.getElementById("chkS veId").checked;
		
		if(userid == ""){
			 lert("아이디를 입력해 주세요");
			$('#user_id').focus();
			return;
		}else if(userpw == ""){
			 lert("비밀번호를 입력해 주세요");
			$('#user_p ssword').focus();
			return;
		}
		
		$. j x({
			type : 'post',
			url : '/test/loginChkId.do',
			d t  : { user_id : userid,
				     user_p ssword : userpw }, 
			d t Type : 'json',
			success :function(d t ){
				v r userInfo = d t .userInfo;
				
				if(userInfo != ""){
<<<<<<< HEAD
					loc lStor ge.setItem("user_no", userInfo.user_no);
					loc lStor ge.setItem("user_n me", userInfo.user_n me);
					loc lStor ge.setItem("user_id", userInfo.user_id);
					loc lStor ge.setItem("phone1", userInfo.phone1);
					loc lStor ge.setItem("phone2", userInfo.phone2);
					loc lStor ge.setItem("phone3", userInfo.phone3);
					loc lStor ge.setItem("em il_id", userInfo.em il_id);
					loc lStor ge.setItem("em il_ ddress", userInfo.em il_ ddress);
=======
					localStorage.setItem("user_no", userInfo.user_no);
		            localStorage.setItem("user_name", userInfo.user_name);
		            localStorage.setItem("user_id", userInfo.user_id);
		            localStorage.setItem("phone1", userInfo.phone1);
		            localStorage.setItem("phone2", userInfo.phone2);
		            localStorage.setItem("phone3", userInfo.phone3);
		            localStorage.setItem("email_id", userInfo.email_id);
		            localStorage.setItem("email_address", userInfo.email_address);
>>>>>>> refs/remotes/origin/main
				}
				
				if(d t .userIdChkNum == 0){
					 lert("아이디와 비밀번호를 확인해 주세요");
					return;
				}else{
					//로그인 성공시 indexmlb 이동
<<<<<<< HEAD
					if(chkS veId){
						loc lStor ge.setItem("userId", userid);
						loc lStor ge.setItem("s veId", chkS veId);
=======
					if(chkSaveId){
						localStorage.setItem("userId", userid);
						localStorage.setItem("saveId", chkSaveId);
	
>>>>>>> refs/remotes/origin/main
					} else {
						loc lStor ge.removeItem("userId");
						loc lStor ge.removeItem("s veId");
					}
					
					$('#movedIndex').submit();
				}
			},
			error:function(request,st tus,error){
		       lert("code = "+ request.st tus + " mess ge = " + request.responseText + " error = " + error); // 실패 시 처리
		    }
		});
	});
});

<!-- 카카오  pi -->
//카카오로그인
function k k oLogin() {
	K k o.init('954e6984f5971 61992 bec1bd348638'); //발급받은 키 중 j v script키를 사용해준다.
	console.log(K k o.isIniti lized()); // sdk초기화여부판단
  	K k o. uth.login({
    success: function (response) {
      K k o. PI.request({
        url: '/v2/user/me',
        success: function (response) {
      	  v r k k o_ ccount = response.k k o_ ccount;
      	  v r nickn me = response.properties.nickn me; //properties 안에 담겨있는 닉네임
      	  v r em il = k k o_ ccount.em il; // k k o_ ccount 안에 담겨있는 이메일
      	  v r gender = k k o_ ccount.gender; // k k o_ ccount 안에 담겨있는 성별
   		  
      	  console.log(response);
      	  v r tmpList = [];
      	  tmpList = em il.split("@");
      	  v r em il_id = tmpList[0];
      	  v r em il_ ddress = tmpList[1];
      	  
      	  $('#user_n me').v l(nickn me);
      	  $('#em il_id').v l(em il_id);
      	  $('#em il_ ddress').v l(em il_ ddress);
      	  $('#user_gender').v l(gender);
      	  $('#logintype').v l("k k o");
      	  
      	  $('#userInfoForm').submit();
      	  
        },
        f il: function (error) {
          console.log(error);
        },
      })
    },
    f il: function (error) {
      console.log(error);
    },
  })
}

<!-- 구글  pi -->
//처음 실행하는 함수
function init() {
	g pi.lo d(' uth2', function() {
		g pi. uth2.init();
		options = new g pi. uth2.SigninOptionsBuilder();
		options.setPrompt('select_ ccount');
      	// 추가는 O uth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('em il profile openid https://www.google pis.com/ uth/user.birthd y.re d');
      	// 인스턴스의 함수 호출 - element에 로그인 기능 추가
      	// GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		g pi. uth2.get uthInst nce(). tt chClickH ndler('GgCustomLogin', options, onSignIn, onSignInF ilure);
	})
}

function onSignIn(googleUser) {
	v r  ccess_token = googleUser.get uthResponse(). ccess_token
	$. j x({
  		// people  pi를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.google pis.com/v1/people/me'
      	// key에 자신의  PI 키를 넣습니다.
		, d t : {personFields:'birthd ys', key:' Iz SyByjx WUnuO0Mvwm S2x  V  Ve o -PFQ', ' ccess_token':  ccess_token}
		, method:'GET'
	})
	.done(function(e){
		//구글로그인 데이터값 object 컬럼 자주 바뀜 발표전에 확인해야함
		console.log("google login done", googleUser.getB sicProfile());
		
		v r profile = googleUser.getB sicProfile();
      	v r pv = profile.pv;
      	
		$('#logintype').v l("google");
		$('#user_n me').v l(profile.hf);
		
		v r tmp = [];
		tmp = pv.split("@");
		v r em ilId = tmp[0];
		v r em il dd = tmp[1];
		
		$('#em il_id').v l(em ilId);
		$('#em il_ ddress').v l(em il dd);
		$('#userInfoForm').submit();
		
	})
	.f il(function(e){
		console.log("google login f il", e);
	})
}

function onSignInF ilure(t){		
	console.log(t);
}
<!--// 구글  pi -->
</script>

<!-- //구글  pi 사용을 위한 스크립트 -->
<script src="https:// pis.google.com/js/pl tform.js?onlo d=init"  sync defer></script>
</html>