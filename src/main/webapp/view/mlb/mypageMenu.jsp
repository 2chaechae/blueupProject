<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <script>
        var user_no;
        var user_name;
        var user_id;
    $(document).ready(function(){
 	   user_no = localStorage.getItem("user_no");
 	   user_name = localStorage.getItem("user_name");
 	   user_id = localStorage.getItem("user_id");
 	   $('#user_name').html('<b>'+user_name+'</b>님<br/>반갑습니다.');
 	});
    
    function toQna(){
	    	location.href="/test/qnaList.do?user_no="+user_no+"&pageNum=1";
	    }
    function toPoint(){
    	location='/test/point.do?pageNum=1&user_no='+user_no;
    }
    function toCoupon(){
    	location.href='/test/coupon.do?pageNum=1&user_no='+user_no;
    }
    function toModify(){
    	location.href='/test/userInfo.do?user_no='+user_no;
    }
    function getReviewproductList(){
    	location.href='/test/getReviewproductList.do?user_no='+user_no ;
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
    					<a href="/mypage/order/list"><span>주문/배송조회</span></a>
    				</li>
    				<li>
    					<a href="/mypage/claim/list"><span>취소/교환/반품 조회</span></a>
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
    					<a href="#" onClick="getReviewproductList();"><span>상품리뷰</span></a>
    				</li>
    				<li>
    					<a href="#" onClick="toQna();"><span>QnA</span></a>
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
    					<a href="#" onClick="toModify();"><span>회원정보 수정</span></a>
    				</li>
    				<li>
    					<a href="/mypage/member/secessionMemberView"><span>회원탈퇴</span></a>
    				</li>
    			</ul>
    		</li>
    	</ul>
    	</nav>
    	
    	