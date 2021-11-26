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

<!--  
<form name="gForm" id="gForm" action="/helpdesk/csInquiry/add" method="post">
	<input type="hidden" name="csoMtmInq.cstmrEmail" id="cstmrEmail" value="">
	<input type="hidden" name="csoMtmInq.inqTpCd" id="inqTpCd">
	<input type="hidden" name="csoMtmInq.inqCont" id="inqContent">
	<input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileNm" id="inputfileNm">
	<input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileUrl" id="inputfileUrl">
	<input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileCpcty" id="inputfileSize">
	<input type="hidden" id="ordNum1" name="ordGod.ordNo" class="input-style01" style="width:443px;">
	<input type="hidden" name="referer" value="https://www.mlb-korea.com/mypage/inquiry/list">
 -->
	<div class="contain my cs lnblist-Wrap" id="contain" style="padding-top: 50px;">
		<div class="container">
			<h2 class="title01" style="margin-bottom:50px;">상품 정보</h2>
			
			<!-- 사이드 메뉴 -->
			<%@ include file="../../../view/mlb/adminMenu.jsp"%>

			<main class="contents oto_inquiryWrite-wrap" id="contents">
				<div class="board-write">
				<form id="modify" action="/test/updateProduct.mdo"  method="POST" enctype="multipart/form-data">
					<table summary="상품등록" >
						<tbody>
						<tr style="border-top:1px solid lightgray">
							<input type="hidden" name="product_no" value="${product.product_no}"/>
							<th scope="row"><label for="boardWriteTitle">등록시간</label> <span class="required">*</span></th>
							<fmt:formatDate var="formatRegDate" value="${product.registration_time}" pattern="yyyy.MM.dd" />
							<td><input type="text" id="boardWriteTitle"  class="input-style01" value="${formatRegDate}" style="width:200px;" readOnly></td>
							<th scope="row"><label for="boardWriteContent">진열여부</label><span class="required">*</span></th>
							<td>
								<select id="display" name="display_status" style="width:150px; text-align:center;">
									<option value=" ">----선택----</option>
									<option value="true">TRUE</option>
									<option value="false">FALSE</option>
								</select>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">카테고리</label><span class="required">*</span></th>
							<td>
								<select id="cate" name="category_name" style="width:150px; text-align:center;">
									<option value=" ">----선택----</option>
									<option value="CAP">CAP</option>
									<option value="SHOES">SHOES</option>
									<option value="BAG">BAG</option>
									<option value="BAG">ACC/PET</option>
								</select>
							</td>
							<th scope="row"><label for="boardWriteContent">세부카테고리</label><span class="required">*</span></th>
							<td>
								<select id="catedetail" name="detailed_category_name" style="width:150px; text-align:center;">
								</select>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">상품명</label><span class="required">*</span></th>
							<td>
								<input type="text" id="product_name" name="product_name" class="input-style01" value="${product.product_name}" style="width:200px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
							<th scope="row"><label for="boardWriteTitle">가격</label></th>
							<td>
								<input type="text" id="product_price" name="product_price" class="input-style01" value="${product.product_price}" style="width:200px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
		
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">할인액</label> <span class="required">*</span></th>
							<td><input type="text" id="product_discount" class="input-style01" name="discount" value="${product.discount}" style="width:200px;"></td>
							<th scope="row"><label for="boardWriteContent">할인율</label> <span class="required">*</span></th>
							<td><input type="text" id="dicsountrate" class="input-style01" name="discount_rate" value="${product.discount_rate}" placeholder=" %(퍼센트)기준으로 작성해주세요" style="width:200px;"></td>
						</tr>

						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">사이즈</label><span class="required">*</span></th>
							<td>
								<input type="text" id="size" name="product_size" class="input-style01" value="${product.product_size}" style="width:200px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							<th scope="row"><label for="boardWriteContent">컬러</label><span class="required">*</span></th>
							<td>
								<input type="text" id="color" name="product_color" class="input-style01" value="${product.product_color}" style="width:200px;">
								<span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
						<th scope="row"><label for="boardWriteTitle">main_image</label></th>
							<td>
                        		<span class="add">
                        			<div class="remove" style="width:800px; padding:5px; font-size:15px;">현재이미지&nbsp;:&nbsp;<span>${product.main_image}</span>
                            		<img class="x" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/x.png" onclick="deletefile(this)" style="width:10px; height:10px; margin-left:10px;"/></div>
	                        		<input type="hidden" id="main" name="main_image" value="0"/>
                           		</span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">content_top image</label>
							<td>
                        		<span class="add">
                        		<c:forEach var="image_top" items="${productDetail}" varStatus="status">
	                        		<c:if test="${image_top.content_type == 'top'}">
	                        			<div class="remove" style="width:800px; padding:5px; font-size:15px;">현재이미지&nbsp;:&nbsp;<span>${image_top.detailed_product_content}</span>
	                        			<img class="x" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/x.png" onclick="deletefile(this)" style="width:10px; height:10px; margin-left:10px;"/></div>
	                        			<input type="hidden" value="${image_top.product_content_detail_no}"/>
	                         		</c:if>
                         		</c:forEach>
                            	</span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">content_main image</label></th>
							<td>
	                        	<span class="add">
	                        	<c:forEach var="image_main" items="${productDetail}">
	                        		<c:if test="${image_main.content_type == 'main'}">
	                        			<div class="remove" style="width:800px; padding:5px; font-size:15px;">현재이미지&nbsp;:&nbsp;<span>${image_main.detailed_product_content}</span>
	                        			<img class="x" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/x.png" onclick="deletefile(this)" style="width:10px; height:10px; margin-left:10px;"/></div>
	                        			<input type="hidden" value="${image_main.product_content_detail_no}"/>
	                         		</c:if>
                         		</c:forEach>
	                            </span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">product_Infor image</label></th>
							<td>
                        		<span class="add">
                            	 <c:forEach var="image_bottom" items="${productDetail}">
	                        		<c:if test="${image_bottom.content_type == 'bottom'}">
	                        			<div class="remove" style="width:800px; padding:5px; font-size:15px;">현재이미지&nbsp;:&nbsp;<span>${image_bottom.detailed_product_content}</span>
	                            		<img class="x" src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/x.png" onclick="deletefile(this)" style="width:10px; height:10px; margin-left:10px;"/></div>
	                        			<input type="hidden" value="${image_bottom.product_content_detail_no}"/>
	                         		</c:if>
                         		</c:forEach>
                            	</span>
                           	</td>
                           	<div id="infor"></div>
						</tr>
					</table>
				</div>
			 	<div class="btnWrapBox">
					<a href="/test/getProductList.mdo" id="cancelBtn" class="btn btn-style03">취소</a>
					<input type="submit" class="btn btn-style02"  value="수정"/>
				</div>
				</form>
			</main>
		</div>
	</div>
