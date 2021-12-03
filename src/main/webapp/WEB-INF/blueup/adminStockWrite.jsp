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
			<h2 class="title01" style="margin-bottom:50px;">재고 등록</h2>
			<!-- 메뉴 태그 -->
			<%@ include file="../../../view/mlb/adminMenu.jsp"%>

			<main class="contents oto_inquiryWrite-wrap" id="contents">
			<div class="board-write">
				<form id="addStock" action="/test/insertStock.mdo"  method="POST" enctype="multipart/form-data">
					<table summary="상품등록" >
						<tbody>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle" style="text-align:center">재고번호</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" class="input-style01" name="csoMtmInq.inqSj" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteContent" style="text-align:center">상품번호</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="product_no" class="input-style01" name="product_no" style="width:200px;">
							</td>
						</tr>
						<tr>
							<th scope="row"	"><label for="boardWriteContent" style="text-align:center">상품명</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="product_name" class="input-style01" name="product_name" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteTitle" style="text-align:center">단가</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="unit_price" name="unit_price" class="input-style01" style="width:200px;">
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent" style="text-align:center">사이즈</label> <span class="required">*</span></th>
							<td>
								<select id="size" name="product_size" style="width:200px; height:38px;">
								</select>
							<th scope="row"><label for="boardWriteContent" style="text-align:center">색상</label> <span class="required">*</span></th>
							<td>
								<select id="color" name="product_color" style="width:200px; height:38px;">
								</select>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent" style="text-align:center">카테고리</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="category" class="input-style01" name="category_name" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteContent" style="text-align:center">세부카테고리</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="detailcate" class="input-style01" name="detailed_category_name" style="width:200px;" readOnly>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row""><label for="boardWriteTitle" style="text-align:center">수량</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="quantity" name="stock_quantity"  class="input-style01" style="width:200px;">
							</td>
							<th scope="row""><label for="boardWriteTitle" style="text-align:center">구입비용</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="cost" class="input-style01" style="width:200px;">
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray"></tr>
						</tbody>
					</table>
				<div class="btnWrapBox">
					<a href="/test/getStockList.mdo" id="cancelBtn" class="btn btn-style03">취소</a>
					<input type="submit" class="btn btn-style02"  value="등록"/>
				</div>
			</form>
			</main>
		</div>
	</div>
	
<script type="text/javascript">
$(document).ready(function(){
	$('#addStock').submit(function(){
		if($('#size option:selected').text() == ""){
			alert("사이즈 옵션을 선택해주세요.");
			return false;
		}
		if($('#color option:selected').text() == ""){
			alert("색상 옵션을 선택해주세요");
			return false;
		}
		if($('#unit_price').val() == ""){
			alert("단가를 입력해주세요");
			return false;
		}
		if($('#quantity').val() == ""){
			alert("수량을 입력해주세요");
			return false;
		}if($('#cost').val() == ""){
			alert("구매비용을 입력해주세요");
			return false;
		}

	});
	
	/* 상품번호 입력시 정보 가져오기 */
	$('#product_no').focusout(function(){
			var flag = $('#product_no').val();
			var product_no = parseInt(flag);
			$.ajax({
				url : '/test/getProductInfoForStock.mdo',
				type : 'POST',
				cache : false,
				data : { "product_no" : product_no},
				success:function(data) {
					$('#product_name').val(data.product_name);
					$('#category').val(data.category_name);
					$('#detailcate').val(data.detailed_category_name);
					
					var sizeflag = data.product_size;
					var size = (sizeflag).split("/");
					var colorflag = data.product_color;
					var color = (colorflag).split("/");
					
					$('#size').empty();
					$('#color').empty();
					
					var htmlsize = '"<option value=1>---선택---</option>"';
					var htmlcolor = '"<option value=1>---선택---</option>"';
					
					for(s of size){
						htmlsize += "<option value='" + s + "'>" + s + "</option>";
					}
					
					for(c of color){
						htmlcolor += "<option value='" + c + "'>" + c + "</option>";
					}
					
					$('#size').append(htmlsize);
					$('#color').append(htmlcolor);
					
				},
				error:function() {
					alert('다시 시도해주세요');
				}
			});
		});	
	
	$('#quantity').focusout(function(){
		if($('#unit_price').val() == ""){
			alert("단가를 입력해주세요");
		}else{
			var unit = $('#unit_price').val();
			var quantity = $('#quantity').val();
			var cost = unit * quantity;
			$('#cost').val(cost);
		}
	});
	
	$('#color').change(function(){
			var product_size =  $('#size option:selected').text();
			var product_color = $('#color option:selected').text();
			var unit_price = $('#unit_price').val();
			var product_no = $('#product_no').val();
			$.ajax({
				url:'/test/checkStock.mdo',
			    type:'POST',
			    data : {"product_no" : product_no, "product_size" : product_size, "product_color" : product_color, "unit_price" : unit_price},
				success:function(data) {
					if(data > 0){
						alert("동일 옵션으로 등록된 재고가 있습니다.");
						$('#size option[value=1]').attr('selected', 'selected');
						$('#color option[value=1]').attr('selected', 'selected');
						$('#unit_price').val(0);
					}
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