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
				<h2 class="title01">리뷰 작성</h2>.
				<p class="location">
					<span><a href="/">Home</a></span> <span><a href="/">구매확정</a></span><strong>리뷰 작성</strong>
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
				<img src="${getProductInfoForReview.main_image}" id="product_img" width="150px" height="150px" >
				<td width="100px"><input value="${getProductInfoForReview.product_name}" id="product_name"></td>
				<td width="60px"><input value="${getProductInfoForReview.quantity}" id="quantity"></td>
				<td width="100px">  <input value="${getProductInfoForReview.product_color}" id="product_color"></td>
				<td width="100px"><input value="${getProductInfoForReview.product_size}" id="product_size"></td>
				 </th>
				 <%-- 나중에  src="${REVIEW_PHOTO.photo1}"등으로 고쳐야 a함 --%>
				</tr>
				<tr></tr><tr></tr><tr></tr>
					 <tr>
						<th scope="row"><label for="boardWriteTitle">제목</label> <span
							class="required">*</span></th>
						<td><input type="text" id="boardWriteTitle"
							class="input-style01" name="csoMtmInq.inqSj"
							placeholder="30자 미만으로 입력해 주세요." style="width: 515px;" value="${insertReview.review_title}"> 
							
							<span
							class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
						</td></tr> 
						<tr><th scope="row"><label for="boardWriteTitle">아이디</label> <span
							class="required">*</span></th>
						<td><input type="text" id="user_id"
							class="input-style01" name="csoMtmInq.inqSj"
							placeholder="아이디를 입력해 주세요." style="width: 300px;" value="${insertReview.user_id}"> 
							
							<span
							class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
						</td>
					</tr>
					
					<tr>
					
						<th scope="row"><label for="boardWriteTitle">별점</label> </th>
						<td><input type="text" id="star"
							class="input-style01" name="csoMtmInq.inqSj"
							placeholder="별점" style="width: 100px;" value="${insertReview.star}">점 
							<span
							class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
						</td>
					</tr>
					<%-- <tr>
					
						<th scope="row"><label for="boardWriteTitle">작성시간</label> </th>
						<td><input type="text" id="review_time" placeholder="20XX-XX-XX"
							class="input-style01" name="csoMtmInq.inqSj"
							 style="width: 100px;" value="${insertReview.review_time}"> 
							<span
							class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
						</td>
					</tr> --%>
						<th scope="row"><label for="boardWriteContent">내용</label> <span
							class="required">*</span></th>
						<td><textarea cols="30" rows="10" id="content"
								placeholder="1,000자 미만 (특수문자 \ / : < > ; 사용불가)으로 입력해 주세요."
								style="width: 1000px; height: 150px;" >${insertReview.review_content}</textarea>
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
								<%-- <!-- 히든으로 뺀거 -->
								<input type="hidden" id="product_name" value="${getProductInfoForReview.product_name}"/>
								<input type="hidden" id="product_color" value="${getProductInfoForReview.product_color}"/>
								<input type="hidden" id="product_size" value="${getProductInfoForReview.product_size}"/>
								<input type="hidden" id="product_img" value="${getProductInfoForReview.product_img}"/> --%>
								<!-- <div >
									<input class="input_ea" type="file">
								</div> -->
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

		<div class="btnWrapBox">
			<!-- <a href="#" id="cancelBtn" class="btn btn-style03">취소</a> -->
			<!--  <a href="#" id="regBtn" class="btn fill btn-style02">저장</a> -->
			<input type="button" class="button" onclick="getProductInfo()" value="취소"/>
			<input type="button" class="button" id='submitBtn' value="저장"/>
			<!-- 저장 시 디비 insert -->
		</div>
		<br>
<script type="text/javascript">
function getProductInfo(){
	var user_no = localStorage.getItem("user_no");
	var product_no = localStorage.getItem("product_no"); /* 나중에 구매확정에서 product_no갖고와야함 */
	location.href='/test/getProductInfoForReview.do?user_no='+ user_no +'&product_no=' + product_no;
	
}

$(document).ready(function(){
    //저장 버튼 클릭 시
    $('#submitBtn').on('click',function(){
    	var user_no = localStorage.getItem("user_no");
    	var product_no = 101001; /*리뷰작성 버튼 생기면 변수로 받기*/
        var title = $('#boardWriteTitle').val();
        var star = $('#star').val();
        var content = $('#content').val();
        var user_id=$('#user_id').val();
        var product_name=$('#product_name').val();
        var product_size=$('#product_size').val();
        var product_color=$('#product_color').val();
        var main_image=$('#main_image').val();
        var quantity=$('#quantity').val();
       		$.ajax({
       			url : '/test/insertReview.do',
       			type : 'POST',
       			cache : false,
       			data : {
       				"user_no" : user_no, "product_no" : product_no, "title" : title, "star" : star, "content" : content,
       	        		"user_id" : user_id, "product_name": product_name, "product_size" : product_size, "product_color" : product_color,
						"main_image" : main_image, "quantity" : quantity
					},
				success:function(data){
					if(data == 1){
						alert("등록 성공");
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