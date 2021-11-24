<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../../view/mlb/adminHeader.jsp"%>

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
			<h2 class="title01" style="margin-bottom:50px;">상품 정보</h2>
			
			<!-- 사이드 메뉴 -->
			<%@ include file="../../../view/mlb/adminMenu.jsp"%>

			<main class="contents oto_inquiryWrite-wrap" id="contents">
				<div class="board-write">
					<table summary="상품등록" >
						<tbody>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">등록시간</label> <span class="required">*</span></th>
							<td><input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" value="${product.registration_time}" style="width:200px;" readOnly></td>
							<th scope="row"><label for="boardWriteTitle">상품번호</label> <span class="required">*</span></th>
							<td><input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" value="${product.product_no}" style="width:200px;" ></td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">카테고리</label><span class="required">*</span></th>
							<td>
								<select id="category" style="width:150px; text-align:center;">
									<option value=" ">----선택----</option>
									<option value="CAP">CAP</option>
									<option value="SHOES">SHOES</option>
									<option value="SHOES">SHOES</option>
									<option value="BAG">BAG</option>
									<option value="BAG">ACC/PET</option>
								</select>
							</td>
							<th scope="row"><label for="boardWriteContent">세부카테고리</label><span class="required">*</span></th>
							<td>
								<select id="catedetail" style="width:150px; text-align:center;">
								</select>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">가격</label><span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" value="${product.product_price}" style="width:200px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
							<th scope="row"><label for="boardWriteTitle">배송비</label></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" value="0" style="width:200px; readOnly">
							</td>
						</tr>
		
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">할인액</label> <span class="required">*</span></th>
							<td><input type="text" id="boardWriteTitle" class="input-style01" value="${product.discount}" style="width:200px;"></td>
							<th scope="row"><label for="boardWriteContent">할인율</label> <span class="required">*</span></th>
							<td><input type="text" id="boardWriteTitle" class="input-style01" value="${product.discount_rate}" placeholder=" %(퍼센트)기준으로 작성해주세요" style="width:200px;"></td>
						</tr>

						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">사이즈</label><span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" value="${product.product_size}" style="width:200px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							<th scope="row"><label for="boardWriteContent">컬러</label><span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" value="${product.product_color}" style="width:200px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>

						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">진열여부</label><span class="required">*</span></th>
							<td>
								<select id="display" style="width:150px; text-align:center;">
									<option value=" ">----선택----</option>
									<option value="true">TRUE</option>
									<option value="false">FALSE</option>
								</select>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
						<th scope="row"><label for="boardWriteTitle">main_image</label></th>
							<td>
                        		<span>
                            		<input type="file" style="width:500px;" value="${product.main_image}" onchange="javascript:filetest(this);">
                           		</span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">content_top image</label>
							<td>
                        		<span>
                        		<c:forEach var="image_main" items="${productDetail}">
	                        		<c:if test="${image_main.content_type == 'top'}">
	                            		<input type="file" style="width:500px;" value="${image_main.detailed_product_content}" onchange="javascript:filetest(this);">
	                         		</c:if>
                         		</c:forEach>
                            	</span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">content_main image</label></th>
							<td>
	                        	<span>
	                        	<c:forEach var="image_main" items="${productDetail}">
	                        		<c:if test="${image_main.content_type == 'main'}">
	                            		<input type="file" style="width:500px;" value="${image_main.detailed_product_content}" onchange="javascript:filetest(this);">
	                         		</c:if>
                         		</c:forEach>
	                            </span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">product_Infor image</label></th>
							<td>
                        		<span>
                            	 <c:forEach var="image_main" items="${productDetail}">
	                        		<c:if test="${image_main.content_type == 'bottom'}">
	                            		<input type="file" style="width:500px;" value="${image_main.detailed_product_content}" onchange="javascript:filetest(this);">
	                         		</c:if>
                         		</c:forEach>
                            	</span>
                           	</td>
						</tr>
						</tbody>
					</table>
				</div>

			 	<div class="btnWrapBox">
					<a href="#" id="cancelBtn" class="btn btn-style03">취소</a>
					<a href="#" id="regBtn" class="btn fill btn-style02">저장</a>
				</div>
			</main>
		</div>
	</div>
	</form>
<script type="text/javascript">
	$(document).ready(function(){
		var category_name = ${product.category_name};
		$("#category").val(category_name).prop("selected", true);
		var display = ${product.display_status};
		$("#display").val(display).prop("seletecd", true);
	});
	
	$('#category').change(function(){
		var category = $('#category option:selected').text();
		$.ajax({
			url : '/test/getCategoryDetailList.mdo'
			type : 'POST',
			cache : false,
			data : { "category_name" : category_name},
			success : function(data){
				$(data).each(function(){
					var detail = this.detailed_category_name;
					$('#catedetail').append('<option value="' + detail + '">' + detail + '</option>');
				});
			},
		});
	});
	
</script>
</body>
</html>