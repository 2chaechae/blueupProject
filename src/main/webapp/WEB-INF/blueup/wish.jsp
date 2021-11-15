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
					<span>전체</span> (<span class="text-color01"><em class="num" id="wishListCnt"></em></span>건)
				</div>
				<div class="mid fr">
					<a href="javascript:void(0)" class="btn fill sm" onclick="deleteAll();" ><span>전체삭제</span></a>
				</div>
			</div>

			<hr class="hr-666" />
			<div id="includeWishList">
				<div>
					<ul>
						<c:forEach var="wishList" items="${wishList}" varStatus="status">
						<c:if test="${status.count < 1}">
							<p class="list-noneinfo">위시리스트 보관 상품이 없습니다.<br>상품을 위시리스트에 담아 두시면 언제든지 쉽게 상품을 찾으실 수 있습니다.</p>
						</c:if>
						<c:if test="${status.count % 4 == 1 }">
							<li style="display:inline-flex;">
						</c:if>
							<section class="wish">
							<input type="hidden" class="w" value="${wishList.wish_no}" />
							<input type="hidden" class="p" value="${wishList.product_no}" />
							<div style="width:250px; margin:0 auto;">
								<img src="${wishList.main_image}" style="width:242px;height:242px;margin-top:27px;">
								<img src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/x.png" onclick="delete_wish(this)" style="width:10px;height:10px; position:relative; top:-19em; right:-16.5em;">
							<div style="width:242px; text-align:center;">  
								<p style="font-size:14px; font-family:Noto Sans Korean;margin-bottom:5px;"><a href="#" onclick="#">${wishList.product_name}</a></p>
								<p style="text-align:center; margin-bottom:5px;"><strong><fmt:formatNumber value="${wishList.product_price}" pattern="#,###,###"/>원</strong></p>
							</div>
							<div style="width:242px; display: flex;">
								<a href="javascript:void(0)" onclick="option(this)" style="display: flex; text-align:center;"><span style="width:242px; border:1px solid black; padding:5px 10px;">장바구니</span></a>
							</div>
							</div>
							</section>
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
//sessionStorage.setItem("userID", "이채린");
//sessionStorage.setItem("userNO", 1); 	//회원
var userID = sessionStorage.getItem("userID");
var userNO = sessionStorage.getItem("userNO");
$(document).ready(function(){
		if(userID != null){
			alert("아이디ok");
			$('#id').text(userID);
			var count = ${fn:length(wishList)};
			$('em').text(count);
		}else{
			$('#id').text("비회원");
			var getlist = $.cookie('p_list');
			var cookieValue = getlist.split('/');
			console.log(cookieValue);
			var length = cookieValue.length;
			length = length - 1;
			console.log(length);
			$('em').text(length);
		}

});

function delete_wish(element){
	var product_no = $(element).closest('div').prev().val();
	var wish_no = $(element).closest('div').prev().prev().val();
	alert(product_no);
	alert(wish_no);
	if(userNO == null){
		userNO = 0;
	}
	$.ajax({
		url:'/test/deleteWishList.do',
		type:'POST',
		cache:false,
		data: {"user_no":userNO, "wish_no":wish_no, "product_no":product_no},
		success:function(data) {
			if(data == 1){
				$(element).closest('.wish').remove();
				var now = $('.num').text();
				console.log(now);
				var new_num = Number(now) - 1; 
				console.log(new_num);
				$('.num').text(new_num);
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

function deleteAll(){
	alert("test");
	if(userNO == null){
		$.removeCookie('p_list');
		$('.num').text(0);
		$('.wish').remove();
	}else{
		$.ajax({
			url:'/test/deleteWishAll.do',
		    type:'POST',
		   	cache:false,
			data: {"user_no":userNO},
			success:function(data) {
				alert('성공');
				if(data > 1){
				$('.wish').remove();
				$('.num').text(0);
				alert('모두 삭제되었습니다.');
				}
			},
			error:function() {
				alert('다시 시도해주세요');
			}
		});
	}
}

function option(element){
	alert("test");
	var product_no = $(element).closest('.wish').children('.p').val();
	alert(product_no);
	window.open("/test/getCartOption.do?product_no=" + product_no,"height=300", "width=500");
}

function moveToCart(){
	sessionStroage.setItem("userNO", 1);
	var userNO = sessionStroage.getItem("userNO");
	location.herf="/test/getcartList.do?user_no=" + userNO;
}
</script>
</body>
</html>