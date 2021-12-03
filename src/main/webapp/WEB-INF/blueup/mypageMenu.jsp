<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<script>
	var user_no;
	var user_name;
	var user_id;
	$(document).ready(function() {
		user_no = localStorage.getItem("user_no");
		user_name = localStorage.getItem("user_name");
		user_id = localStorage.getItem("user_id");
		if(user_no != null){
			$('#user_name').html('<b>' + user_name + '</b>님<br/>반갑습니다.');
		}else{
			$('#user_name').html('<b> 비회원</b>님<br/>반갑습니다.');
		}
	});

	function toQna() {
		location.href = "/test/qnaList.do?user_no=" + user_no + "&pageNum=1";
	}
	function toPoint() {
		location = '/test/point.do?pageNum=1&user_no=' + user_no;
	}
	function toCoupon() {
		location.href = '/test/coupon.do?pageNum=1&user_no=' + user_no;
	}
	function toModify() {
		location.href = '/test/userInfo.do?user_no=' + user_no;
	}
	function orderlist(){
		location.href= "/test/getOrderList.do?user_no=" + user_no;
	}
	
	function toWishList(){
		location.href="/test/getWishList.do?user_no="+user_no;
	}
	
	function getBenefitPage(){
		location.href="/test/getBenefitPage.do";
	}
	
	function toReview(){
		location.href='/test/getReviewproductList.do?user_no='+user_no;
	}
	
	function deleteMember(){
		location.href='/test/pwchkPage.do?user_no='+user_no;
	}
	
</script>
<nav id="lnb" class="lnb-nav">
        <strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
    	<p id="user_name"></p>
    	<hr class="hr-ddd" />
    	
    	<ul class="nav-mnlist">
    		<li id="myNavi1">
    			<a href="javascript:;"><span>주문정보</span></a>
    			<ul>
    				<li>
    					<a href="#" onClick="orderlist();return false"><span>주문/배송조회</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi2">
    			<a href="javascript:;"><span>활동정보</span></a>
    			<ul>
    				<li>
    					<a href="#" onClick="toWishList();return false"><span>위시리스트</span></a>
    				</li>

    				<li>
    					<a href="#" onClick="toReview()"><span>상품리뷰</span></a>
    				</li>
    				<li>
    					<a href="#" onClick="toQna();return false"><span>QnA</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi3">
    			<a href="javascript:;"><span>혜택정보</span></a>
    			<ul>
    				<li>
    					<a href="#" onClick="toPoint();"><span>포인트</span></a>
    				</li>
    				<li>
    					<a href="#" onClick="toCoupon();"><span>쿠폰함</span></a>
    				</li>
    				<li>
    					<a href="#" onClick="getBenefitPage();"><span>회원혜택안내</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi4">
    			<a href="javascript:;"><span>회원정보</span></a>
    			<ul>
    				<li>
    					<a href="#" onClick="toModify();"><span>회원정보 수정</span></a>
    				</li>
    				<li>
    					<a href="#" onClick="deleteMember();"><span>회원탈퇴</span></a>
    				</li>
    			</ul>
    		</li>
    	</ul>
    	</nav>