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
<input type="button" class="button" onclick="getProductInfo()" value="리뷰 작성"/>
 <input type="button" class="button" onclick="getReviewproductList()" value="작성 가능한 리뷰"/> 
<script type="text/javascript">
	function getProductInfo(){
		var user_no = localStorage.getItem("user_no");
		var product_no = 101001; 
		location.href='/test/getProductInfoForReview.do?user_no='+ user_no +'&product_no=' + product_no;
	}
	 function getReviewproductList(){
		 var user_no = localStorage.getItem("user_no");
		location.href='/test/getReviewproductList.do?user_no='+ user_no ;
	} 
</script>
</body>
</html>