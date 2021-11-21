<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
<div class="contain mb join" id="contain">	
	<div class="container">
		<div class="location-container">
               <div class="location-contents">
                   <h2 class="title01">회원가입</h2>
                   <p class="location">                    
                    <span>
                    	<a href="/main/mall/view">Home</a>
                    </span>
					<strong>회원가입</strong>
				</p>
                </div>
           </div>
           <main class="contents" id="contents">
			<form id="userInfoForm" method="post" action="/test/insertJoin.do">
			<div class="join-wrap">
				<div class="top-info">
					<div class="hdt">회원가입</div>
				</div>

				<!-- 가입정보 -->
				<section class="sect memInfo">						
					<div class="hdt">
						<span class="tit">가입정보</span>
						<span class="tt"><em class="required">*</em> 필수입력 항목</span>
					</div>
					<div class="board-write forms">							
						<table summary="개인정보입력">
							<caption>개인정보입력</caption>
							<colgroup>
								<col width="200">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">
										<label>기본정보</label>
										<span class="required">*</span>
									</th>
									<td>
										<ul class="dt-list">
											<li>
												<input type="text" class="input-style01 id" style="width:260px;" placeholder="아이디 (6~15자 영문 소문자.숫자)" id="user_id" name="user_id"  maxlength="15">
												<a href="#" class="btn fill sm btnPslCertifi" id="id_chk" >중복검사</a>
												<span class="error-msg"></span>													
											</li>
											<li>													
												<input type="password" class="input-style01 pw" style="width:100%;" placeholder="비밀번호 ( 8~12자 영문, 숫자, 특수문자 중 최소 2가지 조합)" id="user_password" name="user_password" maxlength="12">
												<span class="error-msg"></span>
											</li>
											<li>												
												<input type="password" class="input-style01 pw com" style="width:100%;" placeholder="비밀번호 확인" id="user_chk_pw" name="user_chk_pw" maxlength="12">
												<span class="error-msg"></span>
											</li>
											<li id="mbrNmAfter">													
												<input type="text" class="input-style01 name" placeholder="이름(실명입력)" id="user_name" name="user_name" value="">
												<span class="error-msg"></span>
											</li>
											<li id="birthAfter">													
												<span class="email">
													<input type="text" class="input-style01 email1" style="width:130px;" placeholder="주민번호 앞자리" id="user_jumin1" name="user_jumin1"  maxlength="6">
													<em class="att">-</em>
													<input type="text" class="input-style01 email2" style="width:130px;" placeholder="주민번호 뒷자리" id="user_jumin2" name="user_jumin2"  maxlength="7">
												</span>
												<span class="rdo-skin">
													<input type="radio" name="user_gender" id="male" value="남자" checked><span>선택</span>
												</span>
												<label for="gender1">남자</label>
												<span class="rdo-skin">
													<input type="radio" name="user_gender" id="female" value="여자"><span>선택</span>
												</span>
												<label for="gender2">여자</label>
												<span class="error-msg"></span>
											</li>
											<li>													
												<span class="email">
													<input type="text" class="input-style01 email1" style="width:130px;" placeholder="E-mail" id="email_id" name="email_id">
													<em class="att">@</em>
													<input type="text" class="input-style01 email2" style="width:130px;" placeholder="" id="email_address" name="email_address" readonly>
													<div class="select-style01 d_select email3">
														<button type="button" class="d_select_sel" id="user_email_select" name="user_email_select" style="width:151px;"><span>이메일선택</span></button>
														<ul>			
															<li><a href="#none;" id="enormal1">직접입력</a></li>													
															<li><a href="#none;" id="enormal2">naver.com</a></li>
															<li><a href="#none;" id="enormal3">daum.net</a></li>
															<li><a href="#none;" id="enormal4">nate.com</a></li>
															<li><a href="#none;" id="enormal5">gmail.com</a></li>
															<li><a href="#none;" id="enormal6">hotmail.com</a></li>
														</ul>
													</div>
												</span>
												<span class="error-msg"></span>													
											</li>
											<li id="phoneAfter">													
												<span class="phone">
													<div class="select-style01 d_select phone0">
														<button type="button" class="d_select_sel" style="width:151px;" id="mobileBtn"><span>통신사 선택</span></button>
														<ul>
															<li><a href="#none;" id="mobileSkt">SKT</a></li>
															<li><a href="#none;" id="mobileKt">KT</a></li>
															<li><a href="#none;" id="mobileLg">LG</a></li>
														</ul>
													</div>													
													<input type="text" class="input-style01 phone1" style="width:80px;" name="phone1" id="phone1" maxlength="3" >
													<em class="dash">-</em>
													<input type="text" class="input-style01 phone2" style="width:80px;" name="phone2" id="phone2" maxlength="4" >
													<em class="dash">-</em>
													<input type="text" class="input-style01 phone3" style="width:80px;" name="phone3" id="phone3" maxlength="4">
												</span>
											</li>
										</ul>
									</td>
								</tr>
								<tr id="certProcess">
									<th scope="row">
										<label>본인인증</label><span class="required">*</span>
									</th>
									<td>
										<div class="d_toggle togbox">
											<div class="hbox">
												<span class="required">*</span>
												<span class="check-skin">
													<input type="checkbox" id="certAgreeYn" name="certAgreeYn" value="Y" onclick="setAgree();"><span>선택</span>
												</span>
												<label for="certAgreeYn">본인 인증을 위한 약관 모두 동의</label>
												<a href="#none;" class="btn fill sm btnPslCertifi" data-ga-category="PC_MLB_회원가입" data-ga-action="본인인증" data-ga-label="인증번호받기" id="certConfirmBtn" name="certConfirmBtn">본인인증</a>
												<button type="button" class="btn-open d_toggle_select"><span>Open</span></button>
												<div>
												<br/>
													<input type="text" class="input-style01 id" style="width:260px;" placeholder="인증 번호" id="certChkNum" name="certChkNum" value="">
													<a href="#" class="btn fill sm btnPslCertifi" id="certChkNumBtn" name="certChkNumBtn" >확인</a>
												</div>
											</div>												
											<div class="cbox d_toggle_cont">
												<ul class="list">
													<li>
														<span class="required">*</span>
														<span class="check-skin">
															<input type="checkbox" id="chk_policy_1" name="chk_policy_1" onclick="setAgree2();"><span>선택</span>
														</span>
														<label for="chk_policy_1">개인정보이용동의</label>
														<a href="#" class="btn gray sm btnAllView" onclick="layerPopup.popupOpenNow('#popJoin1'); return false;">전문보기</a>
													</li>
													<li>
														<span class="required">*</span>
														<span class="check-skin">
															<input type="checkbox" id="chk_policy_2" onclick="setAgree2();"><span>선택</span>
														</span>
														<label for="chk_policy_2">고유식별정보처리 동의</label>
														<a href="#" class="btn gray sm btnAllView" onclick="layerPopup.popupOpenNow('#popJoin2'); return false;">전문보기</a>
													</li>
													<li>
														<span class="required">*</span>
														<span class="check-skin">
															<input type="checkbox" id="chk_policy_3" onclick="setAgree2();"><span>선택</span>
														</span>
														<label for="chk_policy_3">서비스이용약관동의</label>
														<a href="#" class="btn gray sm btnAllView" onclick="layerPopup.popupOpenNow('#popJoin3'); return false;">전문보기</a>
													</li>
													<li>
														<span class="required">*</span>
														<span class="check-skin">
															<input type="checkbox" id="chk_policy_4" onclick="setAgree2();"><span>선택</span>
														</span>
														<label for="chk_policy_4">통신사이용약관 동의</label>
														<a href="#" class="btn gray sm btnAllView" onclick="layerPopup.popupOpenNow('#popJoin4'); return false;">전문보기</a>
													</li>
													<li style="display:none" id="mCoview">
														<span class="check-skin">
															<input type="checkbox" id="chk_policy_5"><span>선택</span>
														</span>
														<label for="chk_policy_5">개인정보  제3자 제공동의</label>
														<a href="#" class="btn gray sm btnAllView" onclick="layerPopup.popupOpenNow('#popJoin5'); return false;">전문보기</a>
													</li>
												</ul>
											</div>
											
											<!-- 본인 인증번호 입력  -->
											<div class="certifiBox" id="certAfter" style="display:none">
												<span class="required">*</span>
												<div class="num">
													<input type="text" class="input-style01" placeholder="인증번호" name="sAuthNo" id="sAuthNo" maxlength="6">
													<span class="time" id="remainTime">3분</span>
												</div>
												<div class="bts">
													<a href="#" class="btn btnConfirm" onclick="goCertificationEnd(); return false;">확인</a>
													<a href="#" class="btn fill btnResend" onclick="goCertification(this); return false;">재전송</a>
												</div>
												<ul class="text-list02 col-type01 bul-list">
													<li>3분 이내로 인증번호(6자리)를 입력해 주세요.</li>
													<!-- <li>인증번호가 오지 않으면 <a href="javascript:;" class="link">여기를 눌러주세요.</a></li> -->
												</ul>
												<span class="error-msg"></span>
											</div>
										</div>
									</td>
								</tr>
								<tr id="certProcessEnd" style="display:none">
									<th scope="row"><label>본인인증</label><span class="required">*</span></th>
									<td>
										<div class="togbox">
											<span class="btn fill sm btnPslCertifi">본인인증 완료</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</section>

				<!-- 마켓팅수신 -->
				<section class="sect receive">
					<div class="d_toggle togbox" id="termToggle">
						<div class="hbox">
							<span class="check-skin">
								<input type="checkbox" id="chk_receive_1" onclick="setCheck()"><span>선택</span>
							</span>
							<label for="chk_receive_1">MLB 이용약관 및 마케팅정보 수신 모두 동의</label>
							<button type="button" class="btn-open d_toggle_select" id="termBtn"><span>Open</span></button>
						</div>
						<div class="cbox d_toggle_cont">
							<ul class="list">
								<li class="L1">
									<span class="item">
										<span class="required">*</span>
										<span class="check-skin">
											<input type="checkbox" name="onlineSiteUsefStplat" id="onlineSiteUsefStplat" value="N" onclick="setCheck2()"><span>선택</span>												
										</span>
										<label for="chk_pol_receive_1">서비스 이용약관(필수)</label>
									</span>
									<span class="item">
										<span class="required">*</span>
										<span class="check-skin">
											<input type="checkbox" name="psnlInfoColctUsefAgr" id="psnlInfoColctUsefAgr" value="N" onclick="setCheck2()"><span>선택</span>												
										</span>
										<label for="chk_pol_receive_2">개인정보 수집 및 이용 (필수)</label>		
									</span>
								</li>
								<li class="L2">
									<span class="item">											
										<span class="check-skin">
											<input type="checkbox" name="emailRecptnAgrYn" id="emailRecptnAgrYn" value="Y" onclick="setCheck2()"><span>선택</span>
										</span>
										<label for="chk_pol_receive_3">e-Mail 수신</label>
									</span>
									<span class="item">											
										<span class="check-skin">
											<input type="checkbox" name="smsRecptnAgrYn" id="smsRecptnAgrYn" value="Y" onclick="setCheck2()"><span>선택</span>
										</span>
										<label for="chk_pol_receive_4">SMS(알림톡) 수신</label>
									</span>
									<ul class="text-list02 col-type01 bul-list">
										<li>e-Mail, SMS(알림톡)을 통한 상품 및 이벤트 정보 수신에 동의합니다.</li>
										<li>거래정보(주문/반품/교환) 관련 e-Mail/SMS(알림톡)은 수신동의 하지 않아도 발송됩니다.</li>
									</ul>
								</li>															
							</ul>
							<div class="gud">
								<ul class="text-list02 col-type01 bul-list">
									<li>상기 부가정보 수신 동의는 F&F 브랜드에서 회원에게 이메일, SMS를 활용하여 상품 및 서비스에 대한 제반 마케팅 활동을 하기 위한 회원정보   (개인정보취급 방침 중 “2. 수집하는 개인정보 항목” 기재 항목)제공 및 각 서비스 수신에 대한 사항입니다.</li>
									<li>약관변경이나 공지 등의 고지성 안내 메일은 수신동의 하지않더라도 고객의 권익보호를 위해 발송됩니다.</li>
									<li>제공된 회원정보는 F&F 브랜드가 별도 동의를 득한 경우를 제외하고는 회원탈퇴 후 30일까지 보유합니다.</li>
								</ul>
							</div>
						</div>
					</div>
				</section><div></div>
				<div class="bot-btns btnList">
					<a href="#none;" class="btn lg fill btnJoin" id="confirmJoinBtn" >회원가입</a>
				</div>	
				<section class="sect bot-info">
					<div class="hd">F&F membership은 회원님의 소중한 개인정보를 안전하게 관리하고 있습니다.</div>
	  				<ul class="text-list02 col-type01 bul-list">
						<li>
							2017년 8월 18일 부터 시행되는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률(이하 정보통신망법) 제 23조의 2 ”주민등록번호의 사용 
 								제한”에 따라 모든 서비스에서 주민등록번호를 입력 받지 않습니다. 이에 따라 가입하실 때는 주민등록번호를 입력하는 실명인증 휴대폰을 
 								이용한 본인인증이 필요합니다.
 							</li>
					</ul>
				</section>
			</div>
			<input type="hidden" id="mobile_carrier" name="mobile_carrier" value=""/>
			</form>
		</main>
	</div>
</div>

