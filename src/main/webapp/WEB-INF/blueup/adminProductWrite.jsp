<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../../../view/mlb/adminHeader.jsp" %>

<!-- 컨텐츠 시작 -->
	
 <link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
<!-- <script type="text/javascript" src="/javascript/message/helpdesk_ko.js?v=prod-version-858_20211102145956"></script>-->

 <div id="pageTop"></div>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.form.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/helpdesk/helpdesk.js?v=prod-version-858_20211102145956"></script>


	<div class="contain my cs lnblist-Wrap" id="contain" style="padding-top: 50px;">
		<div class="container">
			<h2 class="title01" style="margin-bottom:50px;">상품 등록</h2>
			<!-- 메뉴 태그 -->
			<%@ include file="../../../view/mlb/adminMenu.jsp"%>

			<main class="contents oto_inquiryWrite-wrap" id="contents">
			<div class="board-write">
				<form id="addProduct" action="/test/addProduct.mdo"  method="POST" enctype="multipart/form-data">
					<table summary="상품등록" >
						<tbody>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">등록시간</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteContent">진열여부</label> <span class="required">*</span></th>
							<td>
								<select id="display" name="display_status" style="width:150px; text-align:center;">
									<option value=" ">----선택----</option>
									<option value="true">TRUE</option>
									<option value="false">FALSE</option>
								</select>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">카테고리</label> <span class="required">*</span></th>
							<td>
								<select id="cate" name="category_name" style="width:150px; text-align:center;">
									<option value=" ">----선택----</option>
									<option value="CAP">CAP</option>
									<option value="SHOES">SHOES</option>
									<option value="BAG">BAG</option>
									<option value="BAG">ACC/PET</option>
								</select>
							</td>
							<th scope="row"><label for="boardWriteContent">세부카테고리</label> <span class="required">*</span></th>
							<td>
								<select id="catedetail" name="detailed_category_name" style="width:150px; text-align:center;">
								</select>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">상품명</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="product_name" name="product_name" class="input-style01" style="width:200px;">
							</td>
							<th scope="row"><label for="boardWriteTitle">가격</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="product_price" name="product_price"  class="input-style01" style="width:200px;">
							</td>
						</tr>
		
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">할인액</label> <span class="required">*</span></th>
							<td>
								<input type="text"  id="product_discount" class="input-style01" name="discount" style="width:200px;">
							</td>
							<th scope="row"><label for="boardWriteContent">할인율</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="dicsountrate" class="input-style01" name="discount_rate" style="width:200px;">
							</td>
						</tr>

						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent">사이즈</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="size" name="product_size" class="input-style01" placeholder="'/'로 구분해주세요.ex)230/240"style="width:200px;">
							<th scope="row"><label for="boardWriteContent">컬러</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="color" name="product_color" class="input-style01" placeholder="'/'로 구분해주세요.ex)브라운/그레이" style="width:200px;">
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
						<th scope="row"><label for="boardWriteTitle">main_image</label></th>
							<td>
                        		<span>
                            	<input type="file" name="contentList[0]" style="width:500px;" onchange="javascript:filetest(this);">
                           		</span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">content_top image</label>
							<td>
                        		<span>
                            	<input type="file" name="contentList[1]" style="width:500px;" onchange="javascript:filetest(this);">
                            	<input type="file" name="contentList[2]" style="width:500px;" onchange="javascript:filetest(this);">
                            	<input type="file" name="contentList[3]" style="width:500px;" onchange="javascript:filetest(this);">
                            	<input type="file" name="contentList[4]" style="width:500px;" onchange="javascript:filetest(this);">
                            	<input type="file" name="contentList[5]" style="width:500px;" onchange="javascript:filetest(this);">
                            	<input type="file" name="contentList[6]" style="width:500px;" onchange="javascript:filetest(this);">
                            	</span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">content_main image</label></th>
							<td>
	                        	<span>
	                            <input type="file" name="contentList[7]" style="width:500px;" onchange="javascript:filetest(this);">
	                            <input type="file" name="contentList[8]" style="width:500px;" onchange="javascript:filetest(this);">
	                            <input type="file" name="contentList[9]" style="width:500px;" onchange="javascript:filetest(this);">
	                            <input type="file" name="contentList[10]" style="width:500px;" onchange="javascript:filetest(this);">
	                            </span>
                           	</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle">product_Infor image</label></th>
							<td>
                        		<span>
                            	<input type="file" name="contentList[11]" style="width:500px;" onchange="javascript:filetest(this);">
                            	</span>
                           	</td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="btnWrapBox">
					<a href="/test/getProductList.mdo" id="cancelBtn" class="btn btn-style03">취소</a>
					<input type="submit" class="btn btn-style02"  value="등록"/>
				</div>
			</form>
			</main>
		</div>
	</div>
	
<script type="text/javascript">
$(document).ready(function(){
	$('#addProduct').submit(function(){
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
</script>
</body>
</html>