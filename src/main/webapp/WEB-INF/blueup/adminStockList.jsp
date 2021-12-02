<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../../view/mlb/adminHeader.jsp"%>
<!-- 컨텐츠 시작 -->
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>


	<!-- 컨텐츠 시작 -->
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">
			<h2 class="title01">재고 관리</h2>
			
			<!-- 사이드 메뉴 -->
			<%@ include file="../../../view/mlb/adminMenu.jsp"%>
			
			<main class="contents oto_inquiryList-wrap" id="contents">
				<div class="location-contents"></div>
					<!-- 상단 버튼 -->
					<div class="tbst-div" style="display:flex; padding-bottom:40px;">
						<div>
						<a href="/test/getStockWrite.mdo" class="btn fill sm fdlr30 btn-style07 right" onclick="javascript:goInquiryNew()">
						<span>재고 등록</span></a>
						</div>
						<div style="width:230px; align-items:center; display:flex; margin-left:687px;">
							<label for="boardWriteContent" style="margin-right:10px;">검색&nbsp;&nbsp;: </label>
							<input type="text" id="boardWriteTitle" class="input-style01" placeholder="상품명으로 검색해주세요." style="width:200px;">
				 		</div>
					</div>
				 
				<!-- 표 시작 -->
				<div id="includeInquiryList">
					<div class="board-list">
						<table>
						
							<!-- 표 상단 메뉴 -->
							<thead>
								<tr>
									<th scope="col">재고번호</th>
									<th scope="col">상품명</th>
									<th scope="col">사이즈</th>
									<th scope="col">색상</th>
									<th scope="col">단가</th>
									<th scope="col">재고수량</th>
								</tr>
							</thead>
							
							<!-- 상품 목록 -->
							<tbody id="remove">
								<c:choose>
									<c:when test="${stockList == null}" >
										<tr><td colspan="10" class="no-result">재고내역이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="stock" items="${stockList }">
										<c:set value="${stock.unit_price}" var="unit"/>
										<c:set value="${stock.stock_quantity}" var="quantity"/>
										<fmt:formatNumber var="formatNumber" value="${stock.unit_price}" pattern="#,###" />
										<tr onclick="gotoDetail(this)">
											<td scope="col" class="stock_no">${stock.stock_no}</td>
											<td scope="col">${stock.product_name}</td>
											<td scope="col">${stock.product_size}</td>
											<td scope="col">${stock.product_color}</td>
											<td scope="col">${formatNumber}원</td>
											<td scope="col">${stock.stock_quantity}</td>
										</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
				</div>
			</main>
		</div>
	</div>

<script type="text/javascript">
$(document).ready(function(){
	$('#boardWriteTitle').keydown(function(key){
		if(key.keyCode == 13){
			var search = $('#boardWriteTitle').val();
			$.ajax({
				url : '/test/getStockListBySearch.mdo',
				type : 'POST',
				cache : false,
				data : { "search" : search},
			}).done(function(data){
					console.log("data받음");
					$('#remove').empty();
					$('#remove').html(data);
			}).fail(function(){
					console.log("에러");
			});
		}
	});
});
function gotoDetail(element){
	var flag = $(element).children('.stock_no').text();
	var stock_no = parseInt(flag);
	location.href="/test/getStockInfo.mdo?stock_no=" + stock_no;
}


</script>
</body>
</html>