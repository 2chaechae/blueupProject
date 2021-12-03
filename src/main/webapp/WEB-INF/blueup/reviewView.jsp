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
<script type="text/javascript"
	src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<form id="srchForm" action="/mypage/inquiry/list" method="post">
	<input type="hidden" name="srchMtmInqSn" value="" /> <input
		type="hidden" name="_csrf"
		value="e10c8807-8415-4905-b1ec-a9230cf6bc3f" /> <input type="hidden"
		name="pageNo" id="pageNo" value="" />

	<!-- 컨텐츠 시작 -->
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">상품리뷰</h2>
			<%@ include file="mypageMenu.jsp"%>
			<main class="contents oto_inquiryList-wrap" id="contents">

				<div class="location-contents">
					<p class="location">
						<span>Home</span> <span>마이페이지</span> <span>활동정보</span> <strong
							title="현재 위치">상품리뷰</strong>
					</p>
				</div>

				<p class="txt13-666">리뷰 작성 시, 온/오프라인에서 사용 가능한 마일리지를 적립해드립니다.
					(포토리뷰 1,000원/텍스트리뷰 500원)</p>

				<div class="d_tab02">

					<div class="crema-reviews" data-type="managing-reviews"></div>
					<tr>
						<td>
							<style type="text/css">
body {
	font-family: "Malgun Gothic";
	font-size: 0.8em;
}
/*TAB CSS*/
ul.tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 32px; /*--Set height of tabs--*/
	border-bottom: 1px solid #999;
	border-left: 1px solid #999;
	width: 100%;
}

ul.tabs li {
	float: left;
	margin: 0;
	padding: 0;
	height: 31px;
	/*--Subtract 1px from the height of the unordered list--*/
	line-height: 31px; /*--Vertically aligns the text within the tab--*/
	border: 1px solid #999;
	border-left: none;
	margin-bottom: -1px; /*--Pull the list item down 1px--*/
	overflow: hidden;
	position: relative;
	background: #e0e0e0;
}

ul.tabs li a {
	text-decoration: none;
	color: #000;
	display: block;
	font-size: 1.2em;
	padding: 0 20px;
	/*--Gives the bevel look with a 1px white border inside the list item--*/
	border: 1px solid #fff;
	outline: none;
}

ul.tabs li a:hover {
	background: #ccc;
}

html ul.tabs li.active, html ul.tabs li.active a:hover {
	/*--Makes sure that the active tab does not listen to the hover properties--*/
	background: #fff;
	/*--Makes the active tab look like it's connected with its content--*/
	border-bottom: 1px solid #fff;
}

/*Tab Conent CSS*/
.tab_container {
	border: 1px solid #999;
	border-top: none;
	overflow: hidden;
	clear: both;
	float: left;
	width: 100%;
	background: #fff;
}

