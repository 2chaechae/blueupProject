<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211109170015"></script>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/order/order.util.js?v=prod-version-865_20211109094744"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/order/order.info.js?v=prod-version-865_20211109094744"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js"></script>
<script type="text/javascript" src="//script.about.co.kr/templates/script/cm/adbayBuyController_v.1.1.js"></script>

<script type="text/javascript" src="/javascript/message/order_ko.js?v=prod-version-865_20211109094744"></script>

<!--RecoPick 로그수집 스크립트 --><!-- 컨텐츠 시작 -->
<div class="contain od list" id="contain">
	<div class="container">
		<div class="location-container">
                <div class="location-contents">
                    <h2 class="title01">주문완료</h2>
                    <p class="location">                    
	                    <span><a href="/">Home</a></span>
								<strong>장바구니</strong>
								</p>
                 </div>
            </div><main class="contents"  id="contents">
			<section>
				<ul class="stepInfoBox">
					<li class="on">장바구니</li>
					<li class="on">주문/결제</li>
					<li class="on">주문완료</li>
				</ul>
				
				<div class="orderContents orderComplete" id="orderInfoViewLayer">
				</div>
				<div class="orderComCont">
					<div class="orderTxtBox">
						<!-- if info.ord.ordTpCd=='SHOP_PKUP_ORD' -->
							<strong>주문이 완료되었습니다.</strong>
							<p>성공적으로 주문처리 되었습니다. 상품 주문내역과 결제금액을 확인하세요.<br>
							주문상세내역 및 정보는 마이페이지>주문정보>주문/배송 조회에서 확인하실 수 있습니다.</p>
						<!-- else info.ord.ordTpCd=='RESVE_ORD'	 -->		
							<!-- <strong>:~messages['order.js.txt.complete.reserve.title']</strong>
							<p>:~messages['order.js.txt.complete.info2']
						else			
							<strong>:~messages['order.js.txt.complete.title']</strong>
							<p>:~messages['order.js.txt.complete.info1']
						/if
						<br />:~messages['order.js.txt.complete.info0']</p> -->
					</div>
					<div class="orderBeneBox">구매확정시 마일리지 최대 5% 적립, 리뷰 작성시 마일리지를 증정해드립니다.[포토 1,000원 | 텍스트 500원]</div>
				

			<div class="btn-wrap">
				<a href="/test/index.do" class="btn-style03">쇼핑 계속하기</a>
			</div>			

 
			</div>
			</section>
		</main>
	</div>
</div>

<!--// 컨텐츠 끝 -->
	
<%@ include file="footer.jsp" %>
</body>
</html>