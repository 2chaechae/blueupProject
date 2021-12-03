<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>


<!-- 컨텐츠 시작 -->
<!-- 다음 우편번호 api -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/mypage/modify.member.view.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript"
	src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

<div class="contain my lnblist-Wrap" id="contain"
	style="padding-top: 50px; min-height: 412px;">
	<div class="container">
		<h2 class="title01">마이페이지</h2>

		<script>
		$(document).ready(function(){
			$('#popCertificationBtn').on('click',function(){
				var mobilAreaNo = $('#mobilAreaNo').val();
				var mobilTlofNo = $('#mobilTlofNo').val();
				var mobilTlofWthnNo = $('#mobilTlofWthnNo').val();
				phoneVerification(mobilAreaNo, mobilTlofNo, mobilTlofWthnNo);
			});
		});
		
		
		
			/* 드롭박스의 email domain이 바뀔때마다 자동으로 텍스트에 입력되도록 설정 */
			function statusChange(statusItem) {
				var value = $(statusItem).text();
				$('#mbrEmailDomain').val(value);
			}

			/* 다음 우편번호 검색 api */
			function execution_daum_address() {

				new daum.Postcode(
						{
							oncomplete : function(data) {
								/* 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. */
								// 각 주소의 노출 규칙에 따라 주소를 조합한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var addr = ''; // 주소 변수
								var extraAddr = ''; // 참고항목 변수

								//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									addr = data.roadAddress;
								} else { // 사용자가 지번 주소를 선택했을 경우(J)
									addr = data.jibunAddress;
								}

								// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
								if (data.userSelectedType === 'R') {
									// 법정동명이 있을 경우 추가한다. (법정리는 제외)
									// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									if (data.bname !== ''
											&& /[동|로|가]$/g.test(data.bname)) {
										extraAddr += data.bname;
									}
									// 건물명이 있고, 공동주택일 경우 추가한다.
									if (data.buildingName !== ''
											&& data.apartment === 'Y') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}
									// 주소변수 문자열과 참고항목 문자열 합치기
									addr += extraAddr;

								} else {
									addr += ' ';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								$("#mbrPostNo").val(data.zonecode);
								$("#mbrBaseAddr").val(addr);
								// 커서를 상세주소 필드로 이동한다.
								document.getElementById("mbrDetailAddr")
										.focus();
							}
						}).open();

			}

			//비밀번호 실시간 유효성 체크
			function pwCheck(pw) {
				$.ajax({
					type : "POST",
					url : "/test/pwCheck.do",
					data : {
						pw : pw
					},
					success : function(result) {
						if (result == true) {

							var text = '사용 가능한 비밀번호입니다';
							$('#passwordVal').css("display", "block");
							$('#passwordVal').css("color", "green");
							$('#passwordVal').text(text);
						} else {
							var text = '올바르지 않은 비밀번호입니다';
							$('#passwordVal').css("display", "block");
							$('#passwordVal').css("color", "red");
							$('#passwordVal').text(text);
						}
					},
					error : function(request, status) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}
				});
			}

			
			
			
			function phoneVerification(phone1, phone2, phone3){
				var phone = phone1+phone2+phone3;
				$.ajax({
					type : "POST",
					url : "/test/sendSMS.do",
					data : {
						"phoneNumber" : phone
					},
					dataType : "json",
					success: function(res){
						$('#hiddenVeri').text(res.numStr);
						/* 문자인증 */
						/* $('#veri').css("display", "block"); */
					},
					error : function(request, status) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}
				});
			}
			
			function veriCheck(){
				var value = $('#veriText').val();
				var spanValue = $('#hiddenVeri').text();
				$.ajax({
					type : "GET",
					url : "/test/veriCheck.do",
					data : {
						'value' : value,
						'spanValue' : spanValue
					},
					success : function(chk) {
						if (chk == true) {

							var text = '인증 성공';
							$('#veri').css("display", "block");
							$('#veri').css("color", "green");
							$('#veri').text(text);
						} else {
							var text = '인증 실패';
							$('#veri').css("display", "block");
							$('#veri').css("color", "red");
							$('#veri').text(text);
						}
					},
					error : function(request, status) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}
				});
			}
			
			function pwVerification(){
				var password = $('#newPassword').val();
				var passwordChk = $('#mbrCheckPw').val();
				
				$.ajax({
					type :"GET",
					url : "/test/passwordChk.do",
					data : {
						'password' : password,
						'passwordChk' : passwordChk
					},
					success : function(res) {
						if (res == true) {

							var text = '비밀번호가 일치합니다';
							$('#passwordChk').css("display", "block");
							$('#passwordChk').css("color", "green");
							$('#passwordChk').text(text);
						} else {
							var text = '비밀번호가 일치하지 않습니다';
							$('#passwordChk').css("display", "block");
							$('#passwordChk').css("color", "red");
							$('#passwordChk').text(text);
						}
					},
					error : function(request, status) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}
				});
			}

			$(document).ready(function(){
				$("#modifyMbrForm").click(function(){
					 document.getElementById('frm').submit(); 
					});
			});
			
			
			
		
		</script>

		<%@ include file="mypageMenu.jsp"%>

		<main class="contents memberInfoModi-wrap" id="contents">
			<form action="/test/modifyUser.do" id="modifyMbrForm"
				method="post">
				<input type="hidden" name="_csrf"
					value="3c6cc40e-e420-4266-9985-626c86d3b96d"> <input
					type="hidden" name="familyExceptionFlag" value="N"> <input
					type="hidden" name="targetPath" value=""> <input
					type="hidden" name="mbr.emailRecptnAgrYn"> <input
					type="hidden" name="mbr.smsRecptnAgrYn">
					<input type="hidden" name="user_no" value="${userVo.user_no }" />

				<div class="location-contents">
					<p class="location">
						<span><a href="/main/mall/view">Home</a></span> 
						<span><a href="/mypage/view">마이페이지</a></span> <span>회원정보</span> 
						<strong>회원정보 수정</strong>
					</p>
				</div>
				<p class="text-required">
					<span class="required">*</span> 필수입력 항목
				</p>

				<div class="board-write forms">
					<table summary="회원정보 수정 입력">
						<caption>회원정보 수정</caption>
						<colgroup>
							<col style="width: 200px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="">아이디</label></th>

								<td>
									<p>${userVo.user_id }</p>
									<input type="hidden" name="user_id" value="${userVo.user_id }" />
								</td>

							</tr>
							<tr>
								<th scope="row" class="tbSTvtc-top"><label for="">비밀번호</label></th>
								<td>
									<p>
										<input type="password" class="input-style01"
											style="width: 550px;" placeholder="새 비밀번호 (8~12자 영문, 숫자 조합)"
											id="newPassword" name="user_password" validatetext="비밀번호"
											maxlength="12" oninput="pwCheck(newPassword.value)">
										<span class="error-msg" id="passwordVal"></span>
									</p>
									<p>
										<input type="password" class="input-style01"
											style="width: 550px;" placeholder="새 비밀번호 확인" id="mbrCheckPw"
											name="mbrCheckPw" validatetext="비밀번호 확인" maxlength="12" oninput="pwVerification()">
										<span class="error-msg" id="passwordChk"></span>
									</p>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="">이름</label></th>
								<td>
									<p>${userVo.user_name }</p>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="">생일</label></th>
								<td>
									<p>${yy }${mm } ${dd }</p>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="mbrEmail">이메일</label> <span
									class="required">*</span></th>
								<td><input type="text" class="input-style01" style="width: 110px;" id="mbrEmail" title="이메일 아이디 입력" validate="required;" validatetext="이메일" value="${userVo.email_id }" name="user_email"> 
								<span class="at">@</span>
									<input type="text" class="input-style01" style="width: 110px;" id="mbrEmailDomain" title="이메일 도메인 주소 직접 입력" validate="required;" validatetext="이메일" value="${userVo.email_address }" name="user_email_domain"> <!-- select -->
									<div class="select-style01 d_select">
										<button type="button" class="d_select_sel" style="width: 150px;" id="emailDefaultDomain">
											<span>직접입력</span>
										</button>
										<ul>
											<li><a href="#" onClick="statusChange(this)">직접입력</a></li>
											<li><a href="#" onClick="statusChange(this)">naver.com</a></li>
											<li><a href="#" onClick="statusChange(this)">daum.net</a></li>
											<li><a href="#" onClick="statusChange(this)">nate.com</a></li>
											<li><a href="#" onClick="statusChange(this)">gmail.com</a></li>
											<li><a href="#" onClick="statusChange(this)">hotmail.com</a></li>
											<li><a href="#" onClick="statusChange(this)">kakao.com</a></li>
										</ul>
									</div> <span class="error-msg"></span> 
							</tr>
							<tr>
								<th scope="row"><label for="mobilAreaNo">휴대전화</label> <span
									class="required">*</span></th>
								<td>
									<div class="inputcallBox">
										<input type="hidden" id="mobileNumber" validate="required;phone;" validatetext="휴대전화" > 
										<input type="text" style="width: 64px;" id="mobilAreaNo1" name="phone1" class="input-style01" title="휴대폰 통신사 번호 입력창" value="${userVo.phone1 }" validate="required;digit;" validatetext="휴대전화" maxlength="3" > 
										<span class="hyphen">-</span> 
										<input type="text" style="width: 70px;" id="mobilTlofNo1" name="phone2" class="input-style01" title="휴대폰 중간 번호 입력창" value="${userVo.phone2 }" validate="required;digit;" validatetext="휴대전화" maxlength="4" > 
										<span class="hyphen">-</span> 
										<input type="text" style="width: 70px;" id="mobilTlofWthnNo1" name="phone3" class="input-style01" title="휴대폰 마지막 번호 입력창" value="${userVo.phone3 }" validate="required;digit;" validatetext="휴대전화" maxlength="4">
										<!-- 1905 번호인증 추가 : 인증하기 버튼 S -->
										<!-- <a class="btn-style04" id="popCertificationBtn" "="" href="javascript:;" onclick="layerPopup.popupOpenNow('#popCertification')">인증하기</a> -->
										<input type="button" class="btn-style04" id="popCertificationBtn"
										style="display:inline-block; min-width: 134px; 
										height: 40px; border: 1px; solid : #000;
										background: #fff; font-size:13px; line-height: 38px; 
										text-align: center; vertical-align: 
										top; margin-left: 6px;" value="인증하기"/>
										<!-- 1905 번호인증 추가 : 인증하기 버튼 E -->
										
									</div> <span class="error-msg" style="display: block;"></span> <!-- 1905 번호인증 추가 : 멘트 추가 S -->
									<p class="dsc">
										휴대전화번호를 변경하시려면 <strong>인증하기</strong>를 눌러 변경해 주세요.
									</p> <!-- 1905 번호인증 추가 : 멘트 추가 E -->
									<div>
										<input type="text" style=" display : block; width: 100px;" id="veriText" name="verificationNum" class="input-style01" title="인증번호 입력창" validate="required;digit;" validatetext="인증번호" maxlength="4" oninput="veriCheck()">
										<span id="hiddenVeri" style="display: none;"></span>
										<span class="error-msg" id="veri" style="display: block;"></span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tbSTvtc-top"><label for="mbrPostNo">주소</label></th>
								<td><input type="text" id="mbrPostNo" name="zipcode" class="input-style01" title="우편번호 입력" value="${userVo.zipcode }"style="width: 240px;"  readonly=""> 
								<a href="#" class="btn-style04" onclick="execution_daum_address();return false;">우편번호 찾기</a> 
								<input type="text" id="mbrBaseAddr" name="address" class="input-style01 mtST10"  title="주소 입력창" style="width: 550px;" value="${userVo.address }" readonly=""> 
								<input type="text" id="mbrDetailAddr" name="detailed_address" class="input-style01 mtST10" title="상세주소 입력창" style="width: 550px;" value="${userVo.detailed_address }"> 
								<input type="hidden" name="mbr.mbrAddrSectCd" value=""> 
								<span class="error-msg"></span></td>
							</tr>

							<tr>
								<th scope="row" class="tbSTvtc-top"><label for="">e-Mail, SMS(알림톡)</label></th>
								<td>
									<div class="chkST-mg">
									<c:choose>
									<c:when test="${userVo.agree_email }">
										<span class="check-skin"> 
										<input type="checkbox" 	id="emailRecptnAgrYn" name="emailRecptnAgrYn" value="true" checked="checked"> 
										<span>e-Mail 수신</span>
										</span> <label for="emailRecptnAgrYn">e-Mail 수신</label>
										</c:when>
										
										<c:otherwise>
											<span class="check-skin"> 
											<input type="checkbox" 	id="emailRecptnAgrYn" name="emailRecptnAgrYn" value="true" > 
											<span>e-Mail 수신</span>
										</span> <label for="emailRecptnAgrYn">e-Mail 수신</label>
										</c:otherwise> 
									</c:choose>
									
									<c:choose>
									<c:when test="${userVo.agree_sns }">
										<span class="check-skin"> <input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="true" checked="checked"> 
										<span>SMS(알림톡) 수신</span>
										</span> <label for="smsRecptnAgrYn">SMS(알림톡) 수신</label>
										</c:when>
										
										<c:otherwise>
											<span class="check-skin"> <input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="true"> 
										<span>SMS(알림톡) 수신</span>
										</span> <label for="smsRecptnAgrYn">SMS(알림톡) 수신</label>
										</c:otherwise>
									</c:choose>
									</div>
									<ul class="text-list02 col-type01">
										<li>e-Mail, SMS(알림톡)을 통한 상품 및 이벤트 정보 수신에 동의합니다.</li>
										<li>거래정보(주문/반품/교환) 관련 e-Mail/SMS(알림톡)은 수신동의 하지 않아도 발송됩니다.</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<ul class="text-list02 col-type01">
					<li>상기 부가정보 수신 동의는 F&amp;F 브랜드에서 회원에게 이메일, SMS를 활용하여 상품 및 서비스에
						대한 제반 마케팅 활동을 하기 위한 회원정보 (개인정보취급 방침 중 “2. 수집하는 개인정보 항목” 기재 항목)제공 및
						각 서비스 수신에 대한 사항입니다.</li>
					<li>약관변경이나 공지 등의 고지성 안내 메일은 수신동의 하지않더라도 고객의 권익보호를 위해 발송됩니다.</li>
					<li>제공된 회원정보는 F&amp;F 브랜드가 별도 동의를 득한 경우를 제외하고는 회원탈퇴 후 30일까지
						보유합니다.</li>
				</ul>

				<div class="btnWrapBox">
					<a href="#" class="btn" id="cancelBtn" onclick="return false;">취소</a>
					<input type="button" class="btn fill" id="confirmBtn" style="height: 45px; line-height: 45px; width:200px; margin-right: 2px; padding: 0 40px; font-size: 14px;" value="확인">
						<!-- return false; -->
				</div>
			</form>
		</main>
	</div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>