.tab_content {
	padding: 20px;
	font-size: 1.2em;
}
/* 버튼css */
.button {
	background-color: black;
	border: none;
	color: white;
	padding: 7px 20px; /* 높이와 길이 */
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style> <script type="text/javascript">
	$(document).ready(function() {

		//When page loads...
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content

		//On Click Event
		$("ul.tabs li").click(function() {

			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content

			var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active ID content
			return false;
		});

	});
</script>

							</head>
							<body>
								<td></td>
								<div id="wrapper">
									<!--탭 메뉴 영역 -->
									 <ul class="tabs">
										<li><a href="#tab1" onclick="location.href='/test/getReviewproductList.do?user_no='+${getReviewList.get(0).user_no}" >작성가능한 리뷰</a></li>
										<li><a href="#tab2" onclick="location.href='/test/getReviewList.do?user_no='+${getReviewproductList.get(0).user_no}" >내가 작성한 리뷰</a></li>
									</ul> 

									<!--탭 콘텐츠 영역 -->
									<div class="tab_container">
										<div id="tab1" class="tab_content" >
											<!--Content-->

											<c:forEach var="review" items="${getReviewproductList}" varStatus="status">
													<!-- var 뜻은 review라 부르겠다하는것. for문 돌릴때 쓰는거	 -->
											<div>
											<tr>
											
                                   <img src="${review.main_image}" onclick="viewCount(this)" width="150px" height="150px" >
                                   <input type="hidden" id="product_no" class="product_no" name="product_no" value="${reviewlist.product_no}"/>
										<td width="100px">상품 이름: ${review.product_name}</td>
										<td width="60px">상품 수량: ${review.quantity} 개 </td>
										<td width="100px">상품 색상:  ${review.product_color}</td>
										<td width="100px">상품 사이즈: ${review.product_size}</td>
										<input type="hidden" id="product_no" class="product_no" name="product_no" value="${reviewlist.product_no}"/>
										<input type="hidden" id="order_detail_no" class="order_detail_no" value="${review.order_detail_no}"/>
										<input type="button" class="button" onclick="writeReview(this)" id="writeone" value="리뷰 쓰기"/>
										<input type="hidden" id="order_no" class="order_no" value="${review.order_no}"/>
										<br>
				   </tr> 
				   </div>
											</c:forEach>
										</div>


										<div id="tab2" class="tab_content" >
											<!--Content-->
											<colgroup>
												<col style="width: 35px">
												<col style="width:">
												<col style="width: 110px">
												<col style="width: 110px">
												<col style="width: 110px">
											</colgroup>
											

												<!-- <th scope="col">별점</th>
												<th scope="col">후기 사진</th>
												<th scope="col">상품정보</th>
												<th scope="col">후기 제목</th>
												<th scope="col">후기 내용</th> -->
												
													<c:forEach var="reviewlist" items="${getReviewList}" varStatus="status">
													<!-- var 뜻은 review라 부르겠다하는것. for문 돌릴때 쓰는거	 -->
										<section class="review">
										<div>
											<tr>
							
							<br>		
							 <img src="${reviewlist.photo1}" width="150px" height="150px" >
							<br>
							
				<td width="100px">상품정보: ${reviewlist.product_name}</td>
				<td width="60px">${reviewlist.product_size}</td>
				<td width="60px">${reviewlist.product_color}</td>
				<br>
				<td width="100px"> 별점: ${reviewlist.star} 개</td>
										<td width="100px">제목: ${reviewlist.review_title}</td>
										<br>
										<td width="100px">내용 : ${reviewlist.review_content}</td>
										<br>
										<td width="70px">작성시간: ${reviewlist.review_time}</td>
										
										<input type="button" class="button" onclick="modifyReview()" id="modifyone" value="수정"/>
										<input type="button" class="button" onclick="deleteReview(this)" id="deleteone" value="삭제"/>	
										<input type="hidden" id="review_no" class="review_no" name="review_no" value="${reviewlist.review_no}"/>
										<input type="hidden" id="user_no" class="user_no" name="user_no" value="${reviewlist.user_no}"/>
										
				   </tr> 	
				   </div>
				   </section>
											</c:forEach>
												</div>

								
														<!-- 공지사항 링크 -->
													</tr>
										</div>

									</div>
							</body>
						</td>
					</tr>


				</div>
				<div class="contTxtBox">
					<strong>유의사항</strong>
					<ul class="text-list01">
						<li>구매확정하신 상품에 대해서만 리뷰를 작성하실 수 있으며, 구매확정 후 90일이 지난 상품에 대해서는
							리뷰를 작성하실 수 없습니다.</li>
						<li>[작성한 상품 리뷰] 페이지에서 작성하신 상품 리뷰를 확인할 수 있습니다.</li>
						<li>상품과 직접적으로 관계가 없는 내용이나 약관 및 법률 등에 위배되는 글은 고객님께 사전 동의없이
							미노출될 수 있습니다.</li>
						<li>다음과 같은 경우 리뷰가 제한되거나 관리자의 권한으로 삭제될 수 있습니다.
							<ul class="text-list02">
								<li>상품과 적합하지 않은 콘텐츠나 무관한 사진</li>
								<li>사이트 내 게시된 상품 및 전시 이미지 그대로 사용</li>
								<li>타 회원의 리뷰 도용</li>
								<li>내용이 부적합하거나 비속어 사용</li>
							</ul>
						</li>
					</ul>
				</div>
				<br> <br> <br>
		</div>

	</div>

</form>

<%-- <form id="movedmodifyReview" method="post" action="/test/modifyReview.do">
	<input type="hidden" id="review_no" name="review_no" value="${reviewList.get(0).review_no }"/>
</form> --%>
<script>
/* 리뷰 쓰기 */

 function writeReview(element){
 	var user_no = localStorage.getItem("user_no");
 	var order_detail_no = $(element).prev().val();
 	location.href='/test/getProductInfoForReview.do?user_no='+ user_no  +'&order_detail_no=' + order_detail_no ;
 }


/* 리뷰 수정 */
function modifyReview(){
	var user_no = localStorage.getItem("user_no");
	var review_no = $('#review_no').val();
	location.href='/test/modifyReview.do?user_no='+ user_no +'&review_no=' + review_no;
}
 
/* 상품 상세 */
function viewCount(element){
	var product_no = $(element).next().val();
	var user_no = localStorage.getItem("user_no");
	$.ajax({
		url:'/test/updateViewCount.do',
	    type:'POST',
	   	cache:false,
		data: {"product_no":product_no},
		success:function(data) {
			if(data == 1)
			console.log("조회수 증가 완료");
			if(user_no != null){
				location.href="/test/productDetail.do?product_no="+product_no+"&user_no="+user_no;
			}else{
				location.href="/test/productDetailNonMember.do?product_no="+product_no;
			}
		},
		error:function() {	
			console.log("조회수 증가 실패");
		}
	});
	
}
/* 리뷰 삭제 */
 function deleteReview(element){
	 var user_no = localStorage.getItem("user_no");
	var review_no = $(element).siblings('.review_no').val();
	$.ajax({
		url:'/test/deleteReview.do',
		type:'POST',
		cache:false,
		data: {
			"user_no":user_no, "review_no":review_no},
		success:function(data) {
			if(data == 1){
				alert("삭제 성공");
				$(element).closest('.review').remove(); 
				
			}
			 else{
				alert("삭제 실패")
			}
		},
		error:function() {
			alert('다시 시도해주세요');
		}
	});	
}  

</script>
<%@ include file="footer.jsp"%>
</body>
</html>