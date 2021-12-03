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
			<h2 class="title01" style="margin-bottom:50px;">재고 수정</h2>
			<!-- 메뉴 태그 -->
			<%@ include file="../../../view/mlb/adminMenu.jsp"%>

			<main class="contents oto_inquiryWrite-wrap" id="contents">
			<div class="board-write">
				<form id="Modify" action="/test/updateStock.mdo"  method="POST" >
					<table summary="상품등록" >
						<tbody>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle" style="text-align:center">재고번호</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="boardWriteTitle" value="${StockInfo.stock_no }" class="input-style01" name="stock_no" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteContent" style="text-align:center">상품번호</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="product_no" value="${StockInfo.product_no }" class="input-style01" name="product_no" style="width:200px;" readOnly>
							</td>
						</tr>
						<tr>
							<th scope="row"	"><label for="boardWriteContent" style="text-align:center">상품명</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="product_name" value="${StockInfo.product_name }" class="input-style01" name="product_name" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteTitle" style="text-align:center">단가</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="unit_price" value="${StockInfo.unit_price }" name="unit_price" class="input-style01" style="width:200px;" readOnly>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent" style="text-align:center">사이즈</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="size" value="${StockInfo.product_size }" class="input-style01" name="product_size" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteContent" style="text-align:center">색상</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="color" value="${StockInfo.product_color}" class="input-style01" name="product_color" style="width:200px;" readOnly>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteContent" style="text-align:center">카테고리</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="category" value="${StockInfo.category_name}" class="input-style01" name="category_name" style="width:200px;" readOnly>
							</td>
							<th scope="row"><label for="boardWriteContent" style="text-align:center">세부카테고리</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="detailcate" value="${StockInfo.detailed_category_name}" class="input-style01" name="detailed_category_name" style="width:200px;" readOnly>
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray">
							<th scope="row"><label for="boardWriteTitle" style="text-align:center">잔여수량</label> <span class="required">*</span></th>
							<td>
								<input type="text" id="quantity" value="${StockInfo.stock_quantity}" name="stock_quantity"  class="input-style01" style="width:200px;">
							</td>
						</tr>
						<tr style="border-top:1px solid lightgray"></tr>
						</tbody>
					</table>
				<div class="btnWrapBox">
					<a href="/test/getStockList.mdo" id="cancelBtn" class="btn btn-style03">취소</a>
					<input type="submit" class="btn btn-style02"  value="수정"/>
				</div>
			</form>
			</main>
		</div>
	</div>
<script type="text/javascript">
$(document).ready(function(){
	/* 카테고리 변경시 세부카테고리 변경 이벤트*/
	$('#quantity').change(function(){
		var quantity = $('#quantity').val();
		var unit_price = ${StockInfo.unit_price};
		var cost = unit_price * quantity;
		$('#cost').val(cost);
	 });
	
	$('#Modify').submit(function(){
		if($('#quantity').val() == ""){
			alert("수량을 입력해주세요");
		}
	});
});

</script>
</body>
</html>