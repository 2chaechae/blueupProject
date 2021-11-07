<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>

	<form id ="srchForm" action ="/mypage/inquiry/list" method="post" >
		<input type ="hidden" name ="srchMtmInqSn" value ="" />
		<input type="hidden" name="_csrf" value="e10c8807-8415-4905-b1ec-a9230cf6bc3f"/>
		<input type="hidden" name="pageNo"  id="pageNo" value=""/>

		<!-- 컨텐츠 시작 -->
		<div class="contain my lnblist-Wrap" id="contain">
			<div class="container">

				<h2 class="title01">1:1 문의</h2>

				
<nav id="lnb" class="lnb-nav">
        <strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
    	<p><b>이하진</b>님<br/>반갑습니다.</p>
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
<main class="contents oto_inquiryList-wrap" id="contents">

					<div class="location-contents">
						<p class="location">
							<span>Home</span>
							<span>마이페이지</span>
							<span>활동정보</span>
							<strong title="현재 위치">1:1 문의</strong>
						</p>
					</div>

					<p class="txt13-666">고객상담에 대한 내역과 답변을 확인하실 수 있습니다.<br/><em>고객센터 080-807-0012</em> (평일 AM 9시 ~ PM 6시 : 토/일 공휴일 휴무)</p>

					<div class="tbst-div">
						<div class="mid fl">
							<span>전체</span> (<span class="text-color01"><em class="num" id="inquiryCnt"></em></span>건)
						</div>
						<div class="mid fr">
							<a href="#" class="btn fill sm fdlr30 btn-style07 right" onclick="javascript:goInquiryNew()"><span>1:1 문의 등록</span></a>
						</div>
					</div>
					<div id="includeInquiryList">
					<div class="board-list">
						<!-- 2018-05-24 -->
							<table>
								<caption>1:1 문의 번호, 문의유형, 제목, 작성일, 답변여부</caption>
								<colgroup>
									<col style="width:100px;">
									<col style="width:100px;">
									<col>
									<col style="width:100px;">
									<col style="width:100px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">문의유형</th>
										<th scope="col">제목</th>
										<th scope="col">작성일</th>
										<th scope="col">답변여부</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="5" class="no-result">상담내역이 없습니다.</td>
									</tr>
									</tbody>
							</table>
							<!-- //2018-05-24 -->
						</div>
					</div>
				</main>
			</div>
		</div>
	</form>
<%@ include file="footer.jsp" %>
</body>
</html>