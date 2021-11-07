<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
	
  <link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
   <script type="text/javascript" src="/javascript/message/helpdesk_ko.js?v=prod-version-858_20211102145956"></script>
 <input type="hidden" id="confirmBtn">
  
 <div id="pageTop"></div>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.form.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/helpdesk/helpdesk.js?v=prod-version-858_20211102145956"></script>

<form name="gForm" id="gForm" action="/helpdesk/csInquiry/add" method="post">
	<input type="hidden" name="csoMtmInq.cstmrEmail" id="cstmrEmail" value="">
	<input type="hidden" name="csoMtmInq.inqTpCd" id="inqTpCd">
	<input type="hidden" name="csoMtmInq.inqCont" id="inqContent">
	<input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileNm" id="inputfileNm">
	<input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileUrl" id="inputfileUrl">
	<input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileCpcty" id="inputfileSize">
	<input type="hidden" id="ordNum1" name="ordGod.ordNo" class="input-style01" style="width:443px;">
	<input type="hidden" name="referer" value="https://www.mlb-korea.com/mypage/inquiry/list">

	<div class="contain my cs lnblist-Wrap" id="contain" style="padding-top: 50px;">
		<div class="container">

			<h2 class="title01">QnA</h2>

			<main class="contents oto_inquiryWrite-wrap" id="contents">

				<div class="location-contents">
					<p class="location">
						<span>Home</span>
						<span>고객센터</span>
						<strong title="현재 위치">QnA</strong>
					</p>
				</div>

				<div class="board-write">
					<table summary="1:1고객상담 입력">
						<caption>QnA</caption>
						<colgroup>
							<col style="width:200px;">
							<col>
						</colgroup>
						<tbody><tr>
							<th scope="row"><label for="boardWriteName">작성자</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteName" class="input-style01" name="csoMtmInq.inqCstmrNm" value="이하진" style="width:150px;" readonly="readonly">
								<span class="error-msg" id="boardWriteName-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteEmail">답변 이메일</label> <span class="required">*</span></th>
							<td id="emailBox">
								<input type="text" id="boardWriteEmail" class="input-style01" value="hyunkyoung04" style="width:110px;">
								<span class="at">@</span>
								<input type="text" id="boardWriteEmail2" class="input-style01" value="naver.com" style="width:110px;">
								<!-- select -->
								<div class="select-style01 d_select">
									<button type="button" class="d_select_sel" style="width:150px;" id="emailSelect"><span>직접입력</span></button>
									<ul id="emailAddress">
										<li><a href="">직접입력</a></li>
										<li><a href="#">naver.com</a></li>
										<li><a href="#">daum.net</a></li>
										<li><a href="#">nate.com</a></li>
										<li><a href="#">gmail.com</a></li>
										<li><a href="#">hotmail.com</a></li>
									</ul>
								</div>
								<!-- //select -->
								<span class="error-msg" style="display:none;" id="boardWriteEmail-msg"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContact">휴대전화</label> <span class="required">*</span></th>
							<td>
								<div class="inputcallBox">
									<input type="text" class="input-style01" id="boardWriteContact" name="csoMtmInq.cstmrmobilAreaNo" value="010" style="width:64px;">
									<span class="hyphen">-</span>
									<input type="text" class="input-style01" id="boardWriteContact2" name="csoMtmInq.cstmrmobilTlofNo" value="3408" style="width:70px;">
									<span class="hyphen">-</span>
									<input type="text" class="input-style01" id="boardWriteContact3" name="csoMtmInq.cstmrmobilTlofWthnNo" value="4515" style="width:70px;">
								</div>

								<span class="check-skin">
									<input type="checkbox" id="chkAgree" checked="checked" value="Y" name="csoMtmInq.cstmrSmsRecptnYn">
									<span>선택</span>
								</span>
								<label for="chkAgree">답변등록여부 수신</label>
								<span class="error-msg" id="boardWriteContact-msg" style="display:none;"></span>
							</td>
						</tr>
					<tr>
							<th scope="row"><label for="ordNum2">주문번호</label></th>
							<td>
								<input type="text" id="ordNum2" class="input-style01" style="width:515px;" disabled="disabled">
								<input type="hidden" id="ordGodTurn" name="ordGod.ordGodTurn" class="input-style01" style="width:443px;">
								<a href="#layerPopup02" class="btn-style04 d_layer_open">주문찾기</a>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteSort">상담분류</label> <span class="required">*</span></th>
							<td>
								<!-- select -->
								<div class="select-style01 d_select select_consul_cate">
								<button type="button" id="boardWriteSort" class="d_select_sel" style="width:152px;"><span>선택</span></button>

								<ul>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="DLV_DELAY_DSCNTT_INQ" class="selCd">배송지연/불만<input type="hidden" value="DLV_DELAY_DSCNTT_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="RTGOD_INQ" class="selCd">반품문의<input type="hidden" value="RTGOD_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="AS_INQ" class="selCd">A/S문의<input type="hidden" value="AS_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="RFD_INQ" class="selCd">환불문의<input type="hidden" value="RFD_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="ORD_PAY_INQ" class="selCd">주문결제문의<input type="hidden" value="ORD_PAY_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="MBR_INFO_INQ" class="selCd">회원정보문의<input type="hidden" value="MBR_INFO_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="CNCL_INQ" class="selCd">취소문의<input type="hidden" value="CNCL_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="EXCHG_INQ" class="selCd">교환문의<input type="hidden" value="EXCHG_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="GOD_INFO_INQ" class="selCd">상품정보문의<input type="hidden" value="GOD_INFO_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="ETC_INQ" class="selCd">기타문의<input type="hidden" value="ETC_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="EVT_INQ" class="selCd">이벤트문의<input type="hidden" value="EVT_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="GFT_INQ" class="selCd">사은품문의<input type="hidden" value="GFT_INQ"></a></li>
										</if>
									<if test="true">
										<li class="selectBox"><a href="#none" onclick="return false;" id="AFF_INQ" class="selCd">제휴문의<input type="hidden" value="AFF_INQ"></a></li>
										</if>
									</ul>
								</div>
								<!-- //select -->
								<span class="error-msg" id="boardWriteSort-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteTitle">제목</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">내용</label> <span class="required">*</span></th>
							<td>
								<textarea cols="30" rows="10" id="boardWriteContent" placeholder="1,000자 미만 (특수문자 \ / : < > ; 사용불가)으로 입력해 주세요." style="width:515px; height:150px;"></textarea>
								<div class="clearfix">
									<div clsss="fl">
										<span class="error-msg" id="boardWriteContent-msg" style="display:none;"></span>	<!-- 더 이상 입력하실 수 없습니다. -->
									</div>
									<div class="fr">
										<span class="txt13-999"><em class="txt13-000" id="counter">0</em>자/1,000자</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="fileSearch">첨부파일</label></th>
							<td>
								<span class="file-search">
									<input type="text" class="input-style01" style="width:443px;" id="fileInputName" readonly="">
									<span>
										<input type="file" id="fileSearch" name="files" onchange="javascript:filetest(this);">
										<label for="fileSearch">파일찾기</label>
									</span>
								</span>
								<div class="file-name"></div>
								<ul class="text-list02 col-type02">
									<li>파일은 1개만 첨부할 수 있습니다. (10MB 이하)</li>
									<li>파일형식 : hwp, doc/docx, xls/xlsx, ppt/pptx, jpg, gif, png, pdf</li>
								</ul>
							</td>
						</tr>
					</tbody></table>
				</div>

				<ul class="text-list02 col-type01">
					<li>문의하신 내용에 대한 답변은 <span class="txt13-000">마이페이지 &gt; 활동정보 &gt; QnA</span>에서 확인하실 수 있습니다.</li>
				</ul>
			 	<div class="btnWrapBox">
					<a href="#" id="cancelBtn" class="btn btn-style03">취소</a>
					<a href="#" id="regBtn" class="btn fill btn-style02">저장</a>
				</div>
			</main>
		</div>
	</div>
	</form>

	<!-- layerpopup -->
	<article id="layerPopup02" class="layer-popup orderInfoSearch-pop">
		<section class="layer-popup-cont" tabindex="0">
			<h2>주문 찾기</h2>
			<div class="layer-cont scroll">

				<div class="orderInfoSearch-popWrap">
					<dl class="period-wrap period-type02">
						<!-- 기간달력 -->
						<dt>조회기간</dt>
						<dd>
							<script>
								$(document).ready(function(){
									var dateFormat = "yyyy.mm.dd",
									from = $( "#calendarFrom" ).datepicker().on( "change", function() {
										to.datepicker( "option", "minDate", getDate( this ) );
									}),
									to = $( "#calendarTo" ).datepicker().on( "change", function() {
										from.datepicker( "option", "maxDate", getDate( this ) );
									});

									function getDate( element ) {
										var date;
										try {
											date = $.datepicker.parseDate( dateFormat, element.value );
										} catch( error ) {
											date = null;
										}
										return date;
									}
								});
							</script>
							<a href="#" id="month3btn" class="btn sm d_radio_select on" onclick="inputCalendar3();"><span>3개월</span></a>
							<a href="#" id="month6btn" class="btn sm d_radio_select" onclick="inputCalendar6();"><span>6개월</span></a>
							<!-- <a href="#" id="month12btn" class="btn sm d_radio_select" onclick="inputCalendar12();"><span>12개월</span></a> -->
							<input type="text" class="calendar hasDatepicker" id="calendarFrom" readonly="">
							<input type="text" class="calendar hasDatepicker" id="calendarTo" readonly="">
							<a href="#" class="btn sm" id="btnlistsearch">검색</a>
							<p class="calendar-info-txt">시작일로부터 최대 1년단위로 조회가 가능합니다.</p><!-- 2018-08-13 -->
						</dd>
					</dl>

					<ul class="text-list02">
						<li>2019년 2월 25일 이후 주문만 조회 가능합니다.</li>
						<li>2019년 2월 25일 이전 주문은 고객센터 (080-807-0012) 로 문의해 주시면 답변해 드리겠습니다.</li>
					</ul>

					<div id="ordGodList">
						<div class="board-list">
							<table>
								<caption>주문찾기 주문정보, 주문일자, 상품명, 수량, 결제금액, 주문/배송상태</caption>
								<colgroup>
									<col style="width:40px;">
									<col style="width:130px;">
									<col style="width:80px;">
									<col>
									<col style="width:40px;">
									<col style="width:100px;">
									<col style="width:100px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">주문정보</th>
										<th scope="col">주문일자</th>
										<th scope="col">상품명</th>
										<th scope="col">수량</th>
										<th scope="col">결제금액</th>
										<th scope="col">주문/배송상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="7" class="no-result">주문내역이 없습니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="btnWrapBox">
					<a href="#" id="btnSelectOrdNo" class="btn fill">확인</a>
				</div>

			</div>
			<div class="layer-popup-close">
				<button type="button" class="d_layer_close">닫기</button>
			</div>
		</section>
	</article>
	<!-- //layerpopup -->

	<form id="fTempImage" name="fTempImage" method="POST" style="display:none;"> <input type="hidden"></form>
<%@ include file="footer.jsp" %>
</body>
</html>