<article id="popJoin1" class="layer-popup popTermsEt E1 inlayer">
	<section class="layer-popup-cont" tabindex="0">
		<h2>개인정보 이용동의</h2>
		<div class="layer-cont">
			
			<div class="d_tab02 tab_box">
				<ul class="tab-type01">
					<li class="d_tab02_select on"><a href="javascript:;">SKT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">KT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">LG U+</a></li>
				</ul>
				<div class="d_tab02_cont" style="display: block;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 개인정보 이용 동의 SK -->
								<p>본인은 SK텔레콤(주)(이하 ‘회사’라 합니다)가 제공하는 본인확인서비스(이하 ‘서비스’라 합니다)를 이용하기 위해, 다음과 같이 ‘회사’가 본인의 개인정보를 수집/이용하고, 개인정보의 취급을 위탁하는 것에 동의합니다. </p>
								
								<h2>1. 수집항목 </h2>
								<ol>
									<li>- 이용자의 성명, 이동전화번호, 가입한 이동전화 회사, 생년월일, 성별 </li>
									<li>- 연계정보(CI), 중복가입확인정보(DI) </li>
									<li>- 이용자가 이용하는 웹사이트 또는 Application 정보, 이용일시</li>
									<li>- 내외국인 여부 </li>
									<li>- 가입한 이동전화회사 및 이동전화브랜드</li>
								</ol>
								<h2>2. 이용목적 </h2>
								<ol>
									<li>- 이용자가 웹사이트 또는 Application에 입력한 본인확인정보의 정확성 여부 확인(본인확인서비스 제공) </li>
									<li>- 해당 웹사이트 또는 Application에 연계정보(CI)/중복가입확인정보(DI) 전송 </li>
									<li>- 서비스 관련 상담 및 불만 처리 등 </li>
									<li>- 이용 웹사이트/Application 정보 등에 대한 분석 및 세분화를 통한, 이용자의 서비스 이용 선호도 분석</li>
								</ol>
								<h2>3. 개인정보의 보유기간 및 이용기간 </h2>
								<ol>
									<li><u>- 이용자가 서비스를 이용하는 기간에 한하여 보유 및 이용. 다만, 아래의 경우는 제외 </u></li>
									<li><u>- 법령에서 정하는 경우 해당 기간까지 보유(상세 사항은 회사의 개인정보취급방침에 기재된 바에 따름) </u></li>
								</ol>
								
								<h2>4. 본인확인서비스 제공을 위한 개인정보의 취급위탁 </h2>
								<p>
									수탁자 : (주)다날, (주)드림시큐리티, (주)케이지모빌리언스, (주)한국사이버결제, 한국모바일인증(주), 씨앤케이소프트(주), 수미온(주), SK플래닛(주), 엠드림커뮤니케이션(주), NICE평가정보(주), 서울신용평가정보(주)
									취급위탁 업무 : 본인확인정보의 정확성 여부 확인(본인확인서비스 제공), 연계정보(CI)/중복가입확인정보(DI) 생성 및 전송, 서비스 관련 상담 및 불만 처리, 휴대폰인증보호 서비스, 이용자의 서비스 이용 선호도 분석정보 제공관련 시스템 구축·광고매체 연동 및 위탁영업 등 
								</p>
								<p>
									※ 수탁자의 상세 개인정보 취급 위탁 내용은 각 수탁자가 정하는 절차와 방법에 따라 수탁자 홈페이지 등에 게시된 수탁자의 개인정보 취급방침 및 제3자 제공 동의 방침 등에 따릅니다. 
								</p>
								
								<h2>5. 위 개인정보 수집·이용 및 취급위탁에 동의하지 않으실 경우, 서비스를 이용하실 수 없습니다. </h2>
								
								<p>※ 회사가 제공하는 서비스와 관련된 개인정보의 취급과 관련된 사항은, 회사의 개인정보취급방침(회사 홈페이지 www.sktelecom.com )에 따릅니다.</p>
								<p>&nbsp;</p>
								<p>NICE평가정보(주) 귀중</p>
								<p>NICE평가정보(주)(이하 ‘회사’)는 SK텔레콤(주)의 업무를 대행하여 휴대폰본인확인서비스를 제공함에 있어 고객으로부터 개인정보를 수집하고 이용하기 위해 ‘정보통신망 이용촉진 및 정보보호에 관한 법률’에 따라서 다음과 같이 본인의 동의를 받습니다. </p>
								<p>&nbsp;</p>
								<h2>1. 개인정보의 내용 </h2>
								<ol>
									<li>
										가. 정보항목
										<ol>
											<li>- 생년월일, 성명, 성별, 내/외국인 구분, 휴대폰번호, 가입한 이동통신사, IP주소</li>
										</ol>
									</li>
									<li>
										나. 수집방법 
										<ol>
											<li>- 본인인증 요청시 회원사 서비스 페이지 또는 본인인증 팝업창 페이지에서 이용자가 직접 입력</li>
											<li>- 본인인증 과정에서 시스템에서 생성되는 정보 수집(Ex. IP주소)</li>
										</ol>
									</li>
								</ol>
								
								<h2>2. 개인정보의 이용목적과 제공정보 </h2>
								<ol>
									<li>
										가. 이용 목적 
										<ol>
											<li><u>- 고객의 회원가입, ID/PW찾기, 거래동의 등을 위한 휴대폰 본인확인 결과</u></li>
											<li><u>- 휴대폰 소지 확인을 위한 SMS 인증번호 전송 </u></li>
											<li><u>- 부정 이용 방지 및 수사의뢰 </u></li>
											<li><u>- 휴대폰번호보호서비스 해제(서비스 가입자에 한함)</u></li>
											<li><u>- 기타 법률에서 정한 목적</u></li>
										</ol>
									</li>
									<li>
										나. 제공하는 개인정보 
										<ol>
											<li>- 성명, 성별, 생년월일, 내/외국인, 휴대폰번호, 이동통신사, IP주소 [<u>제공사 : 서비스 회원사</u>] </li>
											<li>- 성명, 성별, 생년월일, 휴대폰번호, 이동통신사 [<u>제공사 : SKT, KT, LGU+,모빌리언스, 다날]</u> </li>
											<li>- 휴대폰번호 [<u>제공사 : SKT, KT, LGU+, 삼성SDS, 모빌리언스, SK네트웍스, 다날</u>] </li>
										</ol>
									</li>
								</ol>
								
								<h2>3. 개인정보의 보유 및 이용기간 </h2>
								<p><u>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명기한 기간 동안 보유합니다. </u></p>
								<ol>
									<li>
										가. 회사 내부 방침에 의한 정보보유 사유 - 본인확인 발생 및 차단기록, 휴대폰번호
										
										<ol>
											<li>보유 이유: 부정 이용 방지 및 민원 처리 </li>
											<li>보유 기간: <u>5년</u> </li>
										</ol>
									</li>
									<li>
										나. 관계법령에 의한 정보보유 사유
										<ol>
											<li>- 이용자 불만 또는 분쟁 처리에 관한 기록</li>
											<li>보유 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
											<li>보유 기간: <u>3년</u></li>
										</ol>
									</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 개인정보 이용 동의 KT -->
								<p>(주)케이티(이하 ‘회사’라 함)가 제공하는 본인확인서비스를 이용하기 위해, 다음과 같이 ‘회사’가 본인의 개인정보를 수집 및 이용하고, 개인정보의 취급을 위탁하는 것에 동의합니다.</p>
								
								<h2>1.수집항목</h2>
								<ol>
									<li>-고객의 생년월일, 이동전화번호, 성명, 성별, 내/외국인 구분</li>
									<li>-연계정보(CI), 중복가입확인정보(DI) </li>
									<li>-고객이 이용하는 웹사이트 등</li>
								</ol>
								<h2>2.이용목적</h2>
								<ol>
									<li>-고객이 웹사이트 또는 Application 등에 입력한 본인확인정보의 정확성 여부 확인</li>
									<li>-해당 웹사이트 또는 Application 등에 연계정보(CI)와 중복가입확인정보)DI) 전송</li>
									<li>-서비스 관련 상담 및 불만 처리</li>
									<li>-기타 법룰에서 정한 목적</li>
								</ol>
								<h2>3.개인정보의 보유 및 이용기간</h2>
								<p><u>"회사"는 이용자의 개인정보를 이용목적이 달성되거나 보유 및 보존기간이 종료하면 해당 정보를 지체없이 파기 하며 별도의 보관을 하지 않습니다. 단, 관련 법령 및 회사방침에 따라 보존하는 목적과 기간은 아래와 같습니다.</u></p>
								<ol>
									<li>- 소비자의 불만 또는 분쟁처리에 관한 기록 : <u>3년</u>(전자상거래등에서의 소비자보호에 관한 법률)</li>
								</ol>
								
								<h2>4.본인확인서비스 제공을 위한 개인정보의 취급 위탁</h2>
								<ol>
									<li>-수탁자 : NICE평가정보</li>
									<li>-취급위탁 업무 : 본인확인정보의 정확성 여부 확인, 연계정보(CI) 및 중복가입확인정보(DI) 전송, 서비스 관련 상담 및 불만 처리 등</li>
								</ol>
								<h2>5. 상기 개인정보 수집 및 이용과 취급위탁에 동의하지 않는 경우, 서비스를 이용할 수 없습니다.</h2>
								
								<p>‘회사’가 제공하는 서비스의 개인정보 취급과 관련된 사항은 아래의 ‘회사’ 홈페이지에 기재된 개인정보취급방침에 따릅니다.</p>
								<ol>
									<li>-(주)케이티 : www.kt.com</li>
								</ol>
								<p>&nbsp;</p>
								<p>본인은 상기 내용을 숙지하였으며 이에 동의합니다.</p>
								<p>&nbsp;</p>
								<p>NICE평가정보(주) 귀중</p>
								<p>NICE평가정보(주)(이하 ‘회사’)는 (주)케이티의 업무를 대행하여 휴대폰본인확인서비스를 제공함에 있어 고객으로부터 개인정보를 수집하고 이용하기 위해 ‘정보통신망 이용촉진 및 정보보호에 관한 법률’에 따라서 다음과 같이 본인의 동의를 받습니다. </p>
								
								<h2>1. 개인정보의 내용 </h2>
								<ol>
									<li>
										가. 정보항목 
										<ol>
											<li>- 생년월일, 성명, 성별, 내/외국인 구분, 휴대폰번호, 가입한 이동통신사, IP주소</li>
										</ol>
									</li>
									<li>
										나. 수집방법 
										<ol>
											<li>- 본인인증 요청시 회원사 서비스 페이지 또는 본인인증 팝업창 페이지에서 이용자가 직접 입력</li>
											<li>- 본인인증 과정에서 시스템에서 생성되는 정보 수집(Ex. IP주소)</li>
										</ol>
									</li>
								</ol>
								
								<h2>2. 개인정보의 이용목적과 제공정보 </h2>
								<ol>
									<li>
										가. 이용 목적 
										<ol>
											<li><u>- 고객의 회원가입, ID/PW찾기, 거래동의 등을 위한 휴대폰 본인확인 결과</u></li>
											<li><u>- 휴대폰 소지 확인을 위한 SMS 인증번호 전송 </u></li>
											<li><u>- 부정 이용 방지 및 수사의뢰 </u></li>
											<li><u>- 휴대폰번호보호서비스 해제(서비스 가입자에 한함)</u></li>
											<li><u>- 기타 법률에서 정한 목적</u></li>
										</ol>
									</li>
									<li>
										나. 제공하는 개인정보 
										<ol>
											<li>- 성명, 성별, 생년월일, 내/외국인, 휴대폰번호, 이동통신사, IP주소 [<u>제공사 : 서비스 회원사</u>] </li>
											<li>- 성명, 성별, 생년월일, 휴대폰번호, 이동통신사 [<u>제공사 : SKT, KT, LGU+,모빌리언스, 다날</u>] </li>
											<li>- 휴대폰번호 [<u>제공사 : SKT, KT, LGU+, 삼성SDS, 모빌리언스, SK네트웍스, 다날</u>] </li>
										</ol>
									</li>
								</ol>
								
								<h2>3. 개인정보의 보유 및 이용기간 </h2>
								<p><u>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명기한 기간 동안 보유합니다. </u></p>
								
								<ol>
									<li>
										가. 회사 내부 방침에 의한 정보보유 사유 - 본인확인 발생 및 차단기록, 휴대폰번호
										<ol>
											<li>보유 이유: 부정 이용 방지 및 민원 처리 </li>
											<li>보유 기간: <u>5년</u> </li>
										</ol>
									</li>
									<li>
										나. 관계법령에 의한 정보보유 사유
										<ol>
											<li>- 이용자 불만 또는 분쟁 처리에 관한 기록</li>
											<li>보유 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
											<li>보유 기간: <u>3년</u></li>
										</ol>
									</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont on" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 개인정보 이용 동의 LG -->
								<p>[LG유플러스(주) 귀중]</p>
								<p>LG유플러스(주) (이하 ‘회사’라 함)가 제공하는 본인확인서비스를 이용하기 위해, 다음과 같이 ‘회사’가 본인의 개인정보를 수집 및 이용하고, 개인정보의 취급을 위탁하는 것에 동의합니다.</p>
								
								<h2>1.수집항목</h2>
								<ol>
									<li>-고객의 생년월일, 이동전화번호, 성명, 성별, 내/외국인 구분</li>
									<li>-연계정보(CI), 중복가입확인정보(DI) </li>
									<li>-고객이 이용하는 웹사이트 등</li>
								</ol>
								<h2>2.이용목적</h2>
								<ol>
									<li>-고객이 웹사이트 또는 Application 등에 입력한 본인확인정보의 정확성 여부 확인</li>
									<li>-해당 웹사이트 또는 Application 등에 연계정보(CI)와 중복가입확인정보)DI) 전송</li>
									<li>-서비스 관련 상담 및 불만 처리</li>
									<li>-기타 법룰에서 정한 목적</li>
								</ol>
								<h2>3.개인정보의 보유 및 이용기간</h2>
								<ol>
									<li><u>-고객이 서비스를 이용하는 기간에 한하여 보유 및 이용을 원칙으로 하되, 법률에서 정하는 경우 해당 기간까지 보유 및 이용(세부사항은 ‘회사’의 개인정보취급방침에 따름) </u></li>
								</ol>
								<h2>4.본인확인서비스 제공을 위한 개인정보의 취급 위탁</h2>
								<ol>
									<li>-수탁자 : NICE평가정보</li>
									<li>-취급위탁 업무 : 본인확인정보의 정확성 여부 확인, 연계정보(CI) 및 중복가입확인정보(DI) 전송, 서비스 관련 상담 및 불만 처리 등</li>
								</ol>
								
								<h2>5. 상기 개인정보 수집 및 이용과 취급위탁에 동의하지 않는 경우, 서비스를 이용할 수 없습니다.</h2>
								
								<p>‘회사’가 제공하는 서비스의 개인정보 취급과 관련된 사항은 아래의 ‘회사’ 홈페이지에 기재된 개인정보취급방침에 따릅니다.</p>
								<p>-LG유플러스(주)  : www.lguplus.co.kr</p>
								<p>&nbsp;</p>
								<p>본인은 상기 내용을 숙지하였으며 이에 동의합니다.</p>
								<p>&nbsp;</p>
								
								<p>[NICE평가정보(주) 귀중]</p>
								<p>NICE평가정보(주)(이하 ‘회사’)는 LG유플러스(주) 의 업무를 대행하여 휴대폰본인확인서비스를 제공함에 있어 고객으로부터 개인정보를 수집하고 이용하기 위해 ‘정보통신망 이용촉진 및 정보보호에 관한 법률’에 따라서 다음과 같이 본인의 동의를 받습니다. </p>
								
								<h2>1. 개인정보의 내용 </h2>
								<ol>
									<li>
										가. 정보항목 
										<ol>
											<li>- 생년월일, 성명, 성별, 내/외국인 구분, 휴대폰번호, 가입한 이동통신사, IP주소</li>
										</ol>
									</li>
									<li>
										나. 수집방법 
										<ol>
											<li>- 본인인증 요청시 회원사 서비스 페이지 또는 본인인증 팝업창 페이지에서 이용자가 직접 입력</li>
											<li>- 본인인증 과정에서 시스템에서 생성되는 정보 수집(Ex. IP주소)</li>
										</ol>
									</li>
								</ol>
								
								
								<h2>2. 개인정보의 이용목적과 제공정보 </h2>
								<ol>
									<li>
										가. 이용 목적 
										<ol>
											<li><u>- 고객의 회원가입, ID/PW찾기, 거래동의 등을 위한 휴대폰 본인확인 결과</u></li>
											<li><u>- 휴대폰 소지 확인을 위한 SMS 인증번호 전송 </u></li>
											<li><u>- 부정 이용 방지 및 수사의뢰 </u></li>
											<li><u>- 휴대폰번호보호서비스 해제(서비스 가입자에 한함)</u></li>
											<li><u>- 기타 법률에서 정한 목적</u></li>
										</ol>
									</li>
									<li>
										나. 제공하는 개인정보
										<ol>
											<li>- 성명, 성별, 생년월일, 내/외국인, 휴대폰번호, 이동통신사, IP주소 [<u>제공사 : 서비스 회원사</u>] </li>
											<li>- 성명, 성별, 생년월일, 휴대폰번호, 이동통신사 [<u>제공사 : SKT, KT, LGU+</u>]</li>
											<li>- 휴대폰번호 [<u>제공사 : SKT, KT, LGU+</u>]</li>
											<li>- IP주소 [<u>제공사 : 서비스 회원사</u>]</li>
										</ol>
									</li>
								</ol>
								
								<h2>3. 개인정보의 보유 및 이용기간 </h2>
								<p><u>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명기한 기간 동안 보유합니다.</u> </p>
								<ol>
									<li>
										가. 회사 내부 방침에 의한 정보보유 사유 - 본인확인 발생 및 차단기록, 휴대폰번호
										<ol>
											<li>보유 이유: 부정 이용 방지 및 민원 처리 </li>
											<li>보유 기간: <u>5년</u> </li>
										</ol>
									</li>
									<li>
										나. 관계법령에 의한 정보보유 사유
										<ol>
											<li>- 이용자 불만 또는 분쟁 처리에 관한 기록</li>
											<li>보유 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
											<li>보유 기간: <u>3년</u></li>
										</ol>
									</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layer-popup-close"><button type="button" class="d_layer_close">닫기</button></div>
	</section>
</article>
		
<article id="popJoin2" class="layer-popup popTermsEt E2 inlayer">
	<section class="layer-popup-cont" tabindex="0">
		<h2>고유식별정보 처리 동의</h2>
		<div class="layer-cont">
			
			<div class="d_tab02 tab_box">
				<ul class="tab-type01">
					<li class="d_tab02_select on"><a href="javascript:;">SKT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">KT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">LG U+</a></li>
				</ul>
				<div class="d_tab02_cont" style="display: block;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 고유식별정보 처리 동의 SK -->
								<p>[SK텔레콤 귀중]</p>
								<p>본인은 SK텔레콤(주)(이하 ‘회사’라 합니다)가 제공하는 본인확인서비스(이하 ‘서비스’라 합니다)를 이용하기 위해, 다음과 같이 본인의 개인정보를 회사가 아래 기재된 제3자에게 제공하는 것에 동의합니다. </p>
								
								<h2>1. 개인정보를 제공받는 자 </h2>
								<ol>
									<li><u>- NICE평가정보(주), 서울신용평가정보(주) </u></li>
								</ol>
								
								<h2>2. 개인정보를 제공받는 자의 개인정보 이용목적 </h2>
								<ol>
									<li><u>- 연계정보(CI)/중복가입확인정보(DI) 생성 및 회사에 제공 </u></li>
								</ol>
								
								<h2>3. 제공하는 개인정보 항목 </h2>
								<ol>
									<li><u>- 회사가 보유하고 있는 이용자의 주민등록번호 </u></li>
								</ol>
								
								<h2>4. 개인정보를 제공받는 자의 개인정보 보유 및 이용기간 </h2>
								<ol>
									<li>- 연계정보(CI)/중복가입확인정보(DI) 생성 후 즉시 폐기 </li>
								</ol>
								
								<h2>5. 위 개인정보 제공에 동의하지 않으실 경우, 서비스를 이용할 수 없습니다</h2>
								
								<h2>[NICE평가정보 귀중]</h2>
								<p>NICE평가정보(주) (이하 “회사”)가 에스케이텔레콤(주), (주)케이티, LG유플러스(주)의 업무 대행을 통해 제공하는 휴대폰본인확인서비스와 관련하여 고객으로부터 수집한 고유식별정보를 이용 및 처리하거나 제3자에게 제공하고자 할 때에는 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’에 따라서 고객으로 부터 동의를 받아야 합니다.</p>
								
								<h2>제1조 [고유식별정보의 이용 및 처리 목적]</h2>
								<p>“회사”는 고객의 고유식별정보를 아래의 목적으로 이용 및 처리할 수 있습니다.</p>
								<ol>
									<li>1. 정보통신망법 제23조에서 정한 본인확인서비스 제공</li>
									<li>2. 부정 이용 방지 및 수사의뢰</li>
									<li>3. 휴대폰번호보호서비스 해제 (서비스 가입자에 한함)</li>
								</ol>
								<h2>제 2조 [고유식별정보의 이용 및 처리 내용]</h2>
								<p>에스케이텔레콤(주), (주)케이티, LG유플러스(주)의 통신사 또는 통신사의 대행업무를 수행하는 사업자에 정보를 전송하여 방송통신위원회에서 고시로 지정한 휴대폰본인확인기관을 통해 본인여부를 확인하고 결과를 제공받기 위해 고유식별정보가 이용 및 처리됩니다.</p>
								<ol>
									<li>-이용 및 처리되는 고유식별정보 : 주민등록번호(내국인), <u>외국인등록번호(외국인)</u></li>
								</ol>
								<p>상기와 같이 고유식별정보 이용 및 처리에 동의합니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 고유식별정보 처리 동의 KT -->
								<p>[(주)케이티 귀중]</p>
								<p>주)케이티 (이하 "본인확인기관")가 NICE평가정보(주) (이하 "회사")을 통해 제공하는 휴대폰 본인확인 서비스 관련하여 이용자로부터 수집한 고유식별정보를 이용하거나 타인에게 제공할 때에는 '정보통신망 이용촉진 및 정보보호 등에 관한 법률'(이하 "정보통신망법")에 따라 이용자의 동의를 얻어야 합니다. </p>
								<h2>■ 제 1 조[고유식별정보의 처리 동의] </h2>
								<p>"본인확인기관"은 정보통신망법 제23조의2 제2항에 따라 인터넷상에서 주민등록번호를 입력하지 않고도 본인임을 확인할 수 있는 휴대폰 본인확인서비스를 제공하기 위해 고유식별정보를 처리합니다. </p>
								<h2>■ 제 2 조[고유식별정보의 제공 동의] </h2>
								<p>"본인확인기관 지정 등에 관한 기준(방송통신위원회 고시)"에 따라 "회사"와 계약한 정보통신서비스 제공자 의 연계서비스 및 중복가입확인을 위해 아래와 같이 본인의 고유식별정보를 '다른 본인확인기관'에 제공하는 것에 동의합니다. </p>
								<p> [고유식별정보 제공 동의] </p>
								
								<h2>1. 제공자(본인확인기관) </h2>
								<p>(주)케이티</p>
								<h2>2. 제공 받는자(본인확인기관)</h2>
								<p><u>NICE평가정보(주)</u></p>
								<h2>3. 제공하는 항목</h2>
								<p>주민등록번호(내국인), 외국인등록번호(국내거주외국인)</p>
								<h2>4. 제공 목적</h2>
								<p><u>CI(연계정보), DI(중복가입확인정보)의 생성 및 전달</u></p>
								<h2>5. 보유 및 이용기간</h2>
								<p><u>CI(연계정보), DI(중복가입확인정보) 생성 후 즉시 폐기</u></p>
								
								<p>[NICE평가정보 귀중]</p>
								<p>NICE평가정보(주) (이하 “회사”)가 에스케이텔레콤(주), (주)케이티, LG유플러스(주)의 업무 대행을 통해 제공하는 휴대폰본인확인서비스와 관련하여 고객으로부터 수집한 고유식별정보를 이용 및 처리하거나 제3자에게 제공하고자 할 때에는 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’에 따라서 고객으로 부터 동의를 받아야 합니다.</p>
								
								<h2>제1조 [고유식별정보의 이용 및 처리 목적]</h2>
								<p>“회사”는 고객의 고유식별정보를 아래의 목적으로 이용 및 처리할 수 있습니다.</p>
								<ol>
									<li>1. 정보통신망법 제23조에서 정한 본인확인서비스 제공</li>
									<li>2. 부정 이용 방지 및 수사의뢰</li>
									<li>3. 휴대폰번호보호서비스 해제 (서비스 가입자에 한함)</li>
								</ol>
								<h2>제 2조 [고유식별정보의 이용 및 처리 내용]</h2>
								<ol>
									<li>에스케이텔레콤(주), (주)케이티, LG유플러스(주)의 통신사 또는 통신사의 대행업무를 수행하는 사업자에 정보를 전송하여 방송통신위원회에서 고시로 지정한 휴대폰본인확인기관을 통해 본인여부를 확인하고 결과를 제공받기 위해 고유식별정보가 이용 및 처리됩니다.</li>
									<li>-이용 및 처리되는 고유식별정보 : 주민등록번호(내국인), 외국인등록번호(외국인)</li>
									<li>상기와 같이 고유식별정보 이용 및 처리에 동의합니다.</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont on" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 고유식별정보 처리 동의 LG -->
								<p>[LG유플러스(주) 귀중]</p>
								<p>LG유플러스(주)(이하 ‘회사’)가 휴대폰본인확인서비스(이하 ‘서비스’)를 제공하기 위해 고유식별정보를 다음과 같이 제3자에게 제공 및 처리 하는 데에 동의합니다.</p>
								
								<ol>
									<li>1.고유식별정보를 제공받는자</li>
									<li><u>- 서울신용평가정보(주), 코리아크레딧뷰로(주)</u></li>
									<li>2.고유식별정보를 제공받는자의 목적: 연계정보(CI)와 중복가입확인정보(DI)의 생성 및 ‘회사’ 제공</li>
									<li>3.고유식별정보 제공 항목: ‘회사’가 보유하고 있는 고객의 주민등록번호와 외국인등록번호</li>
									<li>4.고유식별정보를 제공받는 자의 보유 및 이용기간: <u>연계정보(CI) 및 중복가입확인정보(DI) 생성후 즉시 폐기</u></li>
									<li>5.상기 고유식별정보 처리에 대한 내용에 동의하지 않으실 경우, ‘서비스’를 이용할 수 없습니다.</li>
								</ol>
								<p>상기와 같이 고유식별정보 이용 및 처리에 동의합니다.</p>
								
								
								<p>[NICE평가정보 귀중]</p>
								<p>NICE평가정보(주) (이하 “회사”)가 에스케이텔레콤(주), (주)케이티, LG유플러스(주)의 업무 대행을 통해 제공하는 휴대폰본인확인서비스와 관련하여 고객으로부터 수집한 고유식별정보를 이용 및 처리하거나 제3자에게 제공하고자 할 때에는 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’에 따라서 고객으로 부터 동의를 받아야 합니다.</p>
								
								<h2>제1조 [고유식별정보의 이용 및 처리 목적]</h2>
								<p>“회사”는 고객의 고유식별정보를 아래의 목적으로 이용 및 처리할 수 있습니다.</p>
								<ol>
									<li>1. 정보통신망법 제23조에서 정한 본인확인서비스 제공</li>
									<li>2. 부정 이용 방지 및 수사의뢰</li>
									<li>3. 휴대폰번호보호서비스 해제 (서비스 가입자에 한함)</li>
								</ol>
								<h2>제 2조 [고유식별정보의 이용 및 처리 내용]</h2>
								<p>에스케이텔레콤(주), (주)케이티, LG유플러스(주)의 통신사 또는 통신사의 대행업무를 수행하는 사업자에 정보를 전송하여 방송통신위원회에서 고시로 지정한 휴대폰본인확인기관을 통해 본인여부를 확인하고 결과를 제공받기 위해 고유식별정보가 이용 및 처리됩니다.</p>
								<ol>
									<li>-이용 및 처리되는 고유식별정보 : 주민등록번호(내국인), <u>외국인등록번호(외국인)</u></li>
									<li>상기와 같이 고유식별정보 이용 및 처리에 동의합니다.</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layer-popup-close"><button type="button" class="d_layer_close">닫기</button></div>
	</section>
