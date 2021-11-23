<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp" %>

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

			<h2 class="title01" style="margin-bottom:50px;">상품 등록</h2>
			
<%@ include file="adminMenu.jsp" %>

			<main class="contents oto_inquiryWrite-wrap" id="contents">

				<div class="location-contents">
					
				</div>

				<div class="board-write">
					<table summary="상품등록" >
						<caption>Product</caption>
						<colgroup>
							<col style="width:200px;">
							<col>
						</colgroup>
						<tbody>
						<tr>
							<th scope="row"><label for="boardWriteTitle">등록시간</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:515px;" readOnly>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteTitle">상품등록</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">상품번호</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">가격</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">할인액</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">할인율</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">사이즈</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">컬러</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">카테고리</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">세부카테고리</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" placeholder="30자 미만으로 입력해 주세요." style="width:515px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteContent">진열여부</label> <span class="required">*</span></th>
							<td>
								<select id="display" style="width:400px;">
									<option value="true">TRUE</option>
									<option value="false">FALSE</option>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="boardWriteTitle">리뷰 사진</label></th>
							<td>
                        		<span>
                            	<input type="file" id="fileSearch" name="files" onchange="javascript:filetest(this);">
                           		</span>
                           	</td>
						</tr>
						
					</tbody></table>
				</div>

			 	<div class="btnWrapBox">
					<a href="#" id="cancelBtn" class="btn btn-style03">취소</a>
					<a href="#" id="regBtn" class="btn fill btn-style02">저장</a>
				</div>
			</main>
		</div>
	</div>
	</form>
</body>
</html>