<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 컨텐츠 시작 -->
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/order/order.util.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/order/cart.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript"
	src="//script.about.co.kr/templates/script/cm/adbay.cart.controller.js"></script>

<script type="text/javascript"
	src="/javascript/message/cart_ko.js?v=prod-version-858_20211102145956"></script>

<div id="adbay_cart" style="display: none;"></div>
<style>
/* 버튼css */
.button {
	background-color: black;
	border: none;
	color: white;
	padding: 10px 60px; /* 높이와 길이 */
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 12px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
<!-- 컨텐츠 시작 -->
<div class="contain od list" id="contain">
	<div class="container">
		<div class="location-container">
			<div class="location-contents">
				<h2 class="title01">리뷰 수정</h2>.
				<p class="location">
					<span><a href="/">Home</a></span> <span><a href="/">마이페이지</a></span><span><a href="/">내가 작성한 리뷰</a></span><strong>리뷰 수정</strong>
				</p>
			</div>
		</div>
		<br>
		<div class="board-write">
			<table summary="약관 입력">
				<caption>QnA</caption>
				<colgroup>
					<col style="width: 200px;">
					<col>
				</colgroup>
				<tbody>
				<tr><th scope="row">
				<label for="boardWriteTitle">상품정보</label>
				<div></div>
				<td width="100px"><input value="${modifyReview.product_name}" id="product_name"></td>
				<td width="100px">  <input value="${modifyReview.product_color}" id="product_color"></td>
				<td width="100px"><input value="${modifyReview.product_size}" id="product_size"></td>
				 </th>
				 <%-- 나중에  src="${REVIEW_PHOTO.photo1}"등으로 고쳐야 a함 --%>
				</tr>
				<tr></tr><tr></tr><tr></tr>
					 <tr>
						<th scope="row"><label for="boardWriteTitle">수정 제목</label> <span
							class="required">*</span></th>
						<td><input type="text" id="modifyTitle"
							class="input-style01" name="csoMtmInq.inqSj"
							placeholder="30자 미만으로 입력해 주세요." style="width: 515px;" value="${modifyReview.review_title}"> 
							
							<span
							class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
						</td></tr> 
						
					
					<tr>
					
						<th scope="row"><label for="boardWriteTitle">별점</label> </th>
						<td><input type="text" id="modifyStar"
							class="input-style01" name="csoMtmInq.inqSj"
							placeholder="별점" style="width: 100px;" value="${modifyReview.star}">점
							<span
							class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
						</td>
					</tr>
					
						<th scope="row"><label for="boardWriteContent">내용</label> <span
							class="required">*</span></th>
						<td><textarea cols="30" rows="10" id="modifyContent"
								placeholder="1,000자 미만 (특수문자 \ / : < > ; 사용불가)으로 입력해 주세요."
								style="width: 750px; height: 150px;" >${modifyReview.review_content}</textarea>
							<div class="clearfix">
								<div class="fl">
									<span class="error-msg" id="boardWriteContent-msg"
										style="display: none;"></span>
									<!-- 더 이상 입력하실 수 없습니다. -->
								</div>
								<div class="fr">
									<span class="txt13-999"><em class="txt13-000"
										id="counter">0</em>자/1,000자</span>
										
								</div>
								
								<tr>
								<th scope="row"><label for="boardWriteTitle">리뷰 사진</label> </th><td>
								<span>
										<input type="file" id="fileSearch" name="files" onchange="javascript:filetest(this);">
										
									</span></td></tr>
							</div></td>
					</tr>
					
				</tbody>
			</table>
		</div>

		<div class="btnWrapBox" >
			<input type="button" class="button" onclick="getProductInfo()" value="취소"/> <!-- 내가쓴리뷰페이지로 -->
			<input type="button" class="button" id='modifyBtn' value="수정"/>
			<input type="hidden" id="review_no" class="review_no" value="${modifyReview.review_no}"/>
			<!-- 저장 시 디비 insert -->
		</div>
		<br>
<script type="text/javascript">
function getProductInfo(){
	var user_no = localStorage.getItem("user_no");
	var product_no = localStorage.getItem("product_no"); /* 나중에 구매확정에서 product_no갖고와야함 */
	alert('수정을 취소하시겠습니깡??')
	location.href='/test/getProductInfoForReview.do?user_no='+ user_no +'&product_no=' + product_no;
	
}

$(document).ready(function(){
    //수정 버튼 클릭 시
    $('#modifyBtn').on('click',function(){
    	var user_no = localStorage.getItem("user_no");
    	var review_no = $('#review_no').val();
        var review_title = $('#modifyTitle').val();
        var star = $('#modifyStar').val();
        var review_content = $('#modifyContent').val();
      
       		$.ajax({
       			url : '/test/modifyupdateReview.do',
       			type : 'POST',
       			cache : false,
       			data : {
       				"user_no" : user_no, "review_no" : review_no,
       				"review_title" : review_title, "star" : star,
       				"review_content" : review_content
       	        		
					},
				success:function(data){
					if(data == 1){
						alert("수정이 되었습니다.");
						location.href="/test/getReviewList.do?user_no="+user_no;
					}
				},
				error:function(){
					alert("다시 시도해주세요");
				}
       		});
    });
    
 });
	

	
	
</script>
		<%@ include file="/footer.jsp"%>
		</body>
		</html>