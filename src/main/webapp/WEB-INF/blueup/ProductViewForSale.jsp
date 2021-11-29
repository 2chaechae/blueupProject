<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 컨텐츠 시작 -->
<div class="contain dp list dep3" id="contain">
	<div class="container">
		<main class="contents" id="contents">
			<div class="dpth1Nm blind">APPAREL</div>
			<div class="dpth2Nm blind">MLB 셋업</div>
			<div class="dpth3Nm blind"></div>
			<!-- 카테고리 메뉴 -->
			<div class="dp_cate_top">
				<h3 id="cate" style="font: bold 40px/1.5em 'Nanum Myeongjo', serif; text-align:center" >${Category}</h3>
				<div style="text-align:center; font-size:20px; padding:30px 0;">
					<a href="javascript:void(0)" onclick="checkCategoryDown(this)" style="display:inline-block; zoom:1; display:inline; padding-right:20px;">${Category}</a>
				<div style="margin-top:30px;"><hr></div>
				</div>
			</div>
			<!-- //카테고리 메뉴 (일자형식으로 바꾸기) -->
			<section class="mds-section dp_list_sec">
				<div class="ui_dp_list">
					<ul class="list">
						<c:forEach var="product" items="${Product}">
							<input type="hidden" class="product_no" value="${product.product_no}"/>
							<input type="hidden" class="wish_no" value="${product.wish_no}"/>
							<li>
								<div class="item">
									<div class="thumb">
									  <a>
											<span class="img"><img onclick="viewCount(this)" src="${product.main_image}" class="first">
											</span>
										</a>
									</div>
									<div class="info">
										<div class="name">${product.product_name}
											<p class="heart" style="display:inline-block;">
												<c:set var="wish" value="${product.wish_no}"></c:set>
												<c:out value="${wish}"/>
												<c:choose>
													<c:when test="${wish ne 0}">
														<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png" alt="찜" width="25" height="23" onclick="heart(this)"></p></div>
													</c:when>
													<c:when test="${wish eq 0}">
														<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png" alt="찜" width="25" height="23" onclick="heart(this)"></p></div>
													</c:when>
												</c:choose>
										<div class="prc">
											<fmt:formatNumber var="formatNumber" value="${product.product_price}" pattern="#,###" />
											<em class="p">${formatNumber}원</em>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					<div style="display: block; text-align: center; width:1310px; margin : 0 auto;">
							<c:if test="${pageMaker.startPage != 1 }">
								<a
									href="/test/getProduct.do?pageNum=${pageMaker.startPage - 1 }">&lt;</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == cri.page }">
										<b>|&nbsp;${p}&nbsp;|</b>
										
									</c:when>
									<c:when test="${p != cri.page }">
										<a
											href="/test/getProduct.do?pageNum=${p }">|&nbsp;${p}&nbsp;|</a>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${pageMaker.endPage != pageMaker.tempEndPage}">
								<a
								href="/test/getProduct.do?pageNum=${pageMaker.endPage+1 }">&gt;</a>
							</c:if>
						</div>
				</section>
		</main>
	</div>
</div>
<!--// 컨텐츠 끝 -->
<script type="text/javascript">
var user_no = localStorage.getItem("user_no");

// 하트 눌렀을 때 : 회원 db 위시리스트 , 비회원 쿠키에 상품번호 추가
function heart(element){
var img = $(element).attr("src");
	/////////////////회원 위시리스트////////////////
	if(user_no != null){
		if(img == "https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png"){
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png");
			var product_no = $(element).closest('li').prev().prev().val();
			console.log(product_no);
				$.ajax({
					url:'/test/insertWishList.do',
				    type:'POST',
				   	cache:false,
					data: {"user_no":user_no , "product_no":product_no},
					success:function() {
						alert('위시리스트에 담겼습니다.');
					},
					error:function() {
						alert('다시 시도해주세요');
					}
				});
		}else{
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png");
			var wish_no = $(element).closest('li').prev('.wish_no').val();
			console.log(wish_no);
				$.ajax({
					url:'/test/deleteWishList.do',
				    type:'POST',
				   	cache:false,
					data: {"user_no":user_no , "wish_no":wish_no},
					success:function() {
						alert('제외되었습니다.');
					},
					error:function() {	
						alert('다시 시도해주세요');
					}
				});
		}
	}else{
		/////////////////비회원 위시리스트////////////////
		var product_no = $(element).closest('li').prev().prev().val();
		console.log(product_no);
		//쿠키 생성 & 내용 추가
		if(img == "https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png"){
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png");
			var getlist = $.cookie('p_list');
				if(getlist == undefined){
					var cookieList = product_no + "/";
					$.cookie('p_list', cookieList);
					console.log("첫번째값 넣기 :" + cookieList);
				}else{
					console.log("기존쿠키: " + getlist);
					getlist += product_no;
					getlist += "/";
					console.log("두번째 쿠키 넣기 : " + getlist);
					$.cookie('p_list', getlist);
				}
		// 쿠키삭제 & 내용 삭제
		}else{
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png");
			var cookieValue = $.cookie('p_list');
			console.log("기존쿠기 : " +  cookieValue);
			var remove = cookieValue.split("/");
			var cookieList= "";
			for(var check of remove){
				if( check != product_no){
					console.log(check);
					cookieList += check;
					cookieList += "/";
				}
			}
				console.log(cookieList);
				$.removeCookie('p_list');
				console.log("쿠키삭제");
				$.cookie('p_list', cookieList);
				console.log("쿠키생성");
			}
		}
	}
	
function viewCount(element){
	var product_no = $(element).closest('li').prev().prev().val();
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
</script>
<%@ include file="/view/mlb/footer.jsp"%>
</body>
</html>