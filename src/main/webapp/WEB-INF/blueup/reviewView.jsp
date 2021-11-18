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
										<li><a href="#tab1">작성가능한 리뷰</a></li>
										<li><a href="#tab2">내가 작성한 리뷰</a></li>
									</ul>

									<!--탭 콘텐츠 영역 -->
									<div class="tab_container">

										<div id="tab1" class="tab_content">
											<!--Content-->




										</div>


										<div id="tab2" class="tab_content">
											<!--Content-->
											<colgroup>
												<col style="width: 35px">
												<col style="width:">
												<col style="width: 110px">
												<col style="width: 110px">
												<col style="width: 110px">
											</colgroup>
											<tr>


												<th scope="col">별점</th>
												<th scope="col">후기 사진</th>
												<th scope="col">상품정보</th>
												<th scope="col">후기 제목</th>
												<th scope="col">후기 내용</th>

												<th><br>
												<input type="button" class="button" value="수정" /><br> <input
													type="button" class="button" value="삭제" /></th>

												<%-- </tr>
											<!-- 여기에 내가쓴 리뷰들 목록 갖고 오기 -->
										</div>
										<c:forEach var="review" items="${getReviewList}" varStatus="status"></c:forEach>
										<tr>
												<td><img src="${cart.main_image}" width="100"
											height="110"></td>
										<td>${review.product_name }<br>${review.color}/${review.clothes_size}
											&nbsp;<input type="button" class="button" value="수정"/>
											${review.product_no }
										</td></tr>  --%>
												<c:forEach var="notice" items="${getReviewList}"
													varStatus="status">
													<input type="hidden" value="${review.review_no}"></input>
													<tr>
														<td>${review.product_name}</td>
														<td>${review.star}</td>
														<td>${review.product_color}</td>
														<td>${review.product_size}</td>
														
														<!-- 공지사항 링크 -->
													</tr>
												</c:forEach>
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
<script>

	</script>
<%@ include file="footer.jsp"%>
</body>
</html>