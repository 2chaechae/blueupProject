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
				<h2 class="title01">리뷰 작성</h2>
				<p class="location">
					<span><a href="/">Home</a></span> <strong>구매확정</strong>
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
				<tr><th scope="row"><label for="boardWriteTitle">상품정보</label>
				  
				 </th>
				<td><img src="https://blueup.s3.ap-northeast-2.amazonaws.com/product/top/t.jpg" width="200"
											height="210"></td> <%-- 나중에  src="${REVIEW_PHOTO.photo1}"등으로 고쳐야 함 --%>
				</tr>
				<tr></tr><tr></tr><tr></tr>
				<!-- 여기에 디비에서 구매한 COLOR,CLOTHES_SIZE,PRODUCT_NAME 적어야함. -->
					<tr>
					
						<th scope="row"><label for="boardWriteTitle">제목</label> <span
							class="required">*</span></th>
						<td><input type="text" id="boardWriteTitle"
							class="input-style01" name="csoMtmInq.inqSj"
							placeholder="30자 미만으로 입력해 주세요." style="width: 515px;"> <span
							class="error-msg" id="boardWriteTitle-msg" style="display: none;"></span>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="boardWriteContent">내용</label> <span
							class="required">*</span></th>
						<td><textarea cols="30" rows="10" id="boardWriteContent"
								placeholder="1,000자 미만 (특수문자 \ / : < > ; 사용불가)으로 입력해 주세요."
								style="width: 1000px; height: 150px;"><%-- ${content들어가 } --%></textarea>
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
								
								<!-- <div >
									<input class="input_ea" type="file">
								</div> -->
								<span>
										<input type="file" id="fileSearch" name="files" onchange="javascript:filetest(this);">
										
									</span>
							</div></td>
					</tr>
					
				</tbody>
			</table>
		</div>

		<div class="btnWrapBox">
			<!-- <a href="#" id="cancelBtn" class="btn btn-style03">취소</a> -->
			<!--  <a href="#" id="regBtn" class="btn fill btn-style02">저장</a> -->
			<input type="button" class="button" onclick="location.href='/test/reviewWriteForm.do' " value="취소"/>
			<input type="button" class="button" onclick="location.href='/test/getReviewList.do' " value="저장"/>
			<!-- 저장 시 디비 insert -->
		</div>
		<br>

		<%@ include file="/footer.jsp"%>
		</body>
		</html>