<script type="text/javascript">
$(document).ready(function(){
	$('#modify').submit(function(){
		if($('#cate option:selected').text() == ""){
			alert("카테고리 옵션을 선택해주세요.");
			return false;
		}
		if($('#catedetail option:selected').text() == ""){
			alert("세부카테고리 옵션을 선택해주세요");
			return false;
		}
		if($('#display option:selected').text() == ""){
			alert("진열여부 옵션을 선택해주세요");
			return false;
		}
		if($('#product_name').val() == ""){
			alert("상품이름을 입력해주세요");
			return false;
		}
		if($('#product_price').val() == ""){
			alert("상품 가격을 입력해주세요");
			return false;
		}
		if($('#product_discount').val() == ""){
			alert("할인 금액을 입력해주세요");
			return false;
		}if($('#dicsountrate').val() == ""){
			alert("할인율을 입력해주세요");
			return false;
		}if($('#size').val() == ""){
			alert("상품 사이즈를 입력해주세요");
			return false;
		}if($('#color').val() == ""){
			alert("상품 색상을 입력해주세요");
			return false;
		}
	});
	/* 초기값 셋팅*/
	$('#cate').val("${product.category_name}"); 
	$('#display').val("${product.display_status}");
	var category_name = "${product.category_name}";
		$.ajax({
			url : '/test/getCategoryDetailList.mdo',
			type : 'POST',
			cache : false,
			data : { "category_name" : category_name},
			success : function(data){
				/* 세부카테고리 초기값 셋팅*/
				$(data).each(function(){
					var detail = this.detailed_category_name;
					$('#catedetail').append('<option value=' + detail + '>' + detail + '</option>');
				});
				$('#catedetail').val("${product.detailed_category_name}");
			},
			error:function() {
				alert('다시 시도해주세요');
			}
		});
	
	/* 카테고리 변경시 세부카테고리 변경 이벤트*/
	$('#cate').change(function(){
		var category_name = $('#cate option:selected').text();
		$.ajax({
			url : '/test/getCategoryDetailList.mdo',
			type : 'POST',
			cache : false,
			data : { "category_name" : category_name},
			success : function(data){
				$('#catedetail').empty();
				$(data).each(function(){
					var detail = this.detailed_category_name;
					$('#catedetail').append('<option value=' + detail + '>' + detail + '</option>');
				});
			},
			error:function() {
				alert('다시 시도해주세요');
			}
		});
	 });
});
var index = 0;
function deletefile(element){
	var detail_no = $(element).closest('div').next().val();
		if(detail_no == 0){
			$('#main').remove();
			var html = '<input type="file" name="contentList[' +index +']" style="width:500px;border:1px solid lightgray; margin-top:10px;" onchange="addfile(this);">';
			var html2 = '<input type="hidden" name="number['+ index +'].product_content_detail_no" class="detail_no" value="0"/>';
		}else{
			var html = '<input type="file" name="contentList[' +index +']" class="content" style="width:500px;border:1px solid lightgray; margin-top:10px;" onchange="addfile(this);">';
			var html2 = '<input type="hidden" name="number['+ index +'].product_content_detail_no" class="detail_no" value="'+ detail_no +'"/>';
		}
		$(element).closest('.add').append(html);
		$(element).closest('.add').append(html2);
		$(element).closest('.remove').remove();
		index++;
}

</script>
</body>
</html>