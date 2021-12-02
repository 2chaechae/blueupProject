<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<!-- 컨텐츠 시작 -->
	<div class="contain dp promo view" id="contain">
		<div class="container">

			<main class="contents" id="contents">
			<!-- Title start -->
			<!-- div class="pm_top">
				<span class="tit">CP66 & CP77</span>
				<div class="info">
					<div class="fl"></div>
					<div class="fr">
						<span class="date">2021.02.26 ~  2027.02.27</span>
						< %@ include file="/WEB-INF/views/plan/include/snsShare.jsp"% >
					</div>
				</div>
			</div -->

				<!-- Image or Html start -->
					<section class="pm_vis_area">

						<div class="vs_html">
												<!-- PC 기획전 시작-->
<style type="text/css">
    .contain.dp.promo.view {padding-bottom: 0;}
	.contain.dp.promo.view .pm_vis_area {margin-bottom: 0;}
	.evt {min-width:1280px; margin: 0 auto;}
	.evt a:focus,
	.evt button:focus { outline: none; }
	.evt {margin: 0 auto;padding: 0;}
	.evt img { display: block;width: 100%;}
	.ds-head {width: 100%;}
	.ds-head:after,
	.ds-box:after {content:""; display: table; clear: both;}
	.ds-head {position: relative;height: 9362px;background: url(https://prd-static-fnf-online-mall.s3.amazonaws.com/webresource/mlb-korea/motioneye/2021/0412_cp6677/210224_CP66-CP77_pc.jpg) no-repeat center top;}
</style>
<div class="evt">
    <section class="ds-head">&nbsp;</section>
</div>
<!-- PC 기획전 끝--></div>

										</section>

				<!-- God Tab start -->
						<section class="tabs" id="tabsLink">

							<div class="tab-type06 tab">
								<ul>

									<li>
												<a href="#pm_list_view_2">
													CP66</a>
											</li>

										<li>
												<a href="#pm_list_view_1">
													CP77</a>
											</li>

										</ul>
							</div>

						</section>

						<section class="pm_list_view" id="pm_list_view_2">
									<div class="hd">CP66</div>
									<div class="ui_dp_list">
										<ul class="list">
										<c:forEach items="${CapList }" var="cap">
											<li>
													<div class="item">
														<div class="thumb">
															<input class="product_no" type="hidden" value="${cap.product_no}" />
															<a href="javascript:void(0)" onclick="viewCount(this)" class="goDetail">
																<span class="img">
																	<img src="${cap.main_image}" alt="N-COVER 볼캡 뉴욕양키스" onerror='errorImgShow(this, "285");' class="first" >
																	</span>
															</a>
														</div>
														<div class="info">
															<div class="name">
																${cap.product_name} </div>
															<div class="prc">
																<em class="p">${cap.product_price}원</em>
																	</div>
															</div>
													</div>
												</li>
											</c:forEach>	
											</ul>
										</div>
								</section>
							</main>
					</div>
			</div>
			<script type="text/javascript">
			function viewCount(element){
				var product_no = $(element).prev().val();
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
			</script>`
	<!--// 컨텐츠 끝 -->
	
	
<%@ include file="footer.jsp" %>
</body>
</html>