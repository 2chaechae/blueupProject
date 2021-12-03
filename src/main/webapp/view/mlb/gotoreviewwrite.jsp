<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 쓰기 창가기(나중에 구매확정창에 버튼으로 옮김)</title>
</head>
<body>
<br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<input type="button" class="button" onclick="getProductInfoForReview()" value="리뷰 작성"/>
<input type="button" class="button" onclick="getReviewproductList()" value="작성 가능한 리뷰"/> 
<input type="button" class="button" onclick="reviewModifyWrite()" value="수정폼"/> 
<!-- <input type="button" class="button" onclick="getReviewList()" value="작성한 리뷰"/> -->
<script type="text/javascript">
function getProductInfoForReview(){
	var user_no = localStorage.getItem("user_no");
	var order_detail_no = 25;
	var order_no = 2; /* 나중에 구매확정에서 product_no갖고와야함 */
	location.href='/test/getProductInfoForReview.do?user_no='+ user_no +'&order_detail_no=' + order_detail_no
			          +'&order_no=' + order_no;
}
	/* function getProductInfo(){
		var user_no = localStorage.getItem("user_no");
		var product_no = localStorage.getItem("product_no"); 
		location.href='/test/getProductInfoForReview.do?user_no='+ user_no +'&product_no=' + product_no;
	} */
/* 	function getReviewList(){
		 var user_no = localStorage.getItem("user_no");
		location.href='/test/getReviewList.do?user_no='+user_no ;
		
	 } */
	 function getReviewproductList(){
		 var user_no = localStorage.getItem("user_no");
		location.href='/test/getReviewproductList.do?user_no='+user_no ;
		
	 } 
	 function reviewModifyWrite(){
		 var user_no = localStorage.getItem("user_no");
		 var review_no = localStorage.getItem("review_no");
		location.href='/test/modifyReview.do?user_no='+user_no +'&review_no=' + review_no ;
		
	 } 
</script>
</body>
</html>