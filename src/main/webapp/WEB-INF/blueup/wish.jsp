<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/view/mlb/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

<form id ="srchForm" action ="/mypage/wishlist/list" method="post" >
	<!-- 컨텐츠 시작 -->
	<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">위시리스트</h2>
		<nav id="lnb" class="lnb-nav">
        <strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
    	<p id="id"><b></b>님</p><br/><p>반갑습니다.</p>
    	<hr class="hr-ddd" />
    	
    	<ul class="nav-mnlist">
    		<li id="myNavi1">
    			<a href="javascript:;"><span>주문정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/order/list"><span>주문/배송조회</span></a>
    				</li>
    				<li>
    					<a href="/mypage/claim/list"><span>취소/교환/반품 조회</span></a>
    				</li>
    				<li>
    					<a href="/mypage/order/receipt/list"><span>증빙서류 조회</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi2">
    			<a href="javascript:;"><span>활동정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/wishlist/list"><span>위시리스트</span></a>
    				</li>
    				<li>
    					<a href="/mypage/todaygood/list"><span>최근 본 상품</span></a>
    				</li>
    				<li>
    					<a href="/mypage/goods/reviewView"><span>상품리뷰</span></a>
    				</li>
    				<li>
    					<a href="/mypage/inquiry/list"><span>1:1 문의</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi3">
    			<a href="javascript:;"><span>혜택정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/benefit/listMileage"><span>마일리지</span></a>
    				</li>
    				<li>
    					<a href="/mypage/benefit/listPoint"><span>포인트</span></a>
    				</li>
    				<li>
    					<a href="/mypage/benefit/listCoupon"><span>쿠폰함</span></a>
    				</li>
    				<li>
    					<a href="/mypage/benefit/membershipRateInfo"><span>회원혜택안내</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi4">
    			<a href="javascript:;"><span>회원정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/member/deliveryLocationList"><span>배송지 관리</span></a>
    				</li>
    				<li>
    					<a href="/mypage/member/modifyMemberView"><span>회원정보 수정</span></a>
    				</li>
    				<li>
    					<a href="/mypage/member/secessionMemberView"><span>회원탈퇴</span></a>
    				</li>
    			</ul>
    		</li>
    	</ul>
    	</nav>
		<main class="contents wishList-wrap" id="contents">
			<div class="location-contents">
				<p class="location">
					<!-- <span>Home</span><span>마이페이지</span><span>활동정보</span><strong title="현재 위치">위시리스트</strong> -->
					<span>Home</span>
					<span>마이페이지</span>
					<span>활동정보</span>
					<strong title="현재 위치">위시리스트</strong>

				</p>
			</div>

			<div class="tbst-div">
				<div class="mid fl">
					<span>전체</span> (<span class="text-color01"><em class="num" id="wishListCnt">${fn:length(wishList)}</em></span>건)
				</div>
				<div class="mid fr">
					<a href="#" class="btn fill sm" onclick="javascript:deleteAllWishList(); return false;" data-ga-category="PC_MLB_위시리스트" data-ga-action="전체삭제"><span>전체삭제</span></a>
				</div>
			</div>

			<hr class="hr-666" />
			<div id="includeWishList">
				<!--
					<p class="list-noneinfo">위시리스트 보관 상품이 없습니다.<br>상품을 위시리스트에 담아 두시면 언제든지 쉽게 상품을 찾으실 수 있습니다.</p>
					<form id="srchForm" action="" method="post">
						<input type="hidden" name="_csrf" value="e10c8807-8415-4905-b1ec-a9230cf6bc3f">
						<input type="hidden" name="wishlstSn" id="wishlstSn" value="">
						<input type="hidden" name="godTurn" id="godTurn" value="">
					</form>
				-->
				<div>
					<ul>
						<c:forEach var="wishList" items="${wishList}" varStatus="status">
						<c:if test="${status.count % 4 == 1 }">
							<li style="display:inline-flex;">
						</c:if>
							<div style="width:250px; margin:0 auto;">
								<img src="${wishList.main_image}" style="width:242px;height:242px;margin-top:27px;">
								<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/x.png" style="width:10px;height:10px; position:relative; top:-19em; right:-16.5em;">
							<div style="width:242px; text-align:center;">  
								<p style="font-size:14px; font-family:Noto Sans Korean;margin-bottom:5px;"><a href="#" onclick="#">${wishList.product_name}</a></p>
								<p style="text-align:center; margin-bottom:5px;"><strong><fmt:formatNumber value="${wishList.product_price}" pattern="#,###,###"/>원</strong></p>
							</div>
							<div style="width:242px; display: flex;">
								<a href="#" style="display: flex; text-align:center;"><span style="width:242px; border:1px solid black; padding:5px 10px;">장바구니</span></a>
							</div>
							</div>
						<c:if test="${status.count % 4 == 0 }">
							</li>
						</c:if>
						</c:forEach>
					</ul>
					
				</div>
			</div>
			<hr class="hr-ddd" />
		</main>
		</div>
	</div>
	<!--// 컨텐츠 끝 -->
</form>
<%@ include file="/view/mlb/footer.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	//sessionStorage.setItem("userID", "이채린");
	var userID = sessionStorage.getItem("userID");
		if(userID != null){
			$('#id').text(userID);
		}else{
			$('#id').text("비회원");
		}
});
</script>
</body>
</html>