</article>
		
<article id="popJoin3" class="layer-popup popTermsEt E4 inlayer">
	<section class="layer-popup-cont" tabindex="0">
		<h2>본인인증 서비스 이용약관</h2>
		<div class="layer-cont">
			<div class="d_tab02 tab_box">
				<ul class="tab-type01">
					<li class="d_tab02_select on"><a href="javascript:;">SKT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">KT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">LG U+</a></li>
				</ul>
				<div class="d_tab02_cont" style="display: block;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 본인인증 서비스 이용약관 ST -->
								<p>[서비스 이용약관]</p>
								<h2>제1조 (목적)</h2>
								<p>본 약관은 NICE평가정보(주) (이하 "회사"라 한다)이 제공하는 본인확인서비스(이하 "서비스"라 한다)에 관한 이용조건 및 절차 등 기본적인 사항을 규정함을 목적으로 합니다. </p>
								
								<h2>제2조 (약관의 효력 및 변경) </h2>
								<ol>
									<li>1. 본 약관은 "이용자"에게 "서비스" 화면에 게시하거나, 기타의 방법으로 공지하는 것으로 효력이 발생합니다. </li>
									<li>2. "회사"는 약관의 규제에 관한 법률 및 기타 관련 법령에 위배되지 않는 범위에서 본 약관의 내용을 개정할 수 있으며, 변경된 경우에는 제1항과 같은 방법으로 공지합니다. 다만 "이용자"의 권리와 의무에 관한 중요한 사항은 변경된 내용의 시행 15일 이전에 공지합니다. </li>
									<li>3. "이용자"는 변경된 약관에 대한 내용을 알지 못하여 발생하는 손해 및 피해에 대해서는 "회사"가 책임을 지지 않습니다. </li>
								</ol>
								
								<h2>제3조 (약관 외 준칙) </h2>
								<p>본 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률등 기타 관련 법령 또는 상관례에 따릅니다. </p>
								
								<h2>제4조 (용어의 정의) </h2>
								<p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다. </p>
								<ol>
									<li>1. "본인확인서비스"라 함은 "이용자"가 인터넷상에서 휴대폰 등의 인증수단을 이용하여, 본인임을 안전하게 식별 및 확인해 주는 서비스를 말합니다. </li>
									<li>2. "이용자"라 함은 "회사"에서 제공하는 "서비스"의 이용을 위해 자신의 "본인확인정보"를 "회사" 및 "본인확인기관" 등에게 제공하고, 본인임을 확인 받고자 하는 자를 말합니다. </li>
									<li>3. "본인확인정보"라 함은 "이용자"가 입력한 생년월일, 성별, 성명, 내/외국인, 휴대폰번호, 통신사 등 본인 식별에 필요한 "이용자"의 정보를 말합니다. </li>
									<li>4. "본인확인기관"이라 함은 주민등록번호를 사용하지 아니하고 본인을 확인하는 방법 또는 서비스를 제공하는 자로 방송통신위원회로부터 본인확인기관으로 지정을 받은 자를 의미합니다. </li>
									<li>5. "인터넷사업자"라 함은 인터넷을 이용하여 정보를 제공하거나, 정보의 제공을 매개하는 일을 업으로 하는 자로 "회사"와 계약을 통해 운영하며, 인터넷 웹사이트의 "이용자"에 대한 "본인확인정보"를 제공 받는 사업체를 말합니다. </li>
									<li>6. "중복가입확인정보"라 함은 웹사이트에 가입하고자 하는 이용자의 중복 확인을 위해 제공되는 정보를 말합니다. </li>
									<li>7. "연계정보" 라 함은 "인터넷사업자"의 온ㆍ오프라인 서비스 연계 등의 목적으로 "이용자"를 식별하기 위해 제공되는 정보를 말합니다. </li>
								</ol>
								
								<h2>제5조 (회사의 의무) </h2>
								<ol>
									<li>1. "회사"는 "서비스" 제공과 관련하여 인지한 "이용자"의 "본인확인정보"를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다. </li>
									<li>2. "회사"는 "이용자"에게 안전한 "서비스" 제공을 위하여 지속적으로 "서비스"의 예방점검, 유지보수 등을 이행하며, "서비스"의 장애가 발생하는 경우, 이를 지체 없이 수리 및 복구합니다. </li>
									<li>3. "회사"는 "이용자"가 제기한 의견, 불만이 타당하다고 인정되는 경우 적절한 절차를 거쳐 이를 지체 없이 처리하거나 처리에 관한 일정을 통지하여야 합니다. </li>
									<li>4. "회사"는 접근매체의 발급 주체가 아닌 경우에는 접근 매체의 위조나 변조로 발생한 사고로 인하여, "이용자"에게 발생한 손해에 대하여 배상책임이 없습니다. </li>
								</ol>
								
								<h2>제6조 (이용자의 의무) </h2>
								<ol>
									<li>1. "이용자"는 "서비스"를 이용함에 있어서 다음 각호에 해당하는 행위를 하여서는 안되며, "회사"는 위반 행위에 따르는 일체의 법적 책임을 지지 않습니다.
										<ol>
											<li>1) 타 "이용자"의 "본인확인정보"를 부정하게 사용 및 도용하는 행위 </li>
											<li>2) "회사"의 저작권, 제3자의 저작원 등 기타 권리를 침해하는 행위 </li>
											<li>3) 범죄 행위 </li>
											<li>4) 기타 관련 법령에 위배되는 행위 </li>
										</ol>
									</li>
									<li>2. "이용자"는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근 매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다. </li>
									<li>3. "이용자"는 본 약관에서 규정하는 사항과 "서비스"에 대한 이용안내 또는 주의사항을 준수하여야 합니다. </li>
								</ol>
								
								<h2>제7조 (서비스의 내용) </h2>
								<ol>
									<li>1. "서비스"는 "이용자"가 주민등록번호의 입력 없이, 본인명의로 된 인증수단(휴대폰 등)을 이용하여 본인 확인이 가능한 인증 서비스 입니다. </li>
									<li>2. "인터넷사업자"는 회원가입, ID/PW찾기, 성인인증, 기타 본인확인이 필요한 컨텐츠 요청 시 "이용자"에게 "서비스"를 제공 합니다. </li>
									<li>3. "이용자"는 자신의 생년월일, 성명, 성별, 내/외국인, 휴대폰번호, 통신사 등의 정보를 입력 후, 입력한 정보가 일치한 경우 해당 휴대폰번호로 1회성 비밀번호(승인번호)가 발송되며, 수신된 승인번호를 정확하게 입력하는 것으로 본인 확인이 이루어 집니다. </li>
								</ol>
								
								<h2>제8조 (서비스 제공시간) </h2>
								<ol>
									<li>1. "서비스"의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기 점검 및 기타 기술상의 이유로 "서비스"가 일시 중지될 수 있고 또한, 운영상의 목적으로 "회사"가 정한 기간에도 일시 중지될 수 있습니다. </li>
									<li>2. "회사"는 효율적인 업무 수행을 위하여 필요하다고 판단하는 경우 "서비스"를 일정 범위로 분할 하여 각 범위 별로 이용가능 시간을 달리 정할 수 있으며, 이 경우 그 내용을 공지 합니다. </li>
								</ol>
								
								<h2>제9조 (서비스 제공의 중지) </h2>
								<ol>
									<li>1. "회사"는 다음 각 호에 해당하는 사유가 있는 경우 "서비스" 제공의 전부 또는 일부를 중지할 수 있습니다. 
										<ol>
											<li>1) "서비스"를 위한 설비의 보수 등 공사로 인한 부득이한 경우 </li>
											<li>2) 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 "서비스" 이용에 지장이 있는 경우 </li>
											<li>3) "서비스" 계약종료 등과 같은 "인터넷사업자"의 제반 사정으로 "서비스"를 유지할 수 업는 경우 </li>
											<li>4) 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우 </li>
										</ol>
									</li>
									<li>2. "회사"는 "서비스"의 변경, 중지로 발생하는 문제에 대해서는 어떠한 책임도 지지 않습니다. </li>
								</ol>
								
								<h2>제10조 (서비스의 안전성 확보) </h2>
								<ol>
									<li>1. "회사"는 "서비스"의 안전성과 신뢰성을 확보하기 위하여 업무처리지침의 제정 및 시행, 정보처리시스템 및 전산자료의 관리 등의 관리적 조치와 모니터링 체계 및 해킹방지시스템 구축 및 운영 등의 기술적 조치를 취하고 있습니다. </li>
									<li>2. "회사"는 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖추고 있습니다. </li>
									<li>3. "회사"는 해킹 침해 방지를 위하여 다음 각 호의 시스템 및 프로그램을 설치하여 운영합니다. 
										<ol>
											<li>1) 침입차단시스템 설치 </li>
											<li>2) 침입탐지시스템 설치 </li>
											<li>3) 그 밖에 필요한 보호장비 또는 암호프로그램 등 정보보호시스템 설치 </li>
										</ol>
									</li>
									<li>4. "회사"는 컴퓨터바이러스 감염을 방지하기 위하여 다음 각 호를 포함한 대책을 수립, 운영하고 있습니다. 
										<ol>
											<li>1) 출처, 유통경로 및 제작자가 명확하지 아니한 응용프로그램은 사용을 자제하고 불가피할 경우에는 컴퓨터바이러스 검색프로그램으로 진단 및 치료 후 사용할 것 </li>
											<li>2) 컴퓨터바이러스 검색, 치료 프로그램을 설치하고 최신 버전을 유지할 것 </li>
											<li>3) 컴퓨터바이러스 감염에 대비하여 방어, 탐색 및 복구 절차를 마련할 것 </li>
										</ol>
									</li>
								</ol>
								
								<h2>제11조 (이용자의 개인정보보호) </h2>
								<p>"회사"는 관련법령이 정하는 바에 따라서 "이용자"의 개인정보를 보호하기 위하여 노력합니다. "이용자"의 개인정보보호에 관한 사항은 관련법령 및 "회사"가 정하는 "개인정보취급방침"에 정한 바에 따릅니다. </p>
								
								<h2>제12조 (개인정보의 위탁) </h2>
								<p>"회사"는 수집된 개인정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 "회사"가 선정한 회사에 위탁할 수 있습니다. 개인정보의 위탁에 관한 사항은 관련법령 및 "회사"가 정하는 "개인정보취급방침"에 정한 바에 따릅니다. </p>
								
								<h2>제13조 (손해배상) </h2>
								<p>"회사"는 "서비스"의 이용과 관련하여 "이용자"에게 발생한 "회사"측의 중과실에 의한 손해를 제외한 어떠한 손해에 관하여도 책임을 지지 않습니다. </p>
								
								<h2>제14조 (회사와 인터넷사업자와의 관계) </h2>
								<ol>
									<li>1. "회사"는 "인터넷사업자"가 제공하는 서비스 상품 또는 용역 등에 대하여 보증책임을 지지 않습니다.</li>
									<li>2. "회사"와 "인터넷사업자"는 독자적으로 사이트를 운영하며, "인터넷사업자"와 "이용자"간에 행해진 거래에 대하여 고의 또는 중과실이 있는 경우를 제외하고는 어떠한 책임도 지지 않습니다.</li>
								</ol>
								
								<h2>제15조 (면책) </h2>
								<ol>
									<li>1. "회사"의 고의 또는 과실 없이 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다. </li>
									<li>2. "회사"는 "이용자" 또는 제3자 측의 사정으로 인한 "서비스" 이용의 장애에 대하여 책임을 지지 않습니다. </li>
									<li>3. "회사"는 고의 또는 중과실이 없는 한 "이용자"가 "서비스"를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그밖에 "서비스"를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다. </li>
									<li>4. "회사"는 "이용자"가 "서비스"에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 고의 또는 중과실이 없는 한 일체의 책임을 지지 않습니다. </li>
									<li>5. 계약만료 또는 요금 미납의 결과로 사용자계정이 정지되거나, 보관 파일이 삭제된 후 이에 따르는 손해에 대하여 책임을 지지 않습니다. </li>
								</ol>
								
								<h2>제16조 (관할 법원) </h2>
								<ol>
									<li>1. "회사"와 "이용자"는 "서비스"와 관련하여 분쟁이 발생한 경우, 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다. </li>
									<li>2. 제1항의 협의에서도 분쟁이 해결되지 않은 경우 등, 약관과 관련하여 분쟁으로 인한 소송이 제기될 경우 동 소송은 서울중앙지방법원을 관할 법원으로 합니다. </li>
								</ol>
								
								<h2>부칙</h2> 
								<p>(시행일) 이 약관은 공시한 날로부터 시행합니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 본인인증 서비스 이용약관 KT -->
								<p>[서비스 이용약관]</p>
								
								<h2>제1조 (목적)</h2>
								<p>본 약관은 NICE평가정보(주) (이하 "회사"라 한다)이 제공하는 본인확인서비스(이하 "서비스"라 한다)에 관한 이용조건 및 절차 등 기본적인 사항을 규정함을 목적으로 합니다. </p>
								
								<h2>제2조 (약관의 효력 및 변경) </h2>
								<ol>
									<li>1. 본 약관은 "이용자"에게 "서비스" 화면에 게시하거나, 기타의 방법으로 공지하는 것으로 효력이 발생합니다. </li>
									<li>2. "회사"는 약관의 규제에 관한 법률 및 기타 관련 법령에 위배되지 않는 범위에서 본 약관의 내용을 개정할 수 있으며, 변경된 경우에는 제1항과 같은 방법으로 공지합니다. 다만 "이용자"의 권리와 의무에 관한 중요한 사항은 변경된 내용의 시행 15일 이전에 공지합니다. </li>
									<li>3. "이용자"는 변경된 약관에 대한 내용을 알지 못하여 발생하는 손해 및 피해에 대해서는 "회사"가 책임을 지지 않습니다. </li>
								</ol>
								
								<h2>제3조 (약관 외 준칙) </h2>
								<p>본 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률등 기타 관련 법령 또는 상관례에 따릅니다. </p>
								
								<h2>제4조 (용어의 정의) </h2>
								<p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다. </p>
								<ol>
									<li>1. "본인확인서비스"라 함은 "이용자"가 인터넷상에서 휴대폰 등의 인증수단을 이용하여, 본인임을 안전하게 식별 및 확인해 주는 서비스를 말합니다. </li>
									<li>2. "이용자"라 함은 "회사"에서 제공하는 "서비스"의 이용을 위해 자신의 "본인확인정보"를 "회사" 및 "본인확인기관" 등에게 제공하고, 본인임을 확인 받고자 하는 자를 말합니다. </li>
									<li>3. "본인확인정보"라 함은 "이용자"가 입력한 생년월일, 성별, 성명, 내/외국인, 휴대폰번호, 통신사 등 본인 식별에 필요한 "이용자"의 정보를 말합니다. </li>
									<li>4. "본인확인기관"이라 함은 주민등록번호를 사용하지 아니하고 본인을 확인하는 방법 또는 서비스를 제공하는 자로 방송통신위원회로부터 본인확인기관으로 지정을 받은 자를 의미합니다. </li>
									<li>5. "인터넷사업자"라 함은 인터넷을 이용하여 정보를 제공하거나, 정보의 제공을 매개하는 일을 업으로 하는 자로 "회사"와 계약을 통해 운영하며, 인터넷 웹사이트의 "이용자"에 대한 "본인확인정보"를 제공 받는 사업체를 말합니다. </li>
									<li>6. "중복가입확인정보"라 함은 웹사이트에 가입하고자 하는 이용자의 중복 확인을 위해 제공되는 정보를 말합니다. </li>
									<li>7. "연계정보" 라 함은 "인터넷사업자"의 온ㆍ오프라인 서비스 연계 등의 목적으로 "이용자"를 식별하기 위해 제공되는 정보를 말합니다. </li>
								
								</ol>
								<h2>제5조 (회사의 의무) </h2>
								<ol>
									<li>1. "회사"는 "서비스" 제공과 관련하여 인지한 "이용자"의 "본인확인정보"를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다. </li>
									<li>2. "회사"는 "이용자"에게 안전한 "서비스" 제공을 위하여 지속적으로 "서비스"의 예방점검, 유지보수 등을 이행하며, "서비스"의 장애가 발생하는 경우, 이를 지체 없이 수리 및 복구합니다. </li>
									<li>3. "회사"는 "이용자"가 제기한 의견, 불만이 타당하다고 인정되는 경우 적절한 절차를 거쳐 이를 지체 없이 처리하거나 처리에 관한 일정을 통지하여야 합니다. </li>
									<li>4. "회사"는 접근매체의 발급 주체가 아닌 경우에는 접근 매체의 위조나 변조로 발생한 사고로 인하여, "이용자"에게 발생한 손해에 대하여 배상책임이 없습니다. </li>
								</ol>
								
								<h2>제6조 (이용자의 의무) </h2>
								<ol>
									<li>1. "이용자"는 "서비스"를 이용함에 있어서 다음 각호에 해당하는 행위를 하여서는 안되며, "회사"는 위반 행위에 따르는 일체의 법적 책임을 지지 않습니다. 
										<ol>
											<li>1) 타 "이용자"의 "본인확인정보"를 부정하게 사용 및 도용하는 행위 </li>
											<li>2) "회사"의 저작권, 제3자의 저작원 등 기타 권리를 침해하는 행위 </li>
											<li>3) 범죄 행위 </li>
											<li>4) 기타 관련 법령에 위배되는 행위 </li>
										</ol>
									</li>
									<li>2. "이용자"는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근 매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다. </li>
									<li>3. "이용자"는 본 약관에서 규정하는 사항과 "서비스"에 대한 이용안내 또는 주의사항을 준수하여야 합니다. </li>
								</ol>
								
								<h2>제7조 (서비스의 내용) </h2>
								<ol>
									<li>1. "서비스"는 "이용자"가 주민등록번호의 입력 없이, 본인명의로 된 인증수단(휴대폰 등)을 이용하여 본인 확인이 가능한 인증 서비스 입니다. </li>
									<li>2. "인터넷사업자"는 회원가입, ID/PW찾기, 성인인증, 기타 본인확인이 필요한 컨텐츠 요청 시 "이용자"에게 "서비스"를 제공 합니다. </li>
									<li>3. "이용자"는 자신의 생년월일, 성명, 성별, 내/외국인, 휴대폰번호, 통신사 등의 정보를 입력 후, 입력한 정보가 일치한 경우 해당 휴대폰번호로 1회성 비밀번호(승인번호)가 발송되며, 수신된 승인번호를 정확하게 입력하는 것으로 본인 확인이 이루어 집니다. </li>
								<ol>
								
								
								<h2>제8조 (서비스 제공시간) </h2>
								<ol>
									<li>1. "서비스"의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기 점검 및 기타 기술상의 이유로 "서비스"가 일시 중지될 수 있고 또한, 운영상의 목적으로 "회사"가 정한 기간에도 일시 중지될 수 있습니다. </li>
									<li>2. "회사"는 효율적인 업무 수행을 위하여 필요하다고 판단하는 경우 "서비스"를 일정 범위로 분할 하여 각 범위 별로 이용가능 시간을 달리 정할 수 있으며, 이 경우 그 내용을 공지 합니다. </li>
								</ol>
								
								<h2>제9조 (서비스 제공의 중지) </h2>
								<ol>
									<li>1. "회사"는 다음 각 호에 해당하는 사유가 있는 경우 "서비스" 제공의 전부 또는 일부를 중지할 수 있습니다. 
										<ol>
											<li>1) "서비스"를 위한 설비의 보수 등 공사로 인한 부득이한 경우 </li>
											<li>2) 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 "서비스" 이용에 지장이 있는 경우 </li>
											<li>3) "서비스" 계약종료 등과 같은 "인터넷사업자"의 제반 사정으로 "서비스"를 유지할 수 업는 경우 </li>
											<li>4) 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우 </li>
										</ol>
									</li>
									<li>2. "회사"는 "서비스"의 변경, 중지로 발생하는 문제에 대해서는 어떠한 책임도 지지 않습니다. </li>
								</ol>
								
								<h2>제10조 (서비스의 안전성 확보) </h2>
								<ol>
									<li>1. "회사"는 "서비스"의 안전성과 신뢰성을 확보하기 위하여 업무처리지침의 제정 및 시행, 정보처리시스템 및 전산자료의 관리 등의 관리적 조치와 모니터링 체계 및 해킹방지시스템 구축 및 운영 등의 기술적 조치를 취하고 있습니다. </li>
									<li>2. "회사"는 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖추고 있습니다. </li>
									<li>3. "회사"는 해킹 침해 방지를 위하여 다음 각 호의 시스템 및 프로그램을 설치하여 운영합니다. 
										<ol>
											<li>1) 침입차단시스템 설치 </li>
											<li>2) 침입탐지시스템 설치 </li>
											<li>3) 그 밖에 필요한 보호장비 또는 암호프로그램 등 정보보호시스템 설치 </li>	
										</ol>
									</li>
									<li>4. "회사"는 컴퓨터바이러스 감염을 방지하기 위하여 다음 각 호를 포함한 대책을 수립, 운영하고 있습니다. 
										<ol>
											<li>1) 출처, 유통경로 및 제작자가 명확하지 아니한 응용프로그램은 사용을 자제하고 불가피할 경우에는 컴퓨터바이러스 검색프로그램으로 진단 및 치료 후 사용할 것 </li>
											<li>2) 컴퓨터바이러스 검색, 치료 프로그램을 설치하고 최신 버전을 유지할 것 </li>
											<li>3) 컴퓨터바이러스 감염에 대비하여 방어, 탐색 및 복구 절차를 마련할 것 </li>
										</ol>
									</li>
								</ol>
								
								<h2>제11조 (이용자의 개인정보보호) </h2>
								<p>"회사"는 관련법령이 정하는 바에 따라서 "이용자"의 개인정보를 보호하기 위하여 노력합니다. "이용자"의 개인정보보호에 관한 사항은 관련법령 및 "회사"가 정하는 "개인정보취급방침"에 정한 바에 따릅니다. </p>
								
								<h2>제12조 (개인정보의 위탁) </h2>
								<p>"회사"는 수집된 개인정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 "회사"가 선정한 회사에 위탁할 수 있습니다. 개인정보의 위탁에 관한 사항은 관련법령 및 "회사"가 정하는 "개인정보취급방침"에 정한 바에 따릅니다. </p>
								
								<h2>제13조 (손해배상) </h2>
								<p><"회사"는 "서비스"의 이용과 관련하여 "이용자"에게 발생한 "회사"측의 중과실에 의한 손해를 제외한 어떠한 손해에 관하여도 책임을 지지 않습니다. /p>
								
								<h2>제14조 (회사와 인터넷사업자와의 관계) </h2>
								<ol>
									<li>1. "회사"는 "인터넷사업자"가 제공하는 서비스 상품 또는 용역 등에 대하여 보증책임을 지지 않습니다. </li>
									<li>2. "회사"와 "인터넷사업자"는 독자적으로 사이트를 운영하며, "인터넷사업자"와 "이용자"간에 행해진 거래에 대하여 고의 또는 중과실이 있는 경우를 제외하고는 어떠한 책임도 지지 않습니다. </li>
								</ol>
								
								<h2>제15조 (면책) </h2>
								<ol>
									<li>1. "회사"의 고의 또는 과실 없이 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다. </li>
									<li>2. "회사"는 "이용자" 또는 제3자 측의 사정으로 인한 "서비스" 이용의 장애에 대하여 책임을 지지 않습니다. </li>
									<li>3. "회사"는 고의 또는 중과실이 없는 한 "이용자"가 "서비스"를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그밖에 "서비스"를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다. </li>
									<li>4. "회사"는 "이용자"가 "서비스"에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 고의 또는 중과실이 없는 한 일체의 책임을 지지 않습니다. </li>
									<li>5. 계약만료 또는 요금 미납의 결과로 사용자계정이 정지되거나, 보관 파일이 삭제된 후 이에 따르는 손해에 대하여 책임을 지지 않습니다. </li>
								</ol>
								
								<h2>제16조 (관할 법원) </h2>
								<ol>
									<li>1. "회사"와 "이용자"는 "서비스"와 관련하여 분쟁이 발생한 경우, 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다. </li>
									<li>2. 제1항의 협의에서도 분쟁이 해결되지 않은 경우 등, 약관과 관련하여 분쟁으로 인한 소송이 제기될 경우 동 소송은 서울중앙지방법원을 관할 법원으로 합니다. </li>
								</ol>
								
								<h2>부칙 </h2>
								<p>(시행일) 이 약관은 공시한 날로부터 시행합니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont on" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 본인인증 서비스 이용약관 LG -->
								<p>[서비스 이용약관]</p>
								
								<h2>제1조 (목적)</h2>
								<p>본 약관은 NICE평가정보(주) (이하 "회사"라 한다)이 제공하는 본인확인서비스(이하 "서비스"라 한다)에 관한 이용조건 및 절차 등 기본적인 사항을 규정함을 목적으로 합니다. </p>
								
								<h2>제2조 (약관의 효력 및 변경) </h2>
								<ol>
									<li>1. 본 약관은 "이용자"에게 "서비스" 화면에 게시하거나, 기타의 방법으로 공지하는 것으로 효력이 발생합니다. </li>
									<li>2. "회사"는 약관의 규제에 관한 법률 및 기타 관련 법령에 위배되지 않는 범위에서 본 약관의 내용을 개정할 수 있으며, 변경된 경우에는 제1항과 같은 방법으로 공지합니다. 다만 "이용자"의 권리와 의무에 관한 중요한 사항은 변경된 내용의 시행 15일 이전에 공지합니다. </li>
									<li>3. "이용자"는 변경된 약관에 대한 내용을 알지 못하여 발생하는 손해 및 피해에 대해서는 "회사"가 책임을 지지 않습니다. </li>
								</ol>
								
								<h2>제3조 (약관 외 준칙) </h2>
								<p>본 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률등 기타 관련 법령 또는 상관례에 따릅니다. </p>
								
								<h2>제4조 (용어의 정의) </h2>
								<p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다. </p>
								<ol>
									<li>1. "본인확인서비스"라 함은 "이용자"가 인터넷상에서 휴대폰 등의 인증수단을 이용하여, 본인임을 안전하게 식별 및 확인해 주는 서비스를 말합니다. </li>
									<li>2. "이용자"라 함은 "회사"에서 제공하는 "서비스"의 이용을 위해 자신의 "본인확인정보"를 "회사" 및 "본인확인기관" 등에게 제공하고, 본인임을 확인 받고자 하는 자를 말합니다. </li>
									<li>3. "본인확인정보"라 함은 "이용자"가 입력한 생년월일, 성별, 성명, 내/외국인, 휴대폰번호, 통신사 등 본인 식별에 필요한 "이용자"의 정보를 말합니다. </li>
									<li>4. "본인확인기관"이라 함은 주민등록번호를 사용하지 아니하고 본인을 확인하는 방법 또는 서비스를 제공하는 자로 방송통신위원회로부터 본인확인기관으로 지정을 받은 자를 의미합니다. </li>
									<li>5. "인터넷사업자"라 함은 인터넷을 이용하여 정보를 제공하거나, 정보의 제공을 매개하는 일을 업으로 하는 자로 "회사"와 계약을 통해 운영하며, 인터넷 웹사이트의 "이용자"에 대한 "본인확인정보"를 제공 받는 사업체를 말합니다. </li>
									<li>6. "중복가입확인정보"라 함은 웹사이트에 가입하고자 하는 이용자의 중복 확인을 위해 제공되는 정보를 말합니다. </li>
									<li>7. "연계정보" 라 함은 "인터넷사업자"의 온ㆍ오프라인 서비스 연계 등의 목적으로 "이용자"를 식별하기 위해 제공되는 정보를 말합니다. </li>
								</ol>
								
								<h2>제5조 (회사의 의무) </h2>
								<ol>
									<li>1. "회사"는 "서비스" 제공과 관련하여 인지한 "이용자"의 "본인확인정보"를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다. </li>
									<li>2. "회사"는 "이용자"에게 안전한 "서비스" 제공을 위하여 지속적으로 "서비스"의 예방점검, 유지보수 등을 이행하며, "서비스"의 장애가 발생하는 경우, 이를 지체 없이 수리 및 복구합니다. </li>
									<li>3. "회사"는 "이용자"가 제기한 의견, 불만이 타당하다고 인정되는 경우 적절한 절차를 거쳐 이를 지체 없이 처리하거나 처리에 관한 일정을 통지하여야 합니다. </li>
									<li>4. "회사"는 접근매체의 발급 주체가 아닌 경우에는 접근 매체의 위조나 변조로 발생한 사고로 인하여, "이용자"에게 발생한 손해에 대하여 배상책임이 없습니다. </li>
								</ol>
								
								<h2>제6조 (이용자의 의무) </h2>
								<ol>
									<li>1. "이용자"는 "서비스"를 이용함에 있어서 다음 각호에 해당하는 행위를 하여서는 안되며, "회사"는 위반 행위에 따르는 일체의 법적 책임을 지지 않습니다.
										<ol>
											<li>1) 타 "이용자"의 "본인확인정보"를 부정하게 사용 및 도용하는 행위 </li>
											<li>2) "회사"의 저작권, 제3자의 저작원 등 기타 권리를 침해하는 행위 </li>
											<li>3) 범죄 행위 </li>
											<li>4) 기타 관련 법령에 위배되는 행위 </li>
										</ol>
									</li>
									<li>2. "이용자"는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근 매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다. </li>
									<li>3. "이용자"는 본 약관에서 규정하는 사항과 "서비스"에 대한 이용안내 또는 주의사항을 준수하여야 합니다. </li>
								</ol>
								
								<h2>제7조 (서비스의 내용) </h2>
								<ol>
									<li>1. "서비스"는 "이용자"가 주민등록번호의 입력 없이, 본인명의로 된 인증수단(휴대폰 등)을 이용하여 본인 확인이 가능한 인증 서비스 입니다. </li>
									<li>2. "인터넷사업자"는 회원가입, ID/PW찾기, 성인인증, 기타 본인확인이 필요한 컨텐츠 요청 시 "이용자"에게 "서비스"를 제공 합니다. </li>
									<li>3. "이용자"는 자신의 생년월일, 성명, 성별, 내/외국인, 휴대폰번호, 통신사 등의 정보를 입력 후, 입력한 정보가 일치한 경우 해당 휴대폰번호로 1회성 비밀번호(승인번호)가 발송되며, 수신된 승인번호를 정확하게 입력하는 것으로 본인 확인이 이루어 집니다. </li>
								</ol>
								
								<h2>제8조 (서비스 제공시간) </h2>
								<ol>
									<li>1. "서비스"의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기 점검 및 기타 기술상의 이유로 "서비스"가 일시 중지될 수 있고 또한, 운영상의 목적으로 "회사"가 정한 기간에도 일시 중지될 수 있습니다. </li>
									<li>2. "회사"는 효율적인 업무 수행을 위하여 필요하다고 판단하는 경우 "서비스"를 일정 범위로 분할 하여 각 범위 별로 이용가능 시간을 달리 정할 수 있으며, 이 경우 그 내용을 공지 합니다. </li>
								</ol>
								
								<h2>제9조 (서비스 제공의 중지) </h2>
								<ol>
									<li>1. "회사"는 다음 각 호에 해당하는 사유가 있는 경우 "서비스" 제공의 전부 또는 일부를 중지할 수 있습니다. 
										<ol>
											<li>1) "서비스"를 위한 설비의 보수 등 공사로 인한 부득이한 경우 </li>
											<li>2) 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 "서비스" 이용에 지장이 있는 경우 </li>
											<li>3) "서비스" 계약종료 등과 같은 "인터넷사업자"의 제반 사정으로 "서비스"를 유지할 수 업는 경우 </li>
											<li>4) 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우 </li>
										</ol>
									</li>
									<li>2. "회사"는 "서비스"의 변경, 중지로 발생하는 문제에 대해서는 어떠한 책임도 지지 않습니다. </li>
								</ol>
								
								<h2>제10조 (서비스의 안전성 확보) </h2>
								<ol>
									<li>1. "회사"는 "서비스"의 안전성과 신뢰성을 확보하기 위하여 업무처리지침의 제정 및 시행, 정보처리시스템 및 전산자료의 관리 등의 관리적 조치와 모니터링 체계 및 해킹방지시스템 구축 및 운영 등의 기술적 조치를 취하고 있습니다. </li>
									<li>2. "회사"는 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖추고 있습니다. </li>
									<li>3. "회사"는 해킹 침해 방지를 위하여 다음 각 호의 시스템 및 프로그램을 설치하여 운영합니다. 
										<ol>
											<li>1) 침입차단시스템 설치 </li>
											<li>2) 침입탐지시스템 설치 </li>
											<li>3) 그 밖에 필요한 보호장비 또는 암호프로그램 등 정보보호시스템 설치 </li>
										</ol>
									</li>
									<li>4. "회사"는 컴퓨터바이러스 감염을 방지하기 위하여 다음 각 호를 포함한 대책을 수립, 운영하고 있습니다. 
										<ol>
											<li>1) 출처, 유통경로 및 제작자가 명확하지 아니한 응용프로그램은 사용을 자제하고 불가피할 경우에는 컴퓨터바이러스 검색프로그램으로 진단 및 치료 후 사용할 것 </li>
											<li>2) 컴퓨터바이러스 검색, 치료 프로그램을 설치하고 최신 버전을 유지할 것 </li>
											<li>3) 컴퓨터바이러스 감염에 대비하여 방어, 탐색 및 복구 절차를 마련할 것 </li>	
										</ol>
									</li>
								</ol>
								
								<h2>제11조 (이용자의 개인정보보호) </h2>
								<p>"회사"는 관련법령이 정하는 바에 따라서 "이용자"의 개인정보를 보호하기 위하여 노력합니다. "이용자"의 개인정보보호에 관한 사항은 관련법령 및 "회사"가 정하는 "개인정보취급방침"에 정한 바에 따릅니다. </p>
								
								<h2>제12조 (개인정보의 위탁) </h2>
								<p>"회사"는 수집된 개인정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 "회사"가 선정한 회사에 위탁할 수 있습니다. 개인정보의 위탁에 관한 사항은 관련법령 및 "회사"가 정하는 "개인정보취급방침"에 정한 바에 따릅니다. </p>
								
								<h2>제13조 (손해배상) </h2>
								<p>"회사"는 "서비스"의 이용과 관련하여 "이용자"에게 발생한 "회사"측의 중과실에 의한 손해를 제외한 어떠한 손해에 관하여도 책임을 지지 않습니다. </p>
								
								<h2>제14조 (회사와 인터넷사업자와의 관계) </h2>
								<ol>
									<li>1. "회사"는 "인터넷사업자"가 제공하는 서비스 상품 또는 용역 등에 대하여 보증책임을 지지 않습니다. </li>
									<li>2. "회사"와 "인터넷사업자"는 독자적으로 사이트를 운영하며, "인터넷사업자"와 "이용자"간에 행해진 거래에 대하여 고의 또는 중과실이 있는 경우를 제외하고는 어떠한 책임도 지지 않습니다. </li>
								</ol>
								
								<h2>제15조 (면책) </h2>
								<ol>
									<li>1. "회사"의 고의 또는 과실 없이 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다. </li>
									<li>2. "회사"는 "이용자" 또는 제3자 측의 사정으로 인한 "서비스" 이용의 장애에 대하여 책임을 지지 않습니다. </li>
									<li>3. "회사"는 고의 또는 중과실이 없는 한 "이용자"가 "서비스"를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그밖에 "서비스"를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다. </li>
									<li>4. "회사"는 "이용자"가 "서비스"에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 고의 또는 중과실이 없는 한 일체의 책임을 지지 않습니다. </li>
									<li>5. 계약만료 또는 요금 미납의 결과로 사용자계정이 정지되거나, 보관 파일이 삭제된 후 이에 따르는 손해에 대하여 책임을 지지 않습니다. </li>
								</ol>
								
								<h2>제16조 (관할 법원) </h2>
								<ol>
									<li>1. "회사"와 "이용자"는 "서비스"와 관련하여 분쟁이 발생한 경우, 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다. </li>
									<li>2. 제1항의 협의에서도 분쟁이 해결되지 않은 경우 등, 약관과 관련하여 분쟁으로 인한 소송이 제기될 경우 동 소송은 서울중앙지방법원을 관할 법원으로 합니다. </li>
								</ol>
								
								<h2>부칙 </h2>
								<p>(시행일) 이 약관은 공시한 날로부터 시행합니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="popJoin4" class="layer-popup popTermsEt E3 inlayer">
	<section class="layer-popup-cont" tabindex="0">
		<h2>통신사 이용약관 동의</h2>
		<div class="layer-cont">
			
			<div class="d_tab02 tab_box">
				<ul class="tab-type01">
					<li class="d_tab02_select on"><a href="javascript:;">SKT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">KT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">LG U+</a></li>
				</ul>
				<div class="d_tab02_cont" style="display: block;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 통신사 이용약관 동의 ST -->
								<p>[SKT 본인확인서비스 이용약관]</p>
								<h2>제1조 (목적)</h2>
								<p>이 약관은 ‘본인확인서비스’를 제공하는 에스케이텔레콤 주식’회사’(이하 ‘‘회사’’라 합니다)와 ‘본인확인서비스’ 이용자 (이하 ‘이용자’라 합니다)간에 ‘본인확인서비스’ 이용에 관한 ‘회사’와 ‘이용자’의 권리와 의무, 기타 제반 사항을 정함을 목적으로 합니다.</p>
								
								<h2>제2조 (용어의 정의)</h2>
								<ol>
									<li>① ‘본인확인서비스’라 함은 ‘이용자’가 유무선 인터넷 웹’사이트’ 및 스마트폰 Application 등(이하 ‘사이트’라 합니다)에서 본인 명의로 개통한 휴대폰을 이용하여, 본인확인정보를 입력하고 인증 절차를 통하여 본인 여부와 본인이 등록한 정보의 정확성을 확인하여 주는 서비스를 말합니다.</li>
									<li>② ‘본인확인정보’라 함은 본인확인을 위하여 ‘이용자’가 입력한 본인의 생년월일, 성별, 성명, 내/외국인 여부, 본인명의로 개통된 이동전화번호, 기타 ‘회사’와 ‘이용자’간에 별도로 설정한 번호 등 ‘이용자’에 대한 ‘본인확인서비스’ 제공을 위해 필요한 정보를 말합니다.</li>
									<li>③ ‘이용자’라 함은 ‘사이트’에서 ‘회사’가 제공하는 ‘본인확인서비스’를 이용하는 자를 말하며, ‘회사’의 이동전화서비스 가입자와 ‘회사’의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자중 ‘회사’의 ‘본인확인서비스’를 이용하는 자를 말합니다.</li>
									<li>④ ‘중복가입확인정보’라 함은 ‘이용자’가 ‘사이트’에 가입하거나 ‘사이트’에서 특정 서비스 이용, 구매 등 어떤 행동을 할 때, 해당 ‘이용자’의 기 가입/이용 여부를 확인하기 위하여 생성되는 정보를 말합니다.</li>
									<li>⑤ ‘본인확인기관’이라 함은 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 ‘본인확인서비스’ 관련 법령에 따라 주민등록번호를 수집·이용하고, ‘사이트’에서 주민등록번호를 사용하지 아니하고 본인을 확인할 수 있도록 해주는 방법(이하 ‘대체수단’이라 합니다)을 개발·제공·관리하는 업무를 담당하는 사업자를 말합니다.</li>
									<li>⑥ ‘연계 식별정보’라 함은 ‘이용자’가 가입/등록한 ‘사이트’들간의 서비스 또는 Contents, point등의 연계, 정산 등의 목적으로 ‘사이트’에 가입/등록한 ‘이용자’를 식별하기 위하여 생성되는 정보를 말합니다.</li>
									<li>⑦ ‘대행기관’은 ‘이용자’가 ‘사이트’에서 ‘본인확인서비스’를 제공받을 수 있도록, ‘사이트’와 ‘회사’간의 ‘본인확인서비스’를 중계하고 ‘이용자’에게 ‘본인확인서비스’ 이용방법의 안내와 문의 등 지원업무를 담당하는 등, ‘회사’가 위탁한 업무범위내에서 ‘회사’를 대신하여 ‘이용자’에게 ‘본인확인서비스’와 관련된 업무를 제공하는 사업자를 말합니다.</li>
									<li>⑧ ‘사이트’라 함은 유무선 인터넷 웹’사이트’, 스마트폰 Application 등을 통하여 ‘이용자’에게 상품, 서비스, Contents, Point 등 각종 재화와 용역을 유/무료로 제공하는 개인, 법인, 기관, 단체 등을 말합니다.</li>
									<li>⑨ ‘접근매체’란 ‘본인확인서비스’ 이용을 위해 ‘이용자’ 및 ‘이용자’가 입력하는 내용 등의진실성과 정확성을 담보하는 수단으로서, ‘이용자’가 입력하는 제2항의 정보, I-PIN ID 및 Password 등 ‘본인확인기관’에서 발급받은 정보, 기타 ‘이용자’가 ‘회사’ 및 ‘사이트’에서 설정한 ID 및 Password 등의 정보, ‘이용자’ 명의의 이동전화 번호 등을 말합니다.</li>
									<li>⑩ ‘대체수단’이라 함은 ‘중복가입확인정보’ 및 연계식별정보를 포함하여, 주민등록정보를 사용하지 아니하고 본인여부를 식별 및 확인할 수 있는 수단을 말합니다.</li>
									<li>⑪ ‘부가서비스’라 함은 ‘회사’가 ‘본인확인서비스’와 관련하여 추가적인 보안·인증절차 등을 유료 또는 무료로 제공하는 서비스를 말하여, 유료인 경우에는 ‘이용자’에 대해 ‘회사’의 이동전화서비스 청구서에 합산하여 ‘부가서비스’ 이용요금을 청구하고 이동전화 요금과 함께 수납합니다.</li>
								</ol>
								
								<h2>제3조 (약관의 명시 및 변경)</h2>
								<ol>
									<li>① ‘회사’는 이 약관을 ‘회사’가 운영하는 ‘사이트’ 등에 게시하거나 ‘이용자’의 ‘본인확인서비스’ 이용시 공개하여 ‘이용자’가 이 약관의 내용을 확인할 수 있도록 합니다. 또한 ‘이용자’의 요청이 있는 경우 전자문서의 형태로 약관 사본을 ‘이용자’에게 교부합니다.</li>
									<li>② ‘회사’는 필요하다고 인정되는 경우 이 약관을 변경할 수 있으며, ‘회사’가 약관을 변경할 경우에는 적용일자 및 변경사유를 명시하여 ‘회사’가 운영하는 ‘사이트’에서 적용일자 15일 전부터 공지합니다. </li>
									<li>③ ‘회사’가 전항에 따라 변경 약관을 공지 또는 통지하면서 ‘이용자’에게 약관 변경 적용일 까지 거부의사를 표시하지 않으면 약관의 변경에 동의한 것으로 간주한다는 내용을 명확하게 공지 또는 통지하였음에도 ‘이용자’가 명시적으로 약관 변경에 대한 거부의사를 표시하지 아니하면 ‘이용자’가 변경 약관에 동의한 것으로 간주합니다. ‘이용자’는 변경된 약관 사항에 동의하지 않으면 ‘본인확인서비스’ 이용을 중단하고 이용 계약을 해지할 수 있습니다.</li>
									<li>④ ‘이용자’ 또는 ‘사이트’가 이 약관의 내용(약관 변경시 변경된 내용 포함)을 알지 못하여 발생하는 손해 및 피해에 대해서는 ‘회사’는 일체 책임을 지지 않습니다.</li>
								</ol>
								
								<h2>제4조 (이용 계약의 성립)</h2>
								<p>‘이용자’가 ‘사이트’ 등에 게시되거나 ‘본인확인서비스’ 이용시 공개되는 이 약관의 내용에 “동의” 버튼을 누르거나 체크하면 약관에 동의하고, ‘본인확인서비스’ 이용을 신청한 것으로 간주합니다.</p>
								
								<h2>제5조 (본인확인정보 및 ‘접근매체’의 관리 등)</h2>
								<ol>
									<li>① ‘회사’는 ‘본인확인서비스’ 제공시 ‘이용자’가 사용한 ‘접근매체’와 입력된 본인확인정보, ‘사이트’에서 제공하는 정보 등을 이용하여, ‘이용자’의 신원, 권한 및 ‘본인확인서비스’를 요청한 내역 등을 확인 할 수 있습니다.</li>
									<li>② ‘이용자’는 자신의 본인확인 정보 및 ‘접근매체’를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공할 수 없으며, 본인확인정보 및 ‘접근매체’의 도용이나 위조·변조 등을 방지하기 위해 충분한 주의를 기울여야 합니다.</li>
									<li>③ ‘이용자’는 자신의 본인확인정보 및 ‘접근매체’를 제3자에게 누설 또는 노출하거나 방치하여서는 안됩니다.</li>
									<li>④ ‘이용자’는 ‘접근매체’의 분실·도난·유출·위조·변조 등 또는 본인확인정보 유출 등의 사실을 인지할 경우 ‘회사’에 즉시 통지하여야 하며, ‘회사’는 ‘이용자’의 통지를 받은 때부터 즉시 ‘본인확인서비스’를 중지합니다.</li>
								</ol>
								
								<h2>제6조 (‘본인확인서비스’ 안내)</h2>
								<ol>
									<li>① ‘회사’가 제공하는 ‘본인확인서비스’는, ‘이용자’가 입력한 본인확인정보에 대해, ‘이용자’가 본인 명의로 개통하고 사용하고 있는 이동전화 서비스 관련 정보·’중복가입확인정보’·’연계 식별정보’를 이용하여, 본인 식별 또는 본인의 성년·미성년 여부, 중복가입여부 등을 확인하여주는 서비스 입니다. 단, ‘회사’의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자에 대해서는 개별 별정통신사업자가 ‘회사’에 취급을 위탁한 정보만을 기반으로 본문의 서비스를 제공합니다.</li>
									<li>② ‘회사’는 직접 또는 ‘대행기관’을 통하여 ‘사이트’에, 서비스 화면 또는 Socket형태로 ‘본인확인서비스’를 제공하며, ‘사이트’는 ‘사이트’ 운영과 관련된 법령과 ‘사이트’ 이용약관에 따라 ‘이용자’에게 ‘본인확인서비스’ 이용 수단을 제공합니다.</li>
									<li>③ ‘이용자’는 특정 ‘사이트’에서 ‘회사’ 및 ‘대행기관’의 이용약관, ‘사이트’의 이용약관에 동의하는 경우, 해당 ‘사이트’에서 ‘회사’가 제공하는 ‘본인확인서비스’를 이용하실 수 있습니다.</li>
									<li>④ 제3항에 따라 각 이용약관에 동의한 경우, ‘이용자’가 자신의 생년월일, 성명, 성별, 내/외국인, 본인 명의로 가입한 이동통신사와 이동전화 번호 등의 정보를 입력하고, 입력한 정보가 일치하는 경우에 ‘이용자’의 이동전화 번호로 송신되는 1회성 암호(승인암호)를 정확하게 입력하는 것으로 본인 확인이 이루어 집니다. 단, ‘회사’가 직접 운영하는 ‘사이트’ 또는 관련 법령 등에 따라 주민등록번호의 수집·이용이 허용되는 ‘사이트’에서는 생년월일 대신 주민등록번호를 받을 수 있습니다.</li>
									<li>⑤ 제4항에 따라 본인확인이 완료된 ‘이용자’에 대해서는 해당 ‘이용자’의 본인확인정보, ‘중복가입확인정보’ 및 ‘연계 식별정보’를 ‘회사’가 보유하고 있는 경우, ‘사이트’의 요청에 따라 ‘사이트’에 제공될 수 있으며, 제공된 정보는 각 ‘사이트’가 ‘이용자’와 체결한 약관, 계약에 따라 운영·관리·폐기됩니다.</li>
								</ol>
								
								<h2>제7조(‘본인확인서비스’의 ‘부가서비스’)</h2>
								<ol>
									<li>① ‘회사’는 ‘본인확인서비스’ 이용과 관련하여, 보다 강화된 보안을 필요로 하는 ‘이용자’가 가입을 신청하는 경우에 한하여, 별도의 ‘부가서비스’를 유료 또는 무료로 제공합니다.</li>
									<li>② ‘회사’가 제공하는 ‘부가서비스’는 다음 각 호와 같으며, 상세 서비스 내용 및 이용 조건은 서비스별 이용약관에 따릅니다.
										<ol>
											<li>1. 휴대폰 인증보호 서비스 (월 1천원, 부가가치세 별도)</li>
										</ol>
									</li>
								</ol>
								
								<h2>제8조 (‘대체수단’의 생성 및 제공)</h2>
								<ol>
									<li>① ‘회사’는 ‘이용자’의 이동전화 가입시 수집한 주민등록번호를 토대로 ‘대체수단’을 생성하고 ‘사이트’에 제공할 수 있습니다.</li>
									<li>
										② ‘회사’의 ‘대체수단’ 생성 및 제공방법은 다음 각 호와 같습니다.
										<ol>
											<li>1. ‘이용자’의 이동전화 가입시, 제3의 ‘본인확인기관’에 실명 사용여부를 질의하고, 이에 따라 ‘대체수단’을 받아와서 저장하는 방법</li>
											<li>2. ‘이용자’의 ‘본인확인서비스’ 이용시, 제3의 ‘본인확인기관’간의 합의를 통하여 비밀번호 등 ‘대체수단’ 규격을 정한 후, 이에 따라 ‘회사’가 생성하거나 제3의 ‘본인확인기관’으로부터 제공받는 방법</li>
											<li>3. ‘이용자’의 ‘본인확인서비스’ 이용시, 해당 ‘이용자’의 이동전화가입시 ‘회사’가 제공받은 주민등록번호와 해당 ‘이용자’가 이용하고 있는 ‘사이트’의 일련번호를 제3의 ‘본인확인기관’에 제공하고, 이에 해당되는 ‘대체수단’을 받아와서 제공하는 방법</li>
										</ol>
									</li>
									<li>③ 제1항 제3호에 따라 ‘회사’가 제3의 ‘본인확인기관’으로부터 ‘대체수단’을 제공받은 경우, 해당 ‘대체수단’의 정확성 유무에 대해서는 ‘회사’가 책임지지 않습니다.</li>
								</ol>
								
								<h2>제9조 (‘본인확인서비스’ 제공시간)</h2>
								<ol>
									<li>① ‘본인확인서비스’의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기 점검 및 기타 기술상의 이유, 기타 운영상의 사유와 목적에 따라 ‘회사’가 정한 기간에 일시 중지될 수 있으며, 각 ‘사이트’의 기술상, 운영상의 사유와 목적에 따라 일시 중지될 수 있습니다.</li>
									<li>② ‘회사’는 ‘본인확인서비스’ 중지에 따라 ‘이용자’에게 별도의 보상은 하지 않습니다. 단 ‘본인확인서비스’를 이용기간에 따라 정액제 형태로 유료 판매하는 경우, 정액제 유료 ‘이용자’에게는 중지시간이 24시간을 초과한 경우에 한하여, 월 이용금액을 해당월의 날짜 수로 일할 계산하여 환불 또는 차감하며, 이용금액의 과금 당사자가 ‘회사’인 경우에는 ‘회사’가, ‘대행기관’인 경우에는 ‘대행기관’이 환불 또는 차감하여 드립니다.</li>
								</ol>
								
								<h2>제10조 (‘회사’의 권리와 의무)</h2>
								<ol>
									<li>① ‘회사’가 ‘접근매체’의 발급주체가 아닌 경우에는 ‘접근매체’의 위조·변조·누설 등으로 인해 ‘이용자’에게 발생한 손해에 대하여 배상책임이 없습니다.</li>
									<li>② ‘이용자’가 제5조 제2항 내지 제4항의 내용을 준수하지 아니하거나, ‘회사’가 부정사용 여부를 확인할 수 없는 ‘접근매체’ 또는 본인확인정보의 이용으로 인해 발생한 ‘이용자’의 손해에 대하여 ‘회사’는 배상책임이 없습니다.</li>
									<li>③ ‘회사’는 ‘본인확인서비스’ 제공과 관련하여 인지한 ‘이용자’의 본인확인정보를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 관계 법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다.</li>
									<li>④ ‘회사’는 ‘이용자’에게 안정적인 ‘본인확인서비스’ 제공을 위하여 지속적으로 관련 시스템이나 절차, 기능 등의 예방점검, 유지보수 등을 이행하며, ‘본인확인서비스’의 장애가 발생하는 경우, 이를 지체 없이 수리 및 복구합니다.</li>
									<li>⑤ ‘회사’는 복제폰, 대포폰, 휴대폰 소액대출(일명 휴대폰깡) 등 시장 질서를 교란시키는 불법행위에 의한 피해 방지를 위하여 불법행위가 의심되는 ‘이용자’ 또는 회선에 대한 ‘본인확인서비스’ 이용을 제한하거나 중지하는 것은 물론, 관계 법령에 따라 행정 및 사법기관에 수사를 의뢰할 수 있습니다.</li>
									<li>⑥ ‘회사’는 ‘회사’가 제공하는 이동전화 등 통신역무의 요금을 정상적으로 납부하지 않거나 일부 특수 요금제에 가입한 ‘이용자’에 대하여 ‘본인확인서비스’ 이용을 제한할 수 있습니다.</li>
									<li>⑦ ‘회사’는 ‘이용자’가 ‘회사’의 이동전화 등 통신역무 이용을 위해 제출한 가입신청서 또는 이와 관련된 본인확인 절차가, 명의도용, 관련 서류 위·변조 등 위법 행위가 개입된 사실을 확인하는 즉시 해당 ‘이용자’ 및 회선에 대한 ‘본인확인서비스’ 제공을 중지하며, 해당 ‘이용자’와 회선에 대해 관련 법령 및 통신역무 이용약관에 따른 조치를 취할 수 있습니다.</li>
									<li>⑧ ‘이용자’중 ‘회사’의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자에 대해서는, 개별 별정통신사업자의 본인확인절차 미비, 명의도용, 관련 서류 위·변조, 본인확인정보의 오류 등에 대해 ‘회사’는 일절 책임을 부담하지 않고, 개별 별정통신사업자가 일체의 책임을 부담합니다.</li>
								</ol>
								
								<h2>제11조 (‘이용자’의 권리와 의무)</h2>
								<ol>
									<li>① ‘이용자’는 ‘본인확인서비스’를 이용함에 있어서 다음 각 호에 해당하는 행위를 하여서는 안되며, ‘회사’는 ‘이용자’의 다음 각 호의 행위에 대해 일체의 법적 책임을 지지 않습니다.</li>
										<ol>
											<li>1. 본인이 아닌 타인의 본인확인정보를 부정하게 사용 및 도용하는 행위</li>
											<li>2. ‘회사’ 및 ‘대행기관’, ‘사이트’의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위</li>
											<li>3. 법령에 규정하는 제반 범죄 및 위법 행위</li>
											<li>4. 이 약관에 규정된 ‘이용자’의 의무 또는 준수사항을 위반하는 행위</li>
										</ol>
									<li>② ‘이용자’는 이 약관에서 규정하는 사항과 ‘본인확인서비스’에 대한 이용안내 또는 주의사항 등을 준수하여야 합니다. </li>
									<li>③ ‘이용자’는 제5조의 의무를 이행하여야 합니다.</li>
								</ol>
								
								<h2>제12조 (‘이용자’ 정보의 제공 범위)</h2>
								<ol>
									<li>① ‘회사’는 ‘본인확인서비스’를 제공함에 있어 취득한 ‘이용자’의 정보를 ‘이용자’의 동의 없이 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 않습니다.</li>
									<li>② ‘이용자’가 개인정보의 수집·이용·제공에 동의하고 이용하는 ‘사이트’ 또는 신용카드사 등 제3자가, ‘이용자’의 이동전화 번호 및 해당 ‘사이트’·신용카드사 등 제3자가 보유한 ‘대체수단’의 진실성 여부를 ‘회사’에 대해 확인할 경우, ‘회사’는 해당 이동전화 번호 및 ‘대체수단’의 진실성 여부를, 확인을 요청한 ‘사이트’ 또는 신용카드사 등 제3자에게 회신할 수 있습니다.</li>
								</ol>
								
								<h2>제13조 (‘본인확인서비스’의 안정성 확보) </h2>
								<ol>
									<li>① ‘회사’는 ‘본인확인서비스’의 안전성과 신뢰성, 보안성을 확보하기 위하여 해킹방지시스템 및 보안관리 체계 구성, 접근제한 등 기술적, 관리적 조치를 취합니다.</li>
									<li>② ‘회사’는 ‘본인확인서비스’ 관련 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖춥니다.</li>
									<li>③ ‘회사’는 해킹 침해 방지를 위하여 다음 각 호의 시스템 및 프로그램을 설치하여 운영합니다.
										<ol>
											<li>1. 침입 차단 및 탐지시스템 설치</li>
											<li>2. 그 밖에 필요한 보호장비 또는 암호프로그램 등 정보보호시스템 설치 </li>
										</ol>
									</li>
									<li>④ ‘회사’는 컴퓨터바이러스 감염을 방지하기 위하여 바이러스 방지를 위한 방어, 탐색, 복구 절차를 자체적으로 운영합니다.</li>
								</ol>
								
								<h2>제14조 (‘이용자’의 개인정보보호) </h2>
								<ol>
									<li>① ‘이용자’의 개인정보 보호는 ‘회사’가 관련 법령과 ‘회사’가 수립하여 운영하는 개인정보 취급방침 등에 따릅니다. 자세한 ‘회사’의 개인정보 수집·이용 범위 등은 이동전화 가입신청서와 ‘회사’ 대표 ‘사이트’(www.sktelecom.com)에서 제공되는 개인정보 취급방침을 참조하시기 바랍니다.</li>
									<li>② ‘이용자’중 ‘회사’의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자에 대해서는, 해당 가입자가 속한 개별 별정통신사업자가 개인정보보호 및 수집·이용·제공 등에 대한 법적 절차 준수와 관련된 일체의 책임을 부담하며, 해당 가입자에 대한 개인정보 수집·이용 범위 등은 개별 별정통신사업자의 개인정보 취급방침을 참조하시기 바랍니다.</li>
									<li>③ 제1항과 제2항의 개인정보 취급방침에서 정한 바 이외에, ‘회사’는 ‘본인확인서비스’를 위하여  다음 각 호의 경우에 ‘이용자’ 개인정보의 일부를 ‘회사’가 선정한 사업자에게 제공할 수 있습니다.
										<ol>
											<li>1. ‘이용자’의 ‘본인확인서비스’ 이용시 ‘사이트’가 필요로 하는 ‘이용자’ 식별정보(‘중복가입확인정보’, ‘대체수단’)의 생성 및 관리, 제공을 위하여 ‘이용자’의 주민등록정보를 제3의 ‘본인확인기관’에게 제공할 수 있습니다.</li>
											<li>2. ‘회사’가 수집 또는 제공받은 개인정보(‘중복가입확인정보’, ‘대체수단’)는 ‘회사’ 또는 ‘대행기관’을 통해 ‘사이트’에게 제공합니다.</li>
											<li>3. ‘본인확인서비스’를 위한 ‘회사’의 개인정보의 수집·이용·제공범위 및 개인정보의 취급을 위탁하는 수탁자와 위탁업무내용 등은 이 약관이 게시되는 화면에 별도로 링크하여 제공합니다.</li>
										</ol>
									</li>
								</ol>
								
								<h2>제15조 (약관 외 준칙) </h2>
								<p>이 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률 등 기타 관련 법령 또는 상관례에 따릅니다. </p>
								
								<h2>제16조 (관할법원)</h2>
								<ol>
									<li>① ‘본인확인서비스’ 이용과 관련하여 ‘회사’와 ‘이용자’ 사이에 분쟁이 발생한 경우, ‘회사’와 ‘이용자’는 분쟁의 해결을 위해 성실히 협의합니다.</li>
									<li>② 제1항의 협의에서도 분쟁이 해결되지 않을 경우 양 당사자는 민사소송법상의 관할 법원에 소를 제기할 수 있습니다.</li>
								</ol>
								
								<h2>부칙</h2>
								<p>(시행일) 이 약관은 공지한 날로부터 시행합니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 통신사 이용약관 동의 KT -->
								<p>[㈜케이티 이용약관] </p>
								<h2>제1조 (목적)</h2>
								<p>본 약관은 주민등록번호 대체 본인확인서비스를 제공하는 주식회사 케이티(이하 “회사”)와 이용 고객(이하 “이용자”)간에 서비스 제공에 관한 이용조건 및 절차 등 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
								
								<h2>제2조 (용어의 정의)</h2>
								<p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
								<ol>
									<li>① “본인확인서비스”라 함은 이용자가 인터넷상에서 본인명의의 휴대폰(이용자 개인 명의 휴대폰 또는 법인 명의 휴대폰으로서 이용자가 본인확인서비스에 가입한 휴대폰)을 이용하여, 주민등록번호 입력 없이도 본인임을 안전하게 식별 및 확인해 주는 서비스를 말합니다.</li>
									<li>② “간편본인확인서비스”라 함은 본인확인서비스를 이용함에 있어 입력하는 본인확인정보를 성명과 휴대폰번호로 간소화하고 “KT인증” 애플리케이션을 이용하는 방식을 의미합니다.</li>
									<li>③ “KT 인증”이라 함은 회사가 제공하는 애플리케이션(Application, 이하 ‘KT인증 앱’)으로서 이용자가 KT 인증 앱에 등록한 인증수단을 확인하는 행위(예. 비밀번호 입력, 지문인식, 화자인식 등)를 통해 이용자 본인임을 안전하게 식별 및 확인하고 단말기의 점유를 확인하는 서비스를 말합니다.</li>
									<li>④ “이용자”라 함은 회사 또는 대행기관에서 제공하는 본인확인서비스의 이용을 위해 자신의 본인확인정보를 회사, 대행기관, 본인확인기관 등에게 제공하고, 본인임을 확인 받고자 하는 자로서 다음 각호의 자를 말합니다.
										<ol>
											<li>1. 회사의 개인 명의 이동전화서비스 가입자</li>
											<li>2. 회사의 이동전화망을 이용하여 자체적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자 중 개인 명의 가입자</li>
											<li>3. 회사의 법인 명의 이동전화서비스 가입자의 휴대폰을 실제 사용하는 자로서 명의인의 법인으로부터 필요한 서류를 발급 받아 이를 회사에 제출하고 본인확인서비스에 가입한 자</li>
										</ol>
									</li>
									<li>⑤  “본인확인정보”라 함은 이용자가 입력한 생년월일, 성별, 성명, 내/외국인, 휴대폰번호, 통신사 등 본인 식별에 필요한 이용자의 정보를 말합니다.</li>
									<li>⑥ “중복가입확인정보”라 함은 웹사이트에 가입하고자 하는 이용자의 중복확인을 위해 제공되는 정보를 말 합니다.</li>
									<li>⑦ “연계정보”라 함은 인터넷사업자의 온ㆍ오프라인 서비스 연계 등의 목적으로 이용자를 식별하기 위해 제공되는 정보를 말합니다.</li>
									<li>⑧ “본인확인기관”이라 함은 주민등록번호를 사용하지 아니하고 본인을 확인하는 방법 또는 본인확인서비스를 제공 하는 자로 방송통신위원회로부터 본인확인기관으로 지정을 받은 자를 의미합니다.</li>
									<li>⑨ “대행기관”이라 함은 회사를 대신하여 본인확인서비스의 제공 및 지원 등의 중계 업무를 담당하는 곳으로 회사와 업무지원에 대한 계약이 완료되어 인터넷사업자에 본인확인서비스를 제공하는 사업체를 말합니다.</li>
									<li>⑩ “인터넷사업자”라 함은 인터넷을 이용하여 정보를 제공하거나, 정보의 제공을 매개하는 일을 업으로 하는 자로 회사 또는 대행기관과의 서비스 계약을 통해, 인터넷 웹사이트에서 이용자에 대한 본인확인정보를 제공받는 사업체를 말합니다.</li>
									<li>⑪ “접근매체”라 함은 본인확인을 함에 있어 이용자 본인확인의 진실성과 정확성을 확보하기 위하여 사용 되는 수단 또는 정보로서 회사에 등록된 이용자의 전화번호, 이용자의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등을 말합니다.</li>
								</ol>
								
								<h2>제3조 (약관의 명시 및 변경)</h2>
								<ol>
									<li>① 회사는 본 약관을 회사가 운영하는 사이트에 게시하거나 본인확인서비스 이용시 이용자가 내용을 확인할 수 있도록 공개합니다.</li>
									<li>② 회사는 약관의 규제에 관한 법률 및 기타 관련 법령에 위배되지 않는 범위에서 본 약관의 내용을 개정 할 수 있으며, 변경된 경우에는 회사가 운영하는 사이트에서 공지합니다. 다만 “이용자”의 권리와 의무에 관한 중요한 사항은 변경된 내용의 시행 15일 이전에 공지합니다.</li>
									<li>③ 이용자는 개정된 약관 사항에 동의하지 않을 권리가 있으며, 개정된 약관에 동의하지 않는 경우, 본 서비스의 이용을 중단하고 이용 계약을 해지할 수 있습니다. 이용자가 회사의 전항 단서에 따른 약관의 불리한 변경에 대하여 적용예정일까지 회사에게 부동의 의사를 표시하지 않거나 이용계약을 해지하지 않은 경우 변경된 약관을 승인한 것으로 봅니다.</li>
									<li>④ 이용자가 변경된 약관에 대한 내용을 알지 못하여 발생하는 손해 및 피해에 대해서는 회사가 책임을 지지 않습니다.</li>
								</ol>
								
								<h2>제4조 (접근매체의 관리 등)</h2>
								<ol>
									<li>⑤ 회사는 서비스 제공 시 접근매체를 이용하여 이용자의 신원, 권한 및 거래지시의 내용 등을 확인 할 수 있습니다.</li>
									<li>⑥ 이용자는 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공할 수 없습니다.</li>
									<li>⑦ 이용자는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근매체의 도용 이나 위조 또는 변조를 방지하기 위해 충분한 주의를 기울여야 합니다.</li>
									<li>⑧ 회사가 접근매체의 발급주체가 아닌 경우에는 접근매체의 위조나 변조로 발생한 사고로 인하여 이용자에게 발생한 손해에 대하여 배상책임이 없습니다.</li>
								</ol>
								
								<h2>제5조 (본인확인서비스 안내)</h2>
								<ol>
									<li>① 본인확인서비스는 이용자가 주민등록번호의 입력 없이, 본인명의로 된 개통된 휴대폰정보(이용자 개인 명의로 개통된 휴대폰 정보 또는 법인 명의로 개통된 휴대폰으로서 이용자가 본인확인서비스에 가입한 정보)를 이용하여 본인 식별 또는 본인 확인이 가능한 생년월일 기반의 주민등록번호 대체 휴대폰인증 서비스 입니다.</li>
									<li>② 회사는 대행기관을 통해 인터넷사업자에게 본인확인서비스를 제공하며, 인터넷사업자는 회원가입, ID/PW 찾기, 성인인증, 기타 본인확인이 필요한 경우 이용자에게 본인확인서비스를 제공 합니다.</li>
									<li>③ 이용자는 자신의 생년월일, 성명, 성별, 내/외국인, 휴대폰번호, 통신사 등의 정보를 입력하며(법인 명의로 개통된 휴대폰으로서 이용자가 본인확인서비스에 가입한 경우에는 본인확인서비스 가입 시 등록한 비밀번호를 추가로 입력하며), 입력한 정보가 일치한 경우에는 해당 휴대폰번호로 수신된 1회성 비밀번호(승인번호)를 정확하게 입력하는 것으로 본인 식별 또는 본인 확인이 이루어집니다. 단, 이용자가 간편본인확인서비스를 선택한 경우에는 자신의 통신사, 휴대폰번호, 이름만 입력하며, 입력한 정보가 일치한 경우에 해당 휴대폰에 설치 및 가입된 KT 인증 앱을 통해 이용자가 사전에 등록해둔 인증수단(비밀번호, 지문, 화자 정보 등)을 정확하게 입력하는 것으로 본인 식별 또는 본인 확인이 이루어집니다. 이 때, KT 인증 앱에 미 가입된 상태로 간편본인확인서비스 이용을 시도하는 경우 회사는 영속적인 서비스 제공을 위해 해당 이용자에게 KT 인증 앱 설치를 안내합니다(24시간 내 1회).</li>
									<li>④ 본인확인서비스는 본인 명의로 개통된 휴대폰 정보(이용자 개인 명의로 개통된 휴대폰 정보 또는 법인 명의로 개통된 휴대폰으로서 이용자가 본인확인서비스에 가입한 정보)로 본인확인이 이루어집니다. 단, 휴대폰 일시정지 또는 이용정지 시 해당 정지기간 동안에는 본인확인서비스도 정지됩니다. </li>
									<li>⑤ 본인 확인이 완료 된 이용자에 대해서는 본인확인정보와 중복가입확인정보 및 연계정보가 인터넷사업 자에게 제공되며, 인터넷사업자는 중복가입확인정보 또는 연계정보 등을 이용하여 이용자 관리 및 컨텐츠를 제공ㆍ운영 합니다.</li>
								</ol>
								
								<h2>제6조 (본인확인서비스 제공시간)</h2>
								<ol>
									<li>① 본인확인서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기 점검 및 기타 기술상의 이유로 본인확인서비스가 일시 중지될 수 있고 또한, 운영상의 목적으로 회사가 정한 기간에도 일시 중지될 수 있습니다.</li>
									<li>② 회사는 효율적인 업무 수행을 위하여 필요하다고 판단하는 경우 본인확인서비스를 일정 범위로 분할하여 각 범위 별로 이용가능 시간을 달리 정할 수 있으며, 이 경우 그 내용을 공지 합니다.</li>
								</ol>
								
								<h2>제7조 (회사의 권리와 의무)</h2>
								<ol>
									<li>① 회사는 이용자가 본인확인서비스 이용시 본 이용약관이나 안내사항 등을 확인하지 않아 발생한 손해, 또는 접근매체를 통해 알 수 있었음에도 불구하고, 이용자가 자신의 접근매체를 누설 또는 노출하거나 방치한 손해 등 이용자의 부주의에 기인한 손해에 대하여 배상책임이 없습니다.</li>
									<li>② 회사는 본인확인서비스 제공과 관련하여 인지한 이용자의 본인확인정보를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 기타 관계 법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다.</li>
									<li>③ 회사는 이용자에게 안정적인 본인확인서비스 제공을 위하여 지속적으로 본인확인서비스의 예방점검, 유지보수 등을 이행하며, 본인확인서비스의 장애가 발생하는 경우, 이를 지체 없이 수리 및 복구합니다.</li>
									<li>④ 회사는 아래와 같은 사유가 발생하는 경우 이용자에 대하여 본인확인서비스를 제한할 수 있습니다.
										<ol>
											<li>1. 다른 사람의 명의사용 등 이용자 등록 시 허위로 신청하는 경우</li>
											<li>2. 이용자 등록 사항을 누락하거나 오기하여 신청하는 경우</li>
											<li>3. 대포폰(이동전화 서비스 본래의 목적과는 달리 불법대출 등 부정사용을 목적으로 타인 명의 무단 개통 또는 명의자를 교사하여 개통하는 휴대전화)을 이용하는 경우</li>
											<li>4. 타인의 명의를 도용한 사실이 있거나 명의 도용을 이유로 처벌받은 경우</li>
											<li>5. 불법 복제와 관련된 사실이 있거나 처벌 받은 경우</li>
											<li>6. 기타 시장질서를 교란시키는 불법행위에 해당하는 경우</li>
										</ol>
									</li>
									<li>⑤ 회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 중지할 수 있습니다. 회사는 회사의 고의 또는 과실이 없는 한 이로 인하여 발생한 손해에 대하여 배상책임이 없습니다.
										<ol>
											<li>1. 컴퓨터 등 정보통신설비의 보수점검 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우</li>
											<li>2. 서비스를 위한 설비의 보수 등 공사로 인해 부득이한 경우</li>
											<li>3. 서비스 업그레이드 및 시스템 유지보수 등을 위해 필요한 경우</li>
											<li>4. 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우</li>
											<li>5. 이용자가 회사의 본인확인서비스 운영을 방해하는 경우</li>
											<li>6. 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우</li>
											<li>7. 규제기관이 마련한 본인확인서비스 가이드를 준수하지 않고 임의로 변형 적용한 사이트에서 본인확인서비스를 요청하는 경우</li>
										</ol>
									</li>
									<li>⑥ 전 항에 의하여 본인확인서비스를 중지하는 경우에는 회사가 이를 공지합니다. 다만, 회사가 통제할 수 없는 사유로 인한 본 서비스의 중단(회사 또는 운영자의 고의 및 과실이 없는 디스크 장애, 시스템 다운 등)으로 인하여 사전 공지가 불가능한 경우에는 그러하지 아니합니다.</li>
									<li>⑦ 이용자 중 회사의 이동전화망을 이용하여 자체적으로 이동전화서비스를 제공하는 별정통신사업자의 개인 명의 가입자에 대하여는 해당 별정통신사업자의 본인확인절차 미비, 명의도용, 관련 서류 위◦변조, 본인확인정보의 오류 등에 대해 회사는 일체 책임을 부담하지 않고 해당 별정통신사업자가 일체의 책임을 부담합니다. </li>
								</ol>
								
								<h2>제8조 (이용자의 의무)</h2>
								<ol>
									<li>① 이용자는 본인확인서비스를 이용함에 있어서 다음 각호에 해당하는 행위를 하여서는 안되며, 회사는 위반 행위에 따르는 일체의 법적 책임을 지지 않습니다.
										<ol>
											<li>1. 타 이용자의 본인확인정보를 부정하게 사용 및 도용하는 행위</li>
											<li>2. 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위</li>
											<li>3. 범죄 행위</li>
											<li>4. 기타 관련 법령에 위배되는 행위</li>
										</ol>
									</li>
									<li>② 이용자는 본 약관에서 규정하는 사항과 본인확인서비스에 대한 이용안내 또는 주의사항 등을 준수하여야 합니다.</li>
								</ol>
								
								<h2>제9조 (본인확인정보의 제공금지)</h2>
								<p>회사는 서비스를 제공함에 있어 취득한 이용자의 정보 또는 자료를 이용자의 동의 없이 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 않습니다.</p>
								
								<h2>제10조 (본인확인서비스의 안정성 확보)</h2>
								<ol>
									<li>① 회사는 본인확인서비스의 안전성과 신뢰성을 확보하기 위하여 업무처리지침의 제정 및 시행, 정보 처리시스템 및 전산자료의 관리 등의 관리적 조치와 모니터링 체계 및 해킹방지시스템 구축 및 운영 등의 기술적 조치를 취해야 합니다.</li>
									<li>② 회사는 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖추어야 합니다.</li>
									<li>③ “회사”는 해킹 침해 방지를 위하여 정보보호시스템 및 프로그램을 설치하여 운영합니다.</li>
									<li>④ “회사”는 컴퓨터바이러스 감염을 방지하기 위하여 다음 각 호를 포함한 대책을 수립, 운영하고 있습니다.
										<ol>
											<li>1. 출처, 유통경로 및 제작자가 명확하지 아니한 응용프로그램은 사용을 자제하고 불가피할 경우에는 컴퓨터바이러스 검색프로그램으로 진단 및 치료 후 사용할 것</li>
											<li>2. 컴퓨터바이러스 검색, 치료 프로그램을 설치하고 최신 버전을 유지할 것</li>
											<li>3. 컴퓨터바이러스 감염에 대비하여 방어, 탐색 및 복구 절차를 마련할 것</li>
										</ol>
									</li>
								<ol>
								
								
								<h2>제11조 (이용자의 개인정보보호)</h2>
								<p>회사는 관련법령이 정하는 방에 따라서 이용자의 개인정보를 보호하기 위하여 노력하며, 이용자의 개인정보에 관한 사항은 관련 법령 및 회사가 정하는 개인정보취급방침에 정한 바에 따릅니다.</p>
								
								<h2>제12조 (개인정보의 처리)</h2>
								<ol>
									<li>① 회사는 수집된 개인정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 회사가 선정한 사업자에게 위탁할 수 있습니다.</li>
									<li>② 본인확인서비스 이용 시 이용자의 개인정보 수집 및 이용 동의에 따라 인터넷사업자가 필요로 하는 이용자 식별정보(중복가입확인정보, 연계정보)의 생성 및 제공을 위하여 관련 정보를 타 본인확인기관에게 제공할 수 있으며, 수집된 식별정보(중복가입확인정보, 연계정보)는 본인 식별 및 확인 위한 목적으로 회사 또는 대행기관을 통해 인터넷사업자에게 제공할 수 있습니다.</li>
									<li>③ 개인정보 처리 및 위탁 등에 관한 사항은 관련법령 및 회사가 정하는 개인정보취급방침에 정한 바에 따릅니다.</li>
								</ol>
								
								<h2>제13조 (약관 외 준칙)</h2>
								<p>본 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률, 개인정 보보호법 등 기타 관련법령 또는 상관례에 따릅니다.</p>
								
								<h2>부칙</h2>
								<p>(시행일) 이 약관은 공시한 날로부터 시행합니다.</p>
								
								<h2>부칙</h2>
								<p>(시행일) 이 약관은 2015년 4월 29일부터 시행합니다. </p>
								
								<h2>부칙</h2>
								<p>(시행일) 이 약관은 2016년 8월 2일부터 시행합니다. </p>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont on" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 통신사 이용약관 동의 LG -->
								<p>[LG유플러스(주) 이용약관]</p>
								<h2>제 1조 (목적)</h2>
								<p>본 약관은 주민번호를 대체한 휴대폰 본인확인서비스(이하 “서비스”)를 제공하는 LG유플러스(이하 “회사”)와 이용 고객(이하 “이용자”)간에 서비스 제공에 관한 이용조건 및 절차 등 기타 필요한 사항을 정함을 목적으로 합니다.</p>
								
								<h2>제 2조 (용어의 정리)</h2>
								<p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
								<ol>
									<li>1. “휴대폰 본인확인서비스”라 함은 이용자가 인터넷상에서 본인 명의의 휴대폰을 이용하여 주민번호를 입력하지 않고 본인임을 안전하게 식별 및 확인하는 방법을 제공하는 서비스를 말합니다.</li>
									<li>2. “이용자”라 함은 서비스의 이용을 위해 자신의 본인확인정보를 회사, 인증대행사 및 타 본인확인기관 등에게 제공하고, 본인임을 확인 받고자 하는 자를 말합니다. </li>
									<li>3. “본인확인정보”라 함은 이용자가 입력한 생년월일, 성별, 성명, 내/외국인, 휴대폰번호, 통신사 등 본인 식별에 필요한 이용자의 정보를 말합니다. </li>
									<li>4. “접근매체”라 함은 모바일 통신 단말기(피쳐폰, 스마트폰)를 지칭한다.</li>
									<li>5. “중복가입확인정보(DI)”라 함은 웹사이트에 가입하고자 하는 이용자의 중복확인을 위해 제공되는 정보를 말합니다.</li>
									<li>6. “연계정보(CI)”라 함은 인터넷사업자의 온ㆍ오프라인 서비스 연계 등의 목적으로 이용자를 식별하기 위해 제공되는 정보를 말합니다.</li>
									<li>7. “본인확인기관”이라 함은 주민등록번호를 사용하지 아니하고 본인을 확인하는 방법 또는 서비스를 제공하는 자로 방송통신위원회로부터 본인확인기관으로 지정을 받은 자를 의미합니다.</li>
									<li>8. “인증대행사”이라 함은 회사를 대신하여 서비스의 제공 및 지원 등의 중계 업무를 담당하는 곳으로 회사와 업무지원에 대한 계약이 완료되어 인터넷사업자에게 서비스를 제공하는 사업자를 말합니다.</li>
									<li>9. “인터넷사업자”라 함은 인터넷을 이용하여 정보를 제공하거나, 정보의 제공을 매개하는 일을 업으로 하는 자로 회사 또는 인증 대행사와의 서비스 계약을 통해 운영하며, 인터넷 웹사이트의 이용자에 대한 본인확인정보를 제공받는 사업자를 말합니다.</li>
								</ol>
								
								<h2>제 3조 (약관의 효력 및 변경)</h2>
								<ol>
									<li>1. 본 약관은 이용자에게 서비스 화면에 게시하거나, 회사 홈페이지(www.uplus.co.kr)에 게시하여 공지함으로써 효력이 발생합니다. </li>
									<li>2. 회사는 약관의 규제에 관한 법률 및 기타 관련 법령에 위배되지 않는 범위에서 본 약관의 내용을 개정할 수 있으며, 변경된 경우에는 제1항과 같은 방법으로 공지합니다. 다만 “이용자”의 권리와 의무에 관한 중요한 사항은 변경된 내용의 시행 15일 이전에 공지합니다. </li>
									<li>3. 이용자는 변경된 약관에 대한 내용을 알지 못하여 발생하는 손해 및 피해에 대해서는 회사가 책임을 지지 않습니다.</li>
								</ol>
								
								<h2>제 4조 (접근매체의 관리 등)</h2>
								<ol>
									<li>1. 이용자는 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공할 수 없습니다. </li>
									<li>2. 이용자는 자신의 접근매체를 제3자에게 제공 또는 노출하거나 방치하여서는 안되며, 접근매체의 도용이나 위·변조를 방지하기 위해 충분한 주의를 기울여야 합니다.</li>
								</ol>
								
								<h2>제 5조 (서비스 이용방법)</h2>
								<ol>
									<li>1. 서비스는 이용자가 주민등록번호를 입력하지 아니하고 본인의 생년월일과 본인 명의로 된 휴대폰정보를 이용하여 본인 식별 또는 본인 확인이 가능하도록 하는 휴대폰인증 서비스 입니다.</li>
									<li>2. 회사는 인증대행사를 통해 인터넷사업자에게 서비스를 제공하며, 인터넷사업자는 회원가입, ID/PW찾기, 성인인증 등 이용자의 본인확인이 필요한 경우 이용자에게 서비스를 제공 합니다.</li>
									<li>3. 제2항의 경우 이용자가 자신의 생년월일, 성명, 성별, 내/외국인, 휴대폰번호, 통신사 등의 정보를 입력한 후 입력한 정보가 이용자 본인의 정보와 일치한 경우에는 이용자 본인 명의의 휴대폰번호로 수신된 1회성 비밀번호(이하 “승인번호”)를 정확하게 입력하면 본인 식별 또는 본인 확인이 이루어 집니다.</li>
									<li>4. 제3항과 같이 본인확인이 완료 된 이용자에 대해서는 본인확인정보와 중복가입확인정보 및 연계정보가 인터넷사업자에게 제공되며, 인터넷사업자가 중복가입확인정보 또는 연계정보 등을 이용하여 이용자 관리 및 컨텐츠를 제공 운영 합니다.</li>
								</ol>
								
								<h2>제 6조 (서비스 제공시간)</h2>
								<ol>
									<li>1. 회사는 연중무휴 1일 24시간 서비스를 제공함을 원칙으로 합니다. 다만, 회사는 서비스 설비의 장애, 서비스 이용의 폭주 등 기술상의 이유로 서비스를 일시 정지할 수 있고, 서비스 설비 정기 점검 등 운영상의 목적으로 시간을 정하고 공지한 후 서비스를 일시 정지할 수 있습니다.</li>
								</ol>
								
								<h2>제 7조 (회사의 권리와 의무)</h2>
								<ol>
									<li>1. 회사가 접근매체의 발급주체가 아닌 경우에는 접근매체의 위조나 변조로 발생한 사고로 인하여 이용자에게 발생한 손해에 대하여 배상책임이 없습니다.</li>
									<li>2. 회사는 이용자가 서비스 이용약관이나 안내사항 등을 확인하지 않아 발생한 손해, 이용자에게 책임있는 사유로 접근매체를 누설 또는 노출하거나 방치한 손해 등 이용자의 부주의에 기인한 손해에 대하여 배상책임이 없습니다.</li>
									<li>3. 회사는 서비스 제공시 접근매체를 이용하여 이용자의 신원, 권한 및 거래지시의 내용 등을 확인할 수 있습니다.</li>
									<li>4. 회사는 서비스 제공과 관련하여 인지한 이용자의 본인확인정보를 본인의 승낙 없이 제3자에게 누설하거나 제공하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 기타 관계 법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다.</li>
									<li>5. 회사는 이용자에게 안정적으로 서비스를 제공하기 위하여 지속적으로 서비스의 예방점검, 유지보수 등을 이행하며 서비스 장애가 발생하는 경우 지체없이 서비스를 복구합니다.</li>
									<li>6. 회사는 복제폰, 대포폰, 불법 휴대폰 대출(일명 휴대폰깡) 등 시장질서를 교란시키는 불법행위로 의한 피해를 방지하기 위하여 사전통지 없이 서비스를 제한하거나 중지할 수 있습니다.</li>
								</ol>
								
								<h2>제 8조 (이용자의 의무)</h2>
								<ol>
									<li>1. 이용자는 서비스를 이용함에 있어서 다음 각호에 해당하는 행위를 하여서는 안되며, 회사는 위반 행위에 따르는 일체의 법적 책임을 지지 않습니다.
										<ol>
											<li>1) 타 이용자의 본인확인정보 및 승인번호를 부정하게 사용 및 도용하는 행위</li>
											<li>2) 회사 또는 제3자의 지식재산권 등 기타 권리를 침해하는 행위</li>
											<li>3) 범죄 행위 및 범죄적 행위와 관련있는 행위</li>
											<li>4) 관련 법령에 위배되는 행위</li>
											<li>5) 기타 서비스의 정상적 운영, 유지 등을 방해하거나 지연시키는 행위</li>
										</ol>
									</li>
									<li>2. 이용자는 본 약관에서 규정하는 사항과 서비스에 대한 이용안내 또는 주의사항 등을 준수하여야 합니다.</li>
									<li>3. 이용자가 본 약관을 위반하여 회사에 손해가 발생한 경우에는 이용자가 모든 손해를 배상하여야 합니다.</li>
								</ol>
								
								<h2>제 9조 (본인인증 정보의 제공금지)</h2>
								<p>회사는 서비스를 제공함에 있어 취득한 이용자의 정보 또는 자료를 이용자의 동의 없이 제3자에게 제공, 누설하거나 서비스 목적 외에 사용하지 않습니다.</p>
								
								<h2>제 10조 (서비스의 안정성 확보)</h2>
								<ol>
									<li>1. 회사는 서비스의 안전성과 신뢰성을 확보하기 위하여 업무처리지침의 제정 및 시행, 정보 처리시스템 및 전산자료의 관리 등의 관리적 조치와 모니터링 체계 및 해킹방지시스템 구축 및 운영 등의 기술적 조치를 취해야 합니다. </li>
									<li>2. 회사는 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖추어야 합니다.</li>
									<li>3. “회사”는 해킹 침해 방지를 위하여 다음 각 호의 시스템 및 프로그램을 설치하여 운영합니다.
										<ol>
											<li>1) 침입차단시스템 설치</li>
											<li>2) 침입탐지시스템 설치</li>
											<li>3) 그 밖에 필요한 보호장비 또는 암호프로그램 등 정보보호시스템 설치</li>
										</ol>
									</li>
									<li>4. “회사”는 컴퓨터바이러스 감염을 방지하기 위하여 다음 각 호를 포함한 대책을 수립, 운영하고 있습니다.
										<ol>
											<li>1) 출처, 유통경로 및 제작자가 명확하지 아니한 응용프로그램은 사용을 자제하고 불가피할 경우에는 컴퓨터바이러스 검색프로그램으로 진단 및 치료 후 사용할 것</li>
											<li>2) 컴퓨터바이러스 검색, 치료 프로그램을 설치하고 최신 버전을 유지할 것</li>
											<li>3) 컴퓨터바이러스 감염에 대비하여 방어, 탐색 및 복구 절차를 마련할 것</li>
										</ol>
									</li>
								</ol>
								
								<h2>제 11조 (이용자의 개인정보보호)</h2>
								<p>회사는 관련법령이 정하는 방에 따라서 이용자의 개인정보를 보호하기 위하여 노력하며, 이용자의 개인정보에 관한 사항은 관련 법령 및 회사가 정하는 개인정보취급방침에 정한 바에 따릅니다.</p>
								
								<h2>제 12조 (개인정보의 처리)</h2>
								<ol>
									<li>1. 회사는 서비스 제공을 위하여 수집된 본인확인정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 아래 표와 같이 회사가 선정한 사업자에게 위탁할 수 있습니다.
										<ol>
											<li>[개인정보의 취급 위탁]</li>
											<li>수탁자 위탁업무내용</li>
											<li>서울신용평가정보(주) 본인확인정보의 처리, 본인확인 업무대행</li>
											<li>한국모바일인증(주) 본인확인 업무대행</li>
											<li>코리아크레딧뷰로(주) 본인확인정보의 처리, 본인확인 업무대행</li>
											<li>NICE평가정보(주) 본인확인 업무대행</li>
											<li>(주)다날 본인확인 업무대행</li>
											<li>(주)한국사이버결제 본인확인 업무대행</li>
											<li>(주)인포허브 본인확인 업무대행</li>
											<li>(주)드림시큐리티 본인확인 업무대행</li>
											<li>(주)KG모빌리언스 본인확인 업무대행</li>
											<li>(주)LG U+ 본인확인 업무대행</li>
										</ol>
									</li>
									<li>2. 회사는 서비스 제공시 인터넷사업자가 필요로 하는 이용자 식별정보(중복가입확인정보, 연계정보)의 생성 및 제공을 위하여 아래 표와 같이 다른 본인확인기관에게 본인확인정보를 제공할 수 있으며, 수집된 식별정보(중복가입확인정보, 연계정보)는 본인 식별 및 확인 위한 목적으로 회사 또는 인증 대행사를 통해 인터넷사업자에게 제공할 수 있습니다.
										<ol>
											<li>[개인정보의 이용 및 제3자 제공]</li>
											<li>제공 받는자 제공목적 제공정보</li>
											<li>서울신용평가정보(주) 휴대폰 본인확인(이용 고객에 한함) 서비스 이용</li>
											<li>※ 중복가입확인정보(DI), 연계정보(CI)의 생성 및 제공 주민등록번호</li>
											<li>코리아크레딧뷰로(주) 휴대폰 본인확인(이용 고객에 한함) 서비스 이용</li>
											<li>※ 중복가입확인정보(DI), 연계정보(CI)의 생성 및 제공 주민등록번호</li>
										</ol>
									</li>
									<li>3. 개인정보 처리 및 위탁 등에 관한 사항은 관련법령 및 회사가 정하는 개인정보취급방침에 정한 바에 따릅니다.</li>
								</ol>
								
								<h2>제 13조 (약관 외 준칙)</h2>
								<p>본 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률 등 기타 관련 법령 또는 상관례에 따릅니다.</p>
								
								<h2>부칙</h2>
								<p>(시행일) 이 약관은 공시한 날로부터 시행합니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="popJoin5" class="layer-popup popTermsEt E5 inlayer">
	<section class="layer-popup-cont" tabindex="0">
		<h2>개인정보 제 3자 제공동의 </h2>
		<div class="layer-cont">
			
			<div class="d_tab02 tab_box">
				<ul class="tab-type01">
					<li class="d_tab02_select"><a href="javascript:;">KT</a></li>
					<li class="d_tab02_select"><a href="javascript:;">LG U+</a></li>
				</ul>
				<div class="d_tab02_cont" style="display: block;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 개인정보 제 3자 제공동의 KT -->
								<p>"알뜰폰(MVNO)"사업자는 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.</p>
								
								<h2>제1조 (알뜰폰(MVNO) 사업자)</h2>
								<p>(주)케이티의 알뜰폰(MVNO) 사업자는 (주)CJ헬로비전(헬로모바일), KT파워텔(주)(더블비), 홈플러스(주)(플러스모바일), (주)씨엔커뮤니케이션(WMVNO), (주)에넥스텔레콤(WHOM), (주)에스원(안심폰), (주)위너스텔(Well), 에이씨앤코리아(Flash모바일), (주)세종텔레콤(스노우맨), (주)KT텔레캅(KT텔레캅), (주)프리텔레콤(freeT), (주)EG모바일(EG제로), (주)KT M모바일(M모바일), (주)앤알커뮤니케이션(앤텔레콤), (주)아이즈비전(아이즈모바일), (주)제이씨티(제이씨티), (주)머천드코리아(마이월드), 장성모바일(장성모바일), (주)유니컴즈(Mobing), 아이원(아이플러스유), (주)파인디지털, (주)미니게이트, (주)핀플레이, 드림라인(주) 입니다.</p>
								
								<h2>제2조 (제공목적)</h2>
								<p><u>본 동의는 본인확인서비스를 제공하기 위하여 본인확인기관인 (주)케이티와 본인확인서비스 이용자간 본인확인서비스 이용에 필요한 고객정보를 위탁하여 본인확인서비스를 제공 하는 것에 대해 동의합니다.</u></p>
								
								<h2>제3조 (제공정보)</h2>
								<p>휴대폰 본인확인서비스 제공에 필요한 개인정보로 성명, 휴대폰번호, 생년월일, 내·외국인구분, 성별 정보입니다. </p>
								
								<h2>제4조 (제공받는자)</h2>
								<p><u>(주)케이티</u> </p>
								
								<h2>제5조 (제공기간)</h2>
								<p><u>이동통신사에서 보유중인 정보로서 별도 이용기간은 없습니다.</u> </p>
								<p>&nbsp;</p>
								<p>"본인"은 정보제공에 동의하지 않으실 수 있으며, 동의하지 않으실 경우 휴대폰 본인확인서비스를 이용 하실 수 없습니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="d_tab02_cont on" style="display: none;">
					<div class="termsBox">
						<div class="ctn">
							<div class="agree-section-content">
								<!-- 개인정보 제 3자 제공동의 LG -->
								<p>"알뜰폰(MVNO)"사업자는 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.</p>
								
								<h2>제1조 (알뜰폰(MVNO) 사업자)</h2>
								<p>엘지유플러스의 알뜰폰(MVNO) 사업자는 인스코비(프리티), 머천드코리아(마이월드), (주)엠티티텔레콤(메리큐), 홈플러스(주), (주)알뜰폰, (주)미디어로그, 이마트, 서경방송, 울산방송, 푸른방송, 남인천방송, 금강방송, 제주방송, (주)와이엘랜드(여유텔레콤), ACN코리아(플래시모바일) 입니다.</p>
								
								<h2>제2조 (제공목적)</h2>
								<p><u>본 동의는 본인확인 서비스를 제공하기 위하여 본인확인기관인 (주)엘지유플러스와 본인확인서비스 이용자간 본인확인서비스 이용에 필요한 고객정보를 위탁하여 본인확인서비스를 제공 하는 것에 대해 동의합니다.</u></p>
								
								<h2>제3조 (제공정보)</h2>
								<p>휴대폰 본인확인 서비스 제공에 필요한 개인정보로 성명, 휴대폰번호, 생년월일, 내.외국인구분, 성별 정보입니다. </p>
								
								<h2>제4조 (제공받는자)</h2>
								<p><u>(주)엘지유플러스</u> </p>
								
								<h2>제5조 (제공기간)</h2>
								<p><u>이동통신사에서 보유중인 정보로서 별도 이용기간은 없습니다.</u> </p>
								<p>&nbsp;</p>
								<p>"본인"은 정보제공에 동의하지 않으실 수 있으며, 동의하지 않으실 경우 휴대폰 본인 확인 서비스를 이용 하실 수 없습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="popTermsAgree" class="layer-popup popTermsAgree inlayer">
	<section class="layer-popup-cont" tabindex="0">
		<h2>약관동의</h2>
		<div class="layer-cont scroll">
			<div class="top_info">
				<ul class="text-list02 col-type01 list">
					<li>2011년 2월 19일 부터 F&F의 모든 패밀리 브랜드가 통합회원제를 실시함에 따라, 본 사이트에서 회원가입을 하시면 F&F의 통합회원이 됩니다.</li>
					<li>F&F의 통합회원이 되시면 동일한 ID와 비밀번호로 F&F 패밀리 브랜드 웹사이트의 다양한 서비스를 안전하고 편리하게 이용하실 수 있습니다.</li>
					<li>서비스 이용약관, 개인정보 수집 및 이용동의를 읽고 동의 후에 회원가입을 하실 수 있습니다.</li>
					<li>회원님의 정보는 당사의 기술적/관리적 보호조치에 의해 철저히 보호됩니다.</li>
				</ul>
			</div>
			<div class="termsBox">
				<div class="hdt">서비스 이용 약관 (필수)</div>
				<div class="ctn">
					<div class="agree-section-content" id="popTermsAgreeCon1">
					</div>
				</div>
				<div class="hdt">개인정보 수집 및 이용 약관 (필수)</div>
				<div class="ctn">
					<div class="agree-section-content" id="popTermsAgreeCon2">
					</div>
				</div>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>
