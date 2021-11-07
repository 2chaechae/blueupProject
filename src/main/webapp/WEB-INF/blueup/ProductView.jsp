<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>
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
				<h3 style="font: bold 40px/1.5em 'Nanum Myeongjo', serif; text-align:center" >${Category.get(0).category_name}</h3>
				<div  style="text-align:center; font-size:20px; padding-bottom:30px;">
					<c:forEach var="category" items="${Category}">
						<a href="#" onclick="checkCategory(this)" style="display:inline-block; zoom:1; display:inline; padding-right:20px;">${category.category_detailed_name}</a>
					</c:forEach>
				</div>
			</div>
			<!-- //카테고리 메뉴 (일자형식으로 바꾸기) -->
			<section class="mds-section dp_list_sec">
				<div class="ui_dp_list">
					<ul class="list">
						<c:forEach var="product" items="${Product}">
							<input type="hidden" class="criteoGod" value="3APT00114-50CGS" />
							<li>
								<div class="item">
									<div class="thumb">
										<a href="#"
											onclick="javascript:gaTagging('/goods/LA-다저스/맨투맨/3AMTB0414-07LDD','3AMTB0414-07LDD','베이직 중앙 스몰로고 오버핏 맨투맨 (셋업) LA다저스','69000','엠엘비','MLB 셋업','0','','','프리미엄하게 즐기는 TONE-ON-TONE 셋업','2442','0','Lavender','겉감:면 62%, 겉감:폴리에스터 38%, 부속:면 97%, 부속:폴리우레탄 3%','','','/goods/LA-다저스/맨투맨/3AMTB0414-07LDD','21F','','/goods/thnail/m/20210818/3AMTB0414-07LDD-45293041248757105.png');"
											class="goDetail">
											<div class="item-badge"></div> <span class="img"> <img
												src="${product.main_image}"
												onerror='errorImgShow(this, "414");' class="first">
										</span>
										</a>
									</div>
									<div class="info">
										<div class="name">${product.product_name}</div>
										<div class="prc">
											<em class="p">${product.product_price}원</em>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
						<div class="page">
							<span> <strong>1</strong><a
								href="javascript:getPage('2');"> 2</a> <a
								href="javascript:getPage('3');"> 3</a> <a
								href="javascript:getPage('4');"> 4</a>
							</span> <a class="last" href="javascript:getPage('4');" alt="마지막페이지">
								<span>마지막페이지</span>
							</a>
						</div>
			</section>
		</main>
	</div>
</div>
<!--// 컨텐츠 끝 -->


<%@ include file="/footer.jsp"%>
</body>
</html>