<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>   

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/modify.member.view.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

	<div class="contain my lnblist-Wrap" id="contain" style="padding-top: 50px; min-height: 412px;">
		<div class="container">
			<h2 class="title01">마이페이지</h2>

<%@ include file="mypageMenu.jsp" %>
<main class="contents memberInfoModi-wrap" id="contents">
				<form action="/mypage/member/modifyMember" id="modifyMbrForm" method="post">
				<input type="hidden" name="_csrf" value="3c6cc40e-e420-4266-9985-626c86d3b96d">
				<input type="hidden" name="familyExceptionFlag" value="N">
				<input type="hidden" name="targetPath" value="">
				<input type="hidden" name="mbr.emailRecptnAgrYn">
				<input type="hidden" name="mbr.smsRecptnAgrYn">
				
				<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span>
							<span><a href="/mypage/view">마이페이지</a></span>
							<span>회원정보</span>
							<strong>회원정보 수정</strong>
							</p>
			</div> 		<p class="text-required"><span class="required">*</span> 필수입력 항목</p>
				
				<div class="board-write forms">
					<table summary="회원정보 수정 입력">
						<caption>회원정보 수정</caption>
						<colgroup>
							<col style="width:200px;">
							<col>
						</colgroup>
						<tbody><tr>
							<th scope="row"><label for="">아이디</label></th>
							
							<td>
								<p>hyunkyoung04</p>
								</td>
							
						</tr>						
						<tr>
							<th scope="row" class="tbSTvtc-top"><label for="">비밀번호</label></th>
							<td>
								<p>
									<input type="password" class="input-style01" style="width:550px;" placeholder="새 비밀번호 ( 8~12자 영문, 숫자, 특수문자 중 최소 2가지 조합)" id="newPassword" name="newPassword" validatetext="비밀번호" maxlength="12">
									<span class="error-msg"></span>
								</p>
								<p>
									<input type="password" class="input-style01" style="width:550px;" placeholder="새 비밀번호 확인" id="mbrCheckPw" name="mbrCheckPw" validatetext="비밀번호 확인" maxlength="12">
									<span class="error-msg"></span>
								</p>
							</td>
						</tr>						
						<tr>
							<th scope="row"><label for="">이름</label></th>
							<td>
								<p>이하진</p>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="">생일</label></th>
							<td>
								<p>
									1993년 
									04월 
									09일
								</p>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="mbrEmail">이메일</label> <span class="required">*</span></th>
							<td>
								<input type="text" class="input-style01" style="width:110px;" id="mbrEmail" title="이메일 아이디 입력" validate="required;" validatetext="이메일" value="hyunkyoung04">
								<span class="at">@</span>
								<input type="text" class="input-style01" style="width:110px;" id="mbrEmailDomain" title="이메일 도메인 주소 직접 입력" validate="required;" validatetext="이메일" value="naver.com">
								<!-- select -->
								<div class="select-style01 d_select">									
									<button type="button" class="d_select_sel" style="width:150px;" id="emailDefaultDomain"><span>직접입력</span></button>
									<ul>
										<li><a href="#">직접입력</a></li>
										<li><a href="#">naver.com</a></li>
										<li><a href="#">daum.net</a></li>
										<li><a href="#">nate.com</a></li>
										<li><a href="#">gmail.com</a></li>
										<li><a href="#">hotmail.com</a></li>
									</ul>
								</div>
								<span class="error-msg"></span>
								<input type="hidden" name="mbr.mbrEmail" validate="required;email;" validatetext="이메일" value="hyunkyoung04@naver.com">
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="mobilAreaNo">휴대전화</label> <span class="required">*</span></th>
							<td>							
								<div class="inputcallBox">
									<input type="hidden" id="mobileNumber" validate="required;phone;" validatetext="휴대전화" value="01034084515">
									<input type="text" style="width:64px;" id="mobilAreaNo" name="mbr.mobilAreaNo" class="input-style01" title="휴대폰 통신사 번호 입력창" value="010" validate="required;digit;" validatetext="휴대전화" maxlength="3" readonly="">
									<span class="hyphen">-</span>
									<input type="text" style="width:70px;" id="mobilTlofNo" name="mbr.mobilTlofNo" class="input-style01" title="휴대폰 중간 번호 입력창" value="3408" validate="required;digit;" validatetext="휴대전화" maxlength="4" readonly="">
									<span class="hyphen">-</span>
									<input type="text" style="width:70px;" id="mobilTlofWthnNo" name="mbr.mobilTlofWthnNo" class="input-style01" title="휴대폰 마지막 번호 입력창" value="4515" validate="required;digit;" validatetext="휴대전화" maxlength="4" readonly="">
									<!-- 1905 번호인증 추가 : 인증하기 버튼 S -->
									<a class="btn-style04" id="popCertificationBtn" "="" href="javascript:;" onclick="layerPopup.popupOpenNow('#popCertification')">인증하기</a>
									<!-- 1905 번호인증 추가 : 인증하기 버튼 E -->
								</div>
								<span class="error-msg" style="display:block;"></span>
								<!-- 1905 번호인증 추가 : 멘트 추가 S -->
								<p class="dsc">휴대전화번호를 변경하시려면 <strong>인증하기</strong>를 눌러 변경해 주세요.</p>
								<!-- 1905 번호인증 추가 : 멘트 추가 E -->
							</td>
						</tr>
						<tr>
							<th scope="row" class="tbSTvtc-top"><label for="mbrPostNo">주소</label></th>
							<td>							
								<input type="text" id="mbrPostNo" name="mbr.mbrPostNo" class="input-style01" title="우편번호 입력" style="width:240px;" value="" readonly="">
								<a href="#" class="btn-style04" onclick="openZipcodePopup();return false;">우편번호 찾기</a>
								<input type="text" id="mbrBaseAddr" name="mbr.mbrBaseAddr" class="input-style01 mtST10" title="주소 입력창" style="width:550px;" value="" readonly="">
								<input type="text" id="mbrDetailAddr" name="mbr.mbrDetailAddr" class="input-style01 mtST10" title="상세주소 입력창" style="width:550px;" value="">
								<input type="hidden" name="mbr.mbrAddrSectCd" value="">
								<span class="error-msg"></span>
							</td>
						</tr>
						
						<tr>
							<th scope="row" class="tbSTvtc-top"><label for="">e-Mail, SMS(알림톡)</label></th>
							<td>
								<div class="chkST-mg">
									<span class="check-skin">
										<input type="checkbox" id="emailRecptnAgrYn" name="emailRecptnAgrYn" value="Y" checked="checked">
										<span>e-Mail 수신</span>
									</span>
									<label for="emailRecptnAgrYn">e-Mail 수신</label>
									<span class="check-skin">
										<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" checked="checked">
										<span>SMS(알림톡) 수신</span>
									</span>
									<label for="smsRecptnAgrYn">SMS(알림톡) 수신</label>
								</div>
								<ul class="text-list02 col-type01">
									<li>e-Mail, SMS(알림톡)을 통한 상품 및 이벤트 정보 수신에 동의합니다.</li>
									<li>거래정보(주문/반품/교환) 관련 e-Mail/SMS(알림톡)은 수신동의 하지 않아도 발송됩니다.</li>
								</ul>
							</td>
						</tr>
					</tbody></table>
				</div>
				
				<ul class="text-list02 col-type01">
					<li>상기 부가정보 수신 동의는 F&amp;F 브랜드에서 회원에게 이메일, SMS를 활용하여 상품 및 서비스에 대한 제반 마케팅 활동을 하기 위한 회원정보 (개인정보취급 방침 중 “2. 수집하는 개인정보 항목” 기재 항목)제공 및 각 서비스 수신에 대한 사항입니다.</li>
					<li>약관변경이나 공지 등의 고지성 안내 메일은 수신동의 하지않더라도 고객의 권익보호를 위해 발송됩니다.</li>
					<li>제공된 회원정보는 F&amp;F 브랜드가 별도 동의를 득한 경우를 제외하고는 회원탈퇴 후 30일까지 보유합니다.</li>
				</ul>
				
				<div class="btnWrapBox">
					<a href="#" class="btn" id="cancelBtn" onclick="return false;">취소</a>
					<a href="#" class="btn fill" id="confirmBtn" onclick="return false;">확인</a>
				</div>
				</form>
			</main>
		</div>
	</div>
<%@ include file="footer.jsp" %>   
</body>
</html>