<input type="hidden" id="tmpId" name="tmpId" value="" />
<input type="hidden" id="chkNum" name="chkNum" value="" />
<input type="hidden" id="certNumGubnGubn" name="certNumGubnGubn" value="" />
<input type="hidden" id="certNum" name="certNum" value=""/>
<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript">
$(document).ready(function(){
	var val = "${userVo}";
	var name = "${userVo.user_name}";
	var logintype = "${logintype}";
	
	if(logintype == 'kakao'){
		var gender = "${userVo.user_gender}";
	}
	var eId = "${userVo.email_id}";
	var eAdd = "${userVo.email_address}";
	
	if(name != "" && name != null){
		$('#user_name').val(name);
		
		if(logintype == 'kakao'){
			if(gender == 'male'){
				$('#male').attr("checked", true);
			} else {
				$('#female').attr("checked", true);
			}
		}
		$('#email_id').val(eId);
		$('#email_address').val(eAdd);
	}
	
	$("#mobileSkt").on('click',function(){
		mobileCarrier('skt');
	});
	$("#mobileKt").on('click',function(){
		mobileCarrier('kt');		
	});
	$("#mobileLg").on('click',function(){
		mobileCarrier('lg');
	});
	
	$('#user_jumin1').keyup(function(event){ //주민번호 앞자리 숫자만 오게 셋팅
		var inputVal = $(this).val();
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
	});
	
	$('#user_jumin2').keyup(function(event){ //주민번호 뒷자리 숫자만 오게 셋팅
		var inputVal = $(this).val();
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
	});
	
	$('#phone1').keyup(function(event){ //전화번호 앞자리 숫자만 오게 셋팅
		var inputVal = $(this).val();
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
	});
	
	$('#phone2').keyup(function(event){ //전화번호 중자리 숫자만 오게 셋팅
		var inputVal = $(this).val();
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
	});
	
	$('#phone3').keyup(function(event){ //전화번호 뒷자리 숫자만 오게 셋팅
		var inputVal = $(this).val();
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
	});
	
	$('#user_name').keyup(function(event){
		 re = /[~!@\#$%^&*\()\-=+_']/gi;
		 re2 = /[0-9]/gi;
		 
		 var temp=$("#user_name").val();
		 
		 if(re.test(temp)){ //이름에 특수문자가 포함되면 삭제하여 값으로 다시셋팅
		 	$("#user_name").val(temp.replace(re,""));
		 	return;
		 } else if(re2.test(temp)){ //이름에 숫자가 오게 되면 삭제하여 값으로 다시 셋팅
			$("#user_name").val(temp.replace(re2,""));
			return;
		 }
	});
	
	$("#user_id").keyup(function(){
		 re = /[~!@\#$%^&*\()\-=+_']/gi; 
		 var temp=$("#user_id").val();
		 if(re.test(temp)){ //아이디 특수문자가 포함되면 삭제하여 값으로 다시셋팅
		 $("#user_id").val(temp.replace(re,"")); 
		} 
	});
	
	$("#email_id").keyup(function(){
		 re = /[~!@\#$%^&*\()\-=+_']/gi; 
		 var temp=$("#email_id").val();
		 if(re.test(temp)){ //이메일 특수문자가 포함되면 삭제하여 값으로 다시셋팅
		 $("#email_id").val(temp.replace(re,"")); 
		} 
	});
	
	//중복검사
	$('#id_chk').click(()=>{
		var userId = $('#user_id').val();
		if(userId == ""){
			alert("아이디를 입력하세요");
			return;
		}
		
		$.ajax({
			type:'POST',
			url:'/test/overlapChkId.do',
			data: { user_id : userId },
			dataType: 'json',
			success:function(data){
				var chkNum = data.chkNum;
				if(chkNum == 1){
					alert("존재하는 아이디 입니다. 아이디를 입력해주세요");
					$('#chkNum').val(chkNum);
					$('#user_id').focus();
				} else if(chkNum == 0){
					alert("사용가능한 아이디입니다");
					$('#chkNum').val(chkNum);
					$('#tmpId').val(userId);
				}
			},
			error:function(request,status,error){
		      alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		    }
		});
	});
	
	//회원가입버튼
	$('#confirmJoinBtn').on('click',function(){
		var trueNfalse = validation('1'); //밸리데이션
		if(!trueNfalse){
			return;
		}
		
		$('#userInfoForm').submit();
	});
	
	$('#certChkNumBtn').click(()=>{
		var certNum = $('#certNum').val();
		
		var certChkNum = $('#certChkNum').val();
		if(certChkNum == ""){
			alert('인증번호를 입력해주세요');
			$('#certChkNum').focus();
			return;
		} else if(certChkNum != certNum){
			alert("인증번호가 맞지 않습니다");
			$('#certChkNum').focus();
			return;
		} else if(certChkNum == certNum){
			$('#certNumGubn').val('success');
			alert("본인인증을 성공하셨습니다");
			return;
		}
		
	});
	
	
	//본인인증 클릭이벤트
	$('#certConfirmBtn').on('click',function(){
		var certAgreeYn = document.getElementById('certAgreeYn').checked;
		
		if(!certAgreeYn){
			alert('본인인증을 위한 약관 모두 동의에 체크 해주세요');
			return;
		} else {
			var trueNfalse = validation('2'); //밸리데이션 
			if(!trueNfalse){
				return;
			}
			                        
			var phone1 = $('#phone1').val();
			var phone2 = $('#phone2').val();
			var phone3 = $('#phone3').val();
			phoneVerification(phone1, phone2, phone3);
		}
	});
	
	$('#enormal1').on('click',function(){
		$('#email_address').attr("readonly",false);
		emailAddress('1');
	});
	$('#enormal2').on('click',function(){
		$('#email_address').attr("readonly",true);
		emailAddress('2');
	});
	$('#enormal3').on('click',function(){
		$('#email_address').attr("readonly",true);
		emailAddress('3');
	});
	$('#enormal4').on('click',function(){
		$('#email_address').attr("readonly",true);
		emailAddress('4');
	});
	$('#enormal5').on('click',function(){
		$('#email_address').attr("readonly",true);
		emailAddress('5');
	});
	$('#enormal6').on('click',function(){
		$('#email_address').attr("readonly",true);
		emailAddress('6');
	});
});

function emailAddress(value){
	var val = value; // 1: 직접입력, 2: naver, 3: daum, 4: nate.com, 5: gmail.com, 6: hotmail.com 
	
	if(val == '1'){
		$('#email_address').val("");
		return;
	} else if(val == '2'){
		$('#email_address').val("");
		$('#email_address').val("naver.com");
		return;
	} else if(val == '3'){
		$('#email_address').val("");
		$('#email_address').val("daum.net");
		return;
	} else if(val == '4'){
		$('#email_address').val("");
		$('#email_address').val("nate.com");
		return;
	} else if(val == '5'){
		$('#email_address').val("");
		$('#email_address').val("gmail.com");
		return;
	} else if(val == '6'){
		$('#email_address').val("");
		$('#email_address').val("hotmail.com");
		return;
	}
}

function mobileCarrier(value){
	$('#mobile_carrier').val(value);
}

function validation(value){
	/* validation START */
	var val = value; // 1: 회원가입버튼 2: 본인인증버튼
	
	var user_id = $('#user_id').val(); //아이디
	var user_password = $('#user_password').val(); //비밀번호
	var user_chk_pw = $('#user_chk_pw').val(); //비밀번호 확인
	var user_name = $('#user_name').val(); //이름
	var user_jumin1 = $('#user_jumin1').val(); //주민 앞자리
	var user_jumin2 = $('#user_jumin2').val(); //주민 뒷자리
	var email_id = $('#email_id').val(); //이메일 앞자리
	var email_address = $('#email_address').val(); //이메일 뒷자리
	var phone1 = $('#phone1').val(); //전화번호 앞자리
	var phone2 = $('#phone2').val(); //전화번호 중간자리
	var phone3 = $('#phone3').val(); //전화번호 뒷자리
	var certChkNum = $('#certChkNum').val(); //인증번호
	var user_gender = $('input[name="genderRadio"]:checked').val(); //성별
	var mobile_carrier = $('#mobile_carrier').val(); //통신사
	
	var chk_receive_1 = document.getElementById('chk_receive_1').checked; //전체동의
	var onlineSiteUsefStplat = document.getElementById('onlineSiteUsefStplat').checked; //필수
	var psnlInfoColctUsefAgr = document.getElementById('psnlInfoColctUsefAgr').checked; //필수
	var emailRecptnAgrYn = document.getElementById('emailRecptnAgrYn').checked; //선택
	var smsRecptnAgrYn = document.getElementById('smsRecptnAgrYn').checked; //선택
	
	if(val == '1'){
		if(user_id == ""){
			alert('아이디를 입력하세요');
			$('#user_id').focus();
			return false;
		} else if(user_password == ""){
			alert('비밀번호를 입력하세요');
			$('#user_password').focus();
			return false;
		} else if(user_chk_pw == ""){
			alert('비밀번호 확인란을 입력하세요');
			$('#user_chk_pw').focus();
			return false;
		} else if(user_password != user_chk_pw){
			alert('비밀번호가 서로 다릅니다 다시 입력하세요');
			$('#user_chk_pw').val("");
			$('#user_password').val("");
			$('#user_password').focus();
			return false;
		} else if(user_name == ""){
			alert('이름을 입력하세요');
			$('#user_name').focus();
			return false;
		} else if(user_jumin1 == ""){
			alert('주민번호 앞자리를 입력하세요');
			$('#user_jumin1').focus();
			return false;
		} else if(user_jumin2 == ""){
			alert('주민번호 뒷자리를 입력하세요');
			$('#user_jumin2').focus();
			return false;
		} else if(email_id == ""){
			alert('이메일을 확인해 주세요');
			$('#email_id').focus();
			return false;
		} else if(email_address == ""){
			alert('이메일을 확인해 주세요');
			$('#email_address').focus();
			return false;
		} else if(mobile_carrier == ""){
			alert("통신사를 선택해주세요");
			$("#phone1").focus();
			return false;
		} else if(phone1 == ""){
			alert('전화번호를 입력하세요');
			$('#phone1').focus();
			return false;
		} else if(phone2 == ""){
			alert('전화번호를 입력하세요');
			$('#phone2').focus();
			return false;
		} else if(phone3 == ""){
			alert('전화번호를 입력하세요');
			$('#phone3').focus();
			return false;
		}else if(!onlineSiteUsefStplat || !psnlInfoColctUsefAgr){
			alert('필수동의 항목을 확인해주세요');
			return false;
		}else if(certChkNum == ""){
			alert('휴대전화로 전송된 인증번호를 입력해주세요');
			$('#certChkNum').focus();
			return false;
		}else {
			if(emailRecptnAgrYn){
				$('#emailRecptnAgrYn').val("Y");
			} else {
				$('#emailRecptnAgrYn').val("N");
			}
			
			if(smsRecptnAgrYn){
				$('#smsRecptnAgrYn').val("Y");
			} else {
				$('#smsRecptnAgrYn').val("N");
			}
			
			var chkNum = $('#chkNum').val();
			var tmpId = $('#tmpId').val();
			var certNumGubn = $('#certNumGubn').val();
			if(certNumGubn == ""){
				alert("본인인증을 먼저 해주세요");
				return false;
			}
			
			if(chkNum == 0 && tmpId == user_id){
				return true;	
			} else {
				return false;
			}
		}
	} else {
		if(mobile_carrier == ""){
			alert("통신사를 선택해주세요");
			$("#phone1").focus();
			return false;
		} else if(phone1 == ""){
			alert('전화번호를 입력하세요');
			$('#phone1').focus();
			return false;
		} else if(phone2 == ""){
			alert('전화번호를 입력하세요');
			$('#phone2').focus();
			return false;
		} else if(phone3 == ""){
			alert('전화번호를 입력하세요');
			$('#phone3').focus();
			return false;
		} else {
			if(emailRecptnAgrYn){
				$('#agree_sns').val("Y");
			}
			if(smsRecptnAgrYn){
				$('#agree_email').val("Y");
			}
			return true;
		}		
	}
	/* validation END */
}

function setAgree(){
	if($("#certAgreeYn").is(":checked")){
		$("#chk_policy_1").prop("checked", true);
		$("#chk_policy_2").prop("checked", true);
		$("#chk_policy_3").prop("checked", true);
		$("#chk_policy_4").prop("checked", true);
		$("#chk_policy_5").prop("checked", true);
	}else{
		$("#chk_policy_1").prop("checked", false);
		$("#chk_policy_2").prop("checked", false);
		$("#chk_policy_3").prop("checked", false);
		$("#chk_policy_4").prop("checked", false);
		$("#chk_policy_5").prop("checked", false);
	}
}

function setAgree2(){
	if($("#mobileCo").val() == "6" || $("#mobileCo").val() == "7"){
		if($("#chk_policy_1").is(":checked") && $("#chk_policy_2").is(":checked") && $("#chk_policy_3").is(":checked") && $("#chk_policy_4").is(":checked")&& $("#chk_policy_5").is(":checked")){
			$("#certAgreeYn").prop("checked", true);
		}else{
			$("#certAgreeYn").prop("checked", false);
		}
	}else{
		if($("#chk_policy_1").is(":checked") && $("#chk_policy_2").is(":checked") && $("#chk_policy_3").is(":checked") && $("#chk_policy_4").is(":checked")){
			$("#certAgreeYn").prop("checked", true);
		}else{
			$("#certAgreeYn").prop("checked", false);
		}
	}	
}

function setCheck(){
	if($("#chk_receive_1").is(":checked")){
		$("#onlineSiteUsefStplat").prop("checked", true);
		$("#psnlInfoColctUsefAgr").prop("checked", true);
		$("#emailRecptnAgrYn").prop("checked", true);
		$("#smsRecptnAgrYn").prop("checked", true);
	}else{
		$("#onlineSiteUsefStplat").prop("checked", false);
		$("#psnlInfoColctUsefAgr").prop("checked", false);
		$("#emailRecptnAgrYn").prop("checked", false);
		$("#smsRecptnAgrYn").prop("checked", false);
	}
}

function setCheck2(){
	if($("#onlineSiteUsefStplat").is(":checked") && $("#psnlInfoColctUsefAgr").is(":checked") && $("#emailRecptnAgrYn").is(":checked") && $("#smsRecptnAgrYn").is(":checked")){
		$("#chk_receive_1").prop("checked", true);
	}else{
		$("#chk_receive_1").prop("checked", false);
	}
}

function phoneVerification(phone1, phone2, phone3){
	var userName = "";
	var gubn = "1";
	if($('#user_name').val() != ""){
		userName = $('#user_name').val();
	}
	
	$.ajax({
		type : "POST",
		url : "/test/getSendSMS.do",
		data : { phone1 : phone1 , phone2 : phone2, phone3 : phone3, user_name : userName, gubn : gubn},
		dataType : "json",
		success: function(res){
			$('#certNum').val(res.numStr);
			
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