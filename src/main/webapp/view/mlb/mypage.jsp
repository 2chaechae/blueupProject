<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/naver/naver_login.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js?v=prod-version-858_20211102145956"></script>


<div class="contain my lnblist-Wrap" id="contain">
		<div class="container">
		
			<h2 class="title01">마이페이지</h2>

<%@ include file="mypageMenu.jsp" %>

<main class="contents myPageMain-wrap" id="contents">		
			
				<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span>
							<strong>마이페이지</strong>
							</p>
			</div> 		<!-- 회원정보S -->
				<div class="memberSTcont boxCont04">
					<ul>
						<li class="colorBlk friends_SY">
							<p>Level</p>
							<strong>Friends</strong>
							<a href="#ratingBenefit" onclick="goMembershipInfo();return false;" class="d_layer_open"><span>구매등급 혜택보기</span></a></li>
						<li>
							<p>마일리지</p><strong><a href="#" class="text-color01" url="/mypage/benefit/listMileage" onClick="javascript:goMypageAction(this);return false;">10,000</a>원</strong>
						</li>
						<li>
							<p>포인트</p><strong><a href="#" class="text-color01" ctgrysectcd="GNRL_CTGRY" url="/mypage/benefit/listPoint" onClick="javascript:goMypageAction(this);return false;">0</a>원</strong>
						</li>
						<li>
							<p>쿠폰</p><strong><a href="#" class="text-color01" ctgrysectcd="GNRL_CTGRY" url="/mypage/benefit/listCoupon" onClick="javascript:goMypageAction(this);return false;">0</a>장</strong>
						</li>
					</ul>
				</div>
				<!-- //회원정보E -->
				
				
				<div class="justify-wrap">
					<h3 class="title02 left">주문내역</h3><a href="#" class="btn sm fill right" url="/mypage/order/list" onClick="javascript:goMypageAction(this);return false;"><span>전체보기</span></a></div>
				
				<!-- 주문내역 S -->
				<div class="odResulCon" id="includeOrderList">				
					
				</div>
				<!-- //주문내역 E -->
				
				<div class="justify-wrap">
					<h3 class="title02 left">위시리스트</h3><a href="#" class="btn sm fill right" url="/mypage/wishlist/list" onClick="javascript:goMypageAction(this);return false;"><span>전체보기</span></a>
				</div>
				
				<!-- 위시리스트 S -->
				<div class="item-listST" id="myWishList">
					
				</div>
				<!-- //위시리스트 E -->
				
				<div class="justify-wrap">
					<h3 class="title02 left">쿠폰함</h3><a href="#" class="btn sm fill right" url="/mypage/benefit/listCoupon" onClick="javascript:goMypageAction(this);return false;"><span>전체보기</span></a>
				</div>
				
				<!-- 쿠폰함 S -->
				<div class="board-list" id="includeCouponList">
					
				</div>
				<!-- //쿠폰함 E -->
				
				<div class="justify-wrap">
					<h3 class="title02 left">1:1 문의</h3><a href="#" class="btn sm fill right" url="/mypage/inquiry/list" onClick="javascript:goMypageAction(this);return false;"><span>전체보기</span></a>
				</div>
				
				<!-- 1:1 문의내역 S -->
				<div class="board-list" id="includeInquiryList">
					
				</div>
				<!-- //1:1 문의내역 E -->
			</main>
			
		</div>
	</div>
	
    <article id="ratingBenefit" class="layer-popup ratingBenefit-pop">
    <section class="layer-popup-cont" tabindex="0">
		<h2>구매등급 혜택보기</h2>
		<div class="layer-cont scroll">

			<div class="ratingBenefit-popWrap">

				<!-- MLB 등급 혜택 안내 S -->
				<div class="membership-level-list">
					<table>
						<caption>회원등급혜택</caption>
						<colgroup>
							<col style="width:105px;">
							<col style="width:141px;">
							<col style="width:141px;">
							<col style="width:141px;">
							<col style="width:141px;">
							<col style="width:141px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">등급</th>
								<th scope="col">
									<div>
										<img src="https://static.mlb-korea.com/pc/static/images/my/bg_friends.png" alt="FRIENDS">
										<strong class="lv">FRIENDS</strong>
									</div>
								</th>
								<th scope="col">
									<div>
										<img src="https://static.mlb-korea.com/pc/static/images/my/bg_family.png" alt="FAMILY">
										<strong class="lv">FAMILY</strong>
									</div>
								</th>
								<th scope="col">
									<div>
										<img src="https://static.mlb-korea.com/pc/static/images/my/bg_silver.png" alt="SILVER">
										<strong class="lv">SILVER</strong>
									</div>
								</th>
								<th scope="col">
									<div>
										<img src="https://static.mlb-korea.com/pc/static/images/my/bg_gold.png" alt="GOLD VIP">
										<strong class="lv">GOLD VIP</strong>
									</div>
								</th>
								<th scope="col">
									<div>
										<img src="https://static.mlb-korea.com/pc/static/images/my/bg_platinum.png" alt="PLATINUM VVIP">
										<strong class="lv">PLATINUM VVIP</strong>
									</div>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>등급조건</th>
								<td>
									<div>
										<p>신규회원<br>~ 20만원 미만 구매</p>
									</div>
								</td>
								<td>
									<div>
										<p>20만원 이상<br>~ 50만원 미만 구매</p>
									</div>
								</td>
								<td>
									<div>
										<p>50만원 이상<br>~ 100만원 미만 구매</p>
									</div>
								</td>
								<td>
									<div>
										<p>100만원 이상<br>~200만원 미만 구매<br>(구매 2회 이상)</p>
									</div>
								</td>
								<td>
									<div>
										<p>200만원 이상 ~<br>(구매 2회 이상)</p>
									</div>
								</td>
							</tr>
							<tr>
								<th>적립 마일리지</th>
								<td>
									<div class="CouponST">
										<div class="mileageDiv">
											<p>1%</p>
										</div>
									</div>
								</td>
								<td>
									<div class="CouponST">
										<div class="mileageDiv">
											<p>4%</p>
										</div>
									</div>
								</td>
								<td>
									<div class="CouponST">
										<div class="mileageDiv">
											<p>4%</p>
										</div>
									</div>
								</td>
								<td>
									<div class="CouponST">
										<div class="mileageDiv">
											<p>5%</p>
										</div>
									</div>
								</td>
								<td>
									<div class="CouponST">
										<div class="mileageDiv">
											<p>6%</p>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--// MLB 등급 혜택 안내 E -->

				<ul class="text-list02">
					<li>일부 상품은 쿠폰 적용에서 제외될수 있습니다.</li>
					<li>마일리지는 등급별로 차등 적립되며, 온라인과 오프라인 매장별 적립율이 상이합니다.</li>
					<li>등급 산정은 구매확정 후 익일에 반영 됩니다.</li>
				</ul>
				
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>
<%@ include file="footer.jsp" %>
</body>
</html>