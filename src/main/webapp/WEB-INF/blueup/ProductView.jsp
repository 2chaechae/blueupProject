<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/mlb/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 컨텐츠 시작 -->
<div class="contain dp list dep3" id="contain">
	<div class="container">
		<main class="contents" id="contents">
			<div class="dpth1Nm blind">APPAREL</div>
			<div class="dpth2Nm blind">MLB 셋업</div>
			<div class="dpth3Nm blind"></div>
			<!-- 카테고리 메뉴 -->
			<div class="dp_cate_top">
				<h3 id="cate" style="font: bold 40px/1.5em 'Nanum Myeongjo', serif; text-align:center" >${Category.get(0).category_name}</h3>
				<div style="text-align:center; font-size:20px; padding:30px 30px;">
					<c:forEach var="category" items="${Category}">
						<a href="javascript:void(0)" onclick="checkCategoryDown(this)" style="display:inline-block; zoom:1; display:inline; padding-right:20px;">${category.detailed_category_name}</a>
					</c:forEach>
					<hr style="margin-top:10px;">
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
									  <a href="#"
                                 onclick="javascript:gaTagging('/goods/LA-다저스/맨투맨/3AMTB0414-07LDD','3AMTB0414-07LDD','베이직 중앙 스몰로고 오버핏 맨투맨 (셋업) LA다저스','69000','엠엘비','MLB 셋업','0','','','프리미엄하게 즐기는 TONE-ON-TONE 셋업','2442','0','Lavender','겉감:면 62%, 겉감:폴리에스터 38%, 부속:면 97%, 부속:폴리우레탄 3%','','','/goods/LA-다저스/맨투맨/3AMTB0414-07LDD','21F','','/goods/thnail/m/20210818/3AMTB0414-07LDD-45293041248757105.png');"
                                 class="goDetail">
											<span class="img"><img src="${product.main_image}" class="first">
											</span>
										</a>
									</div>
									<div class="info">
										<div class="name">${product.product_name}
											<p class="heart" style="display:inline-block;">
												<c:set var="wish" value="${product.wish_no}"></c:set>
												<c:choose>
													<c:when test="${wish ne 0}">
														<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png" alt="찜" width="25" height="23" onclick="heart(this)"></p></div>
													</c:when>
													<c:when test="${wish eq 0}">
														<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png" alt="찜" width="25" height="23" onclick="heart(this)"></p></div>
													</c:when>
												</c:choose>
										<div class="prc">
											<em class="p">${product.product_price}원</em>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					<div style="display: block; text-align: center;">
							<c:if test="${pageMaker.startPage != 1 }">
								<a
									href="/test/getProduct.do?pageNum=${pageMaker.startPage - 1 }">&lt;</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == cri.page }">
										<b>${p }</b>
									</c:when>
									<c:when test="${p != cri.page }">
										<a
											href="/test/getProduct.do?pageNum=${p }">${p }</a>
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
//var id = sessionStorage.getitem("userNO");
var id = 1;

// 하트 눌렀을 때 : 회원 db 위시리스트 , 비회원 쿠키에 상품번호 추가
function heart(element){
var img = $(element).attr("src");
	alert(img);
	// 회원 위시리스트
	if(id != null){
		if(img == "https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png"){
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png");
			var p_no = $(element).closest('li').prev().prev().val();
			console.log(p_no);
				$.ajax({
					url:'/test/insertWishList.do',
				    type:'POST',
				   	cache:false,
					data: {"user_no":id , "product_no":p_no},
					success:function() {
						alert('위시리스트에 담겼습니다.');
					},
					error:function() {
						alert('다시 시도해주세요');
					}
				});
		}else{
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png");
			var w_no = $(element).closest('li').prev('.wish_no').val();
			console.log(w_no);
				$.ajax({
					url:'/test/deleteWishList.do',
				    type:'POST',
				   	cache:false,
					data: {"user_no":id , "wish_no":w_no},
					success:function() {
						alert('제외되었습니다.');
					},
					error:function() {	
						alert('다시 시도해주세요');
					}
				});
		}
	// 비회원 위시리스트
	}else{
		var no = $(element).closest('li').prev().prev().val();
		console.log(no);
		//쿠키 생성 & 내용 추가
		if(img == "https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png"){
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart_hover.png");
			var getlist = $.cookie('product');
				if(getlist == undefined){
					var cookieList = new Array();
					cookieList.push(no);
					$.cookie('product', cookieList);
					console.log("첫번째값 넣기 :" + cookieList);
				}else{
					var cookieValue = getlist.split(',');
					console.log("기존쿠키: " + cookieValue);
					cookieValue.push(no);
					console.log("두번째 쿠키 넣기 : " + cookieValue);
					$.cookie('product', cookieValue);

				}
		// 쿠키삭제 & 내용 삭제
		}else{
			$(element).attr("src","https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/heart.png");
			var cookieValue = $.cookie('product');
				cookieValue.pop(no);
				$.removeCookie('product');
				$.cookie('product', cookieValue);
			}
		}
	}
</script>
<%@ include file="/view/mlb/footer.jsp"%>
</body>
</html>