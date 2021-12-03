<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/product.js"></script>
    <script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211106192902"></script>

   <meta charset="utf-8">
   <title>MAIN | MLB</title>
   <link rel="shortcut icon" type="image/x-icon" href="https://static.mlb-korea.com/pc/static/favicon/favicon.ico" />
   <link rel="icon" type="image/x-icon" href="https://static.mlb-korea.com/pc/static/favicon/favicon.ico" />
   
   <link href="https://static.mlb-korea.com/pc/static/css/swiper.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <!-- <link href="https://static.mlb-korea.com/pc/static/css/jquery-ui.1.12.1.css?v=10-7-4-29-2" rel="stylesheet" type="text/css"> -->
   <link href="https://static.mlb-korea.com/pc/static/css/bs.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/cm.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/ly.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/mn.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/dp.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/pd.css?v=10-7-4-29-2" rel="stylesheet" type="text/css">
   <link href="https://static.mlb-korea.com/pc/static/css/od.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/my.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/mb.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/se.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/ev.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/cs.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <link href="https://static.mlb-korea.com/pc/static/css/et.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
   <script>var PATH_LOCALE = '';</script>
   <script src="https://static.mlb-korea.com/pc/static/js/jquery.cookie.js"></script>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/jquery-ui.min.js"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/min/jsrender-0.9.90.min.js"></script>   
   <script src="https://static.mlb-korea.com/pc/static/js/min/masonry.pkgd.min.js"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>   
   <script src="https://static.mlb-korea.com/pc/static/js/min/masonry.pkgd.min.js?v=10-7-4-29-2"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/min/imagesloaded.pkgd.min.js?v=10-7-4-29-2"></script>   
   <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/sns.js?v=10-7-4-29-2"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/moment.js?v=10-7-4-29-2"></script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBvRMB27X0JzAxjAUs26Q32tEfw-E0NUng" async defer></script>
   
   <!-- <script src="/static/js/jquery-migrate-1.4.1.js"></script> -->
   <!-- <script src="/static/js/jquery-ui-1.12.1.js"></script> -->
   <script src="https://player.vimeo.com/api/player.js"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/swiper.min.js"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/slick.js?v=10-7-4-29-2"></script>   
   <script src="https://static.mlb-korea.com/pc/static/js/common.js?v=10-7-4-29-2"></script>
   <script src="https://static.mlb-korea.com/pc/static/js/commonFunction.js?v=10-7-4-29-2"></script>   
   
   <script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/member/login.js?v=prod-version-858_20211102145956"></script>
   <script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/naver/naverLogin_implicit-1.0.2-min.js" charset="utf-8"></script>
   <script type="text/javascript" >var YOUR_CLIENT_ID = 'JlTrvDTlo4qERsv1bY4m';</script>
   <script type="text/javascript" >var KAKAO_CLIENT_ID = 'd4a424c6f042566dc9f227392cfdfe6f';</script>   
   <!-- <script src="https://bizmessage.kakao.com/chat/includeScript"></script> -->

   
   <script type="text/javascript" src="/javascript/message/common_ko.js?v=prod-version-858_20211102145956"></script>
   <script type="text/javascript" src="/javascript/message/footer_ko.js?v=prod-version-858_20211102145956"></script>
   <script type="text/javascript" src="/javascript/message/member_ko.js?v=prod-version-858_20211102145956"></script>
   
   
   
</head>
<body class="body" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<iframe id="hfrADCheck" src="//adcheck.about.co.kr/mad/prd/view?shopid=mlb" scrolling="no" frameborder="0" width="0" height="0" style="display: none;"></iframe>

<div class="wrap" id="wrap">

		<div class="head">

			<header id="gnbMenu" class="gnb_menu">
				<div class="gnb_menu_wrap">
					<h1 class="logo">
						<a href="/" data-ga-category="PC_MLB_Header" data-ga-action="MLB">MLB</a>
					</h1>
					<div class="menu">
						<ul class="list cate">
							<!-- 세일상품 -->
							<li class="select">
								<a href="javascript:void(0)" onclick="checkCategoryUp(this)"> <font >SALES</font></a>
									<!-- 
								<div class="pan top_cate_pan_1">
									<div class="inner">	
										<div class="cate">
											<ul class="list">
												<li><a
													href="javascript:cateLink('MBMA01A15', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A15');"
													data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
													data-ga-label="MLB 셋업">MLB 셋업</a></li>
												<li><a
													href="javascript:cateLink('MBMA01A13', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A13');"
													data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
													data-ga-label="MLB 후리스">MLB 후리스</a></li>
												<li><a
													href="javascript:cateLink('MBMA01A11', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A11');"
													data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
													data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
											</ul>
										</div>
										<div class="depth">
											<ul class="list">
												<li><a
													href="javascript:cateLink('MBMA01A04', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');"
													data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
													data-ga-label="아우터">아우터</a>
													<ul>
														<li><a
															href="javascript:cateLink('MBMA01A04A01', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="아우터_숏패딩">숏패딩</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A04A05', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="아우터_롱패딩">롱패딩</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A04A07', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="아우터_후리스">후리스</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A04A02', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="아우터_야구점퍼">야구점퍼</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A04A03', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="아우터_바람막이">바람막이</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A04A06', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="아우터_자켓/점퍼">자켓/점퍼</a></li>
													</ul></li>
												<li><a
													href="javascript:cateLink('MBMA01A05', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
													data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
													data-ga-label="상의">상의</a>
													<ul>
														<li><a
															href="javascript:cateLink('MBMA01A05A03', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="상의_티셔츠">티셔츠</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A05A01', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="상의_맨투맨">맨투맨</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A05A02', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="상의_후드티">후드티</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A05A04', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="상의_집업/후드집업">집업/후드집업</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A05A06', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="상의_셔츠">셔츠</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A05A07', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="상의_야구 져지">야구 져지</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A05A05', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="상의_가디건">가디건</a></li>
													</ul></li>
												<li><a
													href="javascript:cateLink('MBMA01A06', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A06');"
													data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
													data-ga-label="하의">하의</a>
													<ul>
														<li><a
															href="javascript:cateLink('MBMA01A06A01', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A06');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="하의_팬츠">팬츠</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A06A02', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A06');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="하의_트레이닝 팬츠">트레이닝 팬츠</a></li>
													</ul></li>
												<li><a
													href="javascript:cateLink('MBMA01A14', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');"
													data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
													data-ga-label="여성전용">여성전용</a>
													<ul>
														<li><a
															href="javascript:cateLink('MBMA01A14A01', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="여성전용_아우터">아우터</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A14A02', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="여성전용_상의">상의</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A14A05', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="여성전용_팬츠">팬츠</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A14A03', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="여성전용_원피스">원피스</a></li>
														<li><a
															href="javascript:cateLink('MBMA01A14A04', '3', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');"
															data-ga-category="PC_MLB_Header" data-ga-action="APPAREL"
															data-ga-label="여성전용_레깅스">레깅스</a></li>
													</ul></li>
											</ul>
										</div>
										<div class="banner">
											<a href="/special/2447" data-ga-category="PC_MLB_Header"
												data-ga-action="배너" data-ga-label="MLB 하트"><img
												class="img"
												src="https://static.mlb-korea.com/images/display/category/MTP/A01/A02/contents/10122_6820_4_KOR_20211008161840.png/dims/resize/400x268"
												alt="MLB 하트"></a>
										</div>
									</div>
								</div></li> -->
							<!-- CAP -->
							<li class="select"><a href="javascript:void(0)" onclick="checkCategoryAll(this)"><font>CAP</font></a>
								<div class="pan top_cate_pan_2">
									<div class="inner">
									<!--	 <div class="cate">
											<ul class="list">
												<li><a
													href="javascript:cateLink('MBMA03A10', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A10');"
													data-ga-category="PC_MLB_Header" data-ga-action="CAP"
													data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
												<li><a href="/special/2254" class="btn"
													data-ga-category="PC_MLB_Header" data-ga-action="CAP_GUIDE">CAP
														GUIDE</a></li>
											</ul> 
										</div>-->
										<div class="depth">
											<ul class="list">
												<li>
													<a href="javascript:void(0)" onclick="checkCategoryAll(this)">CAP</a>
													<ul>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">볼캡</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">스냅백</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">비니</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">HAT</a></li>
													</ul></li>
											</ul>
										</div>
										<div class="banner">
											<a href="/special/2285" data-ga-category="PC_MLB_Header"
												data-ga-action="배너" data-ga-label="CAP"><img class="img"
												src="https://static.mlb-korea.com/images/display/category/MTP/A01/A02/contents/10124_6819_1_KOR_20210630134354.png/dims/resize/400x268"
												alt="CAP"></a>
										</div>
									</div>
								</div></li>
							<!-- 상의 -->
							<li class="select"><a href="javascript:void(0)" onclick="checkCategoryAll(this)">SHOES</font></a>
								<div class="pan top_cate_pan_3">
									<div class="inner">
										<div class="cate">
											<ul class="list">
											</ul>
										</div>
										<div class="depth">
											<ul class="list">
												<li><a href="javascript:void(0)" onclick="checkCategoryAll(this)">SHOES</a>
													<ul>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">빅볼청키</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">청키</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">플레이볼</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">뮬</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">슬리퍼</a></li>
													</ul>
											</div>
										<div class="banner">
											<a href="/special/2467" data-ga-category="PC_MLB_Header"
												data-ga-action="배너" data-ga-label="청키클래식"><img
												class="img"
												src="https://static.mlb-korea.com/images/display/category/MTP/A01/A02/contents/20004_6821_3_KOR_20211019104129.png/dims/resize/400x268"
												alt="청키클래식"></a>
										</div>
									</div>
								</div></li>
							<!-- BAG -->
							<li class="select"><a href="javascript:void(0)" onclick="checkCategoryAll(this)">BAG</font></a>
								<div class="pan top_cate_pan_4">
									<div class="inner">
										<div class="cate">
											<!-- <ul class="list">
												<li><a
													href="javascript:cateLink('MBMA14A06', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A06');"
													data-ga-category="PC_MLB_Header" data-ga-action="BAG"
													data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
											</ul> -->
										</div>
										<div class="depth">
											<ul class="list">
												<li>
													<a href="javascript:void(0)" onclick="checkCategoryAll(this)">BAG</a>
													<ul>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">백팩</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">힙색</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">크로스백</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">호보백</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">버킷백</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">토드백</a></li>
													</ul>
												</li>
											</ul>
										</div>
										<div class="banner">
											<a href="/special/2434" data-ga-category="PC_MLB_Header"
												data-ga-action="배너" data-ga-label="모노그램 블랙"><img
												class="img"
												src="https://static.mlb-korea.com/images/display/category/MTP/A01/A02/contents/20014_6816_2_KOR_20210713165916.png/dims/resize/400x268"
												alt="모노그램 블랙"></a>
										</div>
									</div>
								</div></li>
							<!-- ACC -->
							<li class="select"><a href="javascript:void(0)" onclick="checkCategoryAll(this)">
									<font>ACC/PET</font>
							</a>
								<div class="pan top_cate_pan_5">
									<div class="inner">
										<div class="cate">
											<ul class="list">
											</ul>
										</div>
										<div class="depth">
											<ul class="list">
												<li>
													<a href="javascript:void(0)" onclick="checkCategoryAll(this)">ACC/PET</a>
													<ul>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">양말</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">마스크</a></li>
													</ul>
												</li>
												<li>
													<ul>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">PET-의류</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">PET-ACC</a></li>
													</ul>
												</li>
												<li>
													<ul>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">목걸이</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">팔찌</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">귀걸이</a></li>
														<li><a href="javascript:void(0)" onclick="checkCategoryUp(this)">반지</a></li>
													</ul></li>
											</ul>
										</div>
										<div class="banner">
											<a href="/special/2261" data-ga-category="PC_MLB_Header"
												data-ga-action="배너" data-ga-label="MLB JEWELRY"><img
												class="img"
												src="https://static.mlb-korea.com/images/display/category/MTP/A01/A02/contents/10125_6818_3_KOR_20211008161301.png/dims/resize/400x268"
												alt="MLB JEWELRY"></a>
										</div>
									</div>
								</div></li>
							<!-- 위시리스트 -->
							<li class="kids"><a href="javascript:void(0)" onclick="wish()" >WISHLIST</font><img /></a>
							</li>
							<!-- Community -->
							<li><a data-pan="top_cate_pan_7"
								href="javascript:cateLink('MBMA16', '1', 'GNRL_CTGRY', 'MBMA16');"
								data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM">
									<font color="">COMMUNITY</font>
								</a>
								<li><a href="/test/getNoticeList.do" >공지사항</a></li>
								<!-- <div class="pan top_cate_pan_7">
									<div class="inner">
									</div>
								</div> -->
							</li>
						</ul>
					</div>

					<div class="my_menu">
						<!-- <div class="search">
               <button type="button" id="btn_gb_sch_box" class="btn_nav ico_search" onclick="getSearchForm(this); return false;" data-ga-category="PC_MLB_Header" data-ga-action="검색">SEARCH</button>
               <div id="layerSearch" class="layer_search">
                  <div class="layer_search_wrap">
                  </div>
               </div>
            </div> -->
						<div class="shoppingbag">
							<button type="button" class="btn_nav ico_bag"
								onclick="cartAll()"
								data-ga-category="PC_MLB_Header" data-ga-action="장바구니">
								SHOPPINGBAG<em class="n" id="GNBHeaderCartCount">0</em>
							</button>
						</div>
						<div class="mypage">
							<button type="button" class="btn_nav ico_my">MY</button>
							<div id="layerLogin" class="layer_login">
								<ul>
									<li><a href='#' onclick="doGNBLogin(); return false;"
										data-ga-category="PC_MLB_Header" data-ga-action="회원"
										data-ga-label="로그인">로그인</a></li>
									<li><a href="#" onclick="doGNBJoin(); return false;"
										data-ga-category="PC_MLB_Header" data-ga-action="회원"
										data-ga-label="회원가입">회원가입</a></li>
									<li><a href="#" onclick="doGNBMypage(); return false;"
										data-ga-category="PC_MLB_Header" data-ga-action="회원"
										data-ga-label="마이페이지">마이페이지</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</header>
			<script>
				header.gnb();
			</script>
		</div>

		<!-- <div class="gb_sch_box">
         <div class="in">
            <form id="command" class="box" action="/display/search" method="get" onsubmit="searchTextCheck(this);"><span class="keyword"><input type="text" name="searchText" class="key" value="" autocomplete="off"></span>
               <button type="submit" class="btnSch">검색</button>
               <button class="btnClose">닫기</button>
               <div class="rolling-list-wrap">
                  <ul class="rolling-list">
                  </ul>
               </div>
            <div>
</div></form></div>
      
         <div class="gb_sch_column">
            <div class="word_list">
               <div class="popular">
                  <h2>인기 검색어</h2>
                  <ol>
                  </ol>
               </div>
            </div>
            <div class="item_list">
               <div class="cate_item">
                  <h2>BEST ITEM</h2>
                  <div class="swiper-container">
                     <ul class="swiper-wrapper">
                     </ul>
                     <div class="navigation">
                        <button type="button" class="btnNav prev">이전</button>
                        <button type="button" class="btnNav next">다음</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div> -->
   

<!--RecoPick 로그수집 스크립트 --><nav class="gnb">
   <div class="pan">
      <div class="menu">
         <ul class="list">
            <li>
                     <a href="javascript:cateLink('MBMA01', '1', 'GNRL_CTGRY', 'MBMA01');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL">APPAREL</a>
                     <ul>
                        <li><a href="javascript:cateLink('MBMA01A15', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A15');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="MLB 셋업">MLB 셋업</a></li>
                           <li><a href="javascript:cateLink('MBMA01A13', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A13');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="MLB 후리스">MLB 후리스</a></li>
                           <li><a href="javascript:cateLink('MBMA01A11', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A11');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
                           <li><a href="javascript:cateLink('MBMA01A04', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="아우터">아우터</a></li>
                           <li><a href="javascript:cateLink('MBMA01A05', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="상의">상의</a></li>
                           <li><a href="javascript:cateLink('MBMA01A06', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A06');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="하의">하의</a></li>
                           <li><a href="javascript:cateLink('MBMA01A14', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="여성전용">여성전용</a></li>
                           </ul>
                  </li>
               <li>
                     <a href="javascript:cateLink('MBMA03', '1', 'GNRL_CTGRY', 'MBMA03');" data-ga-category="PC_MLB_Header" data-ga-action="CAP">CAP</a>
                     <ul>
                        <li><a href="javascript:cateLink('MBMA03A10', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A10');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
                           <li><a href="javascript:cateLink('MBMA03A05', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A05');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="볼캡">볼캡</a></li>
                           <li><a href="javascript:cateLink('MBMA03A06', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A06');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="스냅백">스냅백</a></li>
                           <li><a href="javascript:cateLink('MBMA03A11', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A11');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="비니">비니</a></li>
                           <li><a href="javascript:cateLink('MBMA03A07', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A07');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="HAT">HAT</a></li>
                           <li><a href="javascript:cateLink('MBMA03A09', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A09');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="기타모">기타모</a></li>
                           </ul>
                  </li>
               <li>
                     <a href="javascript:cateLink('MBMA10', '1', 'GNRL_CTGRY', 'MBMA10');" data-ga-category="PC_MLB_Header" data-ga-action="SHOES">SHOES</a>
                     <ul>
                        <li><a href="javascript:cateLink('MBMA10A01', '2', 'GNRL_CTGRY', 'MBMA10', 'MBMA10A01');" data-ga-category="PC_MLB_Header" data-ga-action="SHOES" data-ga-label="운동화">운동화</a></li>
                           <li><a href="javascript:cateLink('MBMA10A02', '2', 'GNRL_CTGRY', 'MBMA10', 'MBMA10A02');" data-ga-category="PC_MLB_Header" data-ga-action="SHOES" data-ga-label="샌들/슬리퍼">샌들/슬리퍼</a></li>
                           </ul>
                  </li>
               <li>
                     <a href="javascript:cateLink('MBMA14', '1', 'GNRL_CTGRY', 'MBMA14');" data-ga-category="PC_MLB_Header" data-ga-action="BAG">BAG</a>
                     <ul>
                        <li><a href="javascript:cateLink('MBMA14A06', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A06');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
                           <li><a href="javascript:cateLink('MBMA14A01', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A01');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="백팩">백팩</a></li>
                           <li><a href="javascript:cateLink('MBMA14A02', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A02');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="힙색">힙색</a></li>
                           <li><a href="javascript:cateLink('MBMA14A03', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A03');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="크로스백">크로스백</a></li>
                           <li><a href="javascript:cateLink('MBMA14A04', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A04');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="호보백">호보백</a></li>
                           <li><a href="javascript:cateLink('MBMA14A07', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A07');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="버킷백">버킷백</a></li>
                           <li><a href="javascript:cateLink('MBMA14A08', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A08');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="토트백">토트백</a></li>
                           </ul>
                  </li>
               <li>
                     <a href="javascript:cateLink('MBMA04', '1', 'GNRL_CTGRY', 'MBMA04');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET">ACC &amp; PET</a>
                     <ul>
                        <li><a href="javascript:cateLink('MBMA04A06', '2', 'GNRL_CTGRY', 'MBMA04', 'MBMA04A06');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET" data-ga-label="악세서리">악세서리</a></li>
                           <li><a href="javascript:cateLink('MBMA04A12', '2', 'GNRL_CTGRY', 'MBMA04', 'MBMA04A12');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET" data-ga-label="PET">PET</a></li>
                           <li><a href="javascript:cateLink('MBMA04A13', '2', 'GNRL_CTGRY', 'MBMA04', 'MBMA04A13');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET" data-ga-label="쥬얼리">쥬얼리</a></li>
                           </ul>
                  </li>
               <li>
                     <a href="javascript:cateLink('MBMA05', '1', 'GNRL_CTGRY', 'MBMA05');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS">KIDS</a>
                     <ul>
                        <li><a href="javascript:cateLink('MBMA05A26', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A26');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="PREMIUM 구스 패딩">PREMIUM 구스 패딩</a></li>
                           <li><a href="javascript:cateLink('MBMA05A18', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A18');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="PREMIUM 후리스">PREMIUM 후리스</a></li>
                           <li><a href="javascript:cateLink('MBMA05A12', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A12');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
                           <li><a href="javascript:cateLink('MBMA05A14', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A14');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="트레이닝 세트">트레이닝 세트</a></li>
                           <li><a href="javascript:cateLink('MBMA05A19', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A19');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="베이비">베이비</a></li>
                           <li><a href="javascript:cateLink('MBMA05A04', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A04');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="아우터">아우터</a></li>
                           <li><a href="javascript:cateLink('MBMA05A05', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A05');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="상의">상의</a></li>
                           <li><a href="javascript:cateLink('MBMA05A06', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A06');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="하의">하의</a></li>
                           <li><a href="javascript:cateLink('MBMA05A07', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A07');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="모자">모자</a></li>
                           <li><a href="javascript:cateLink('MBMA05A13', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A13');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="슈즈">슈즈</a></li>
                           <li><a href="javascript:cateLink('MBMA05A08', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A08');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="악세서리">악세서리</a></li>
                           </ul>
                  </li>
               <li>
                     <a href="javascript:cateLink('MBMA16', '1', 'GNRL_CTGRY', 'MBMA16');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM">MONOGRAM</a>
                     <ul>
                        <li><a href="javascript:cateLink('MBMA16A01', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A01');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="베이직 모노그램">베이직 모노그램</a></li>
                           <li><a href="javascript:cateLink('MBMA16A02', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A02');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="다이아 모노그램">다이아 모노그램</a></li>
                           <li><a href="javascript:cateLink('MBMA16A03', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A03');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="어패럴">어패럴</a></li>
                           <li><a href="javascript:cateLink('MBMA16A04', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A04');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="모자">모자</a></li>
                           <li><a href="javascript:cateLink('MBMA16A05', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A05');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="슈즈">슈즈</a></li>
                           <li><a href="javascript:cateLink('MBMA16A06', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A06');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="가방">가방</a></li>
                           <li><a href="javascript:cateLink('MBMA16A07', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A07');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="ACC">ACC</a></li>
                           <li><a href="javascript:cateLink('MBMA16A08', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A08');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="키즈">키즈</a></li>
                           </ul>
                  </li>
               </ul>
      </div>
      <div class="link">
         <ul class="list">
            <li><a href="/event/promotionList" data-ga-category="PC_MLB_Header" data-ga-action="PROMOTION/EVENT">PROMOTION</a></li>
            <!-- [EOSD-2740] 카테고리 수정 <li><a href="/display/view?dspCtgryNo=MBMA06&currentCtgryDpthCd=1&ctgrySectCd=OTLT_CTGRY&ctgryNoDpth1=MBMA06" data-ga-category="PC_MLB_Header" data-ga-action="OUTLET">OUTLET</a></li>
            <li><a href="/display/majorView?dspCtgryNo=MBMA11&currentCtgryDpthCd=1&ctgrySectCd=GNRL_CTGRY&ctgryNoDpth1=MBMA11" data-ga-category="PC_MLB_Header" data-ga-action="FAMILY">FAMILY</a></li> -->
            <li><a href="/lookbook/lookbookList" data-ga-category="PC_MLB_Header" data-ga-action="LOOKBOOK">LOOKBOOK</a></li>
            <li><a href="/culture/cultureList" data-ga-category="PC_MLB_Header" data-ga-action="CULTURE">CULTURE</a></li>
</ul>
      </div>
<script type="text/javascript">
var user_no = localStorage.getItem("user_no");

function wish(){
	if(user_no != null){
		location.href="/getWishList.do?user_no="+ user_no;
	}else{
		location.href="/getWishListCookie.do";
	}
}

function cartAll() {
	if(user_no != null){
		location.href="/getcartList.do?user_no="+ user_no";
	}else{
		location.href="/getcartList.do";
	}
}
</script>
      <!--  [EOSD-2740] 카테고리 수정
      <div class="banner">
         <ul class="list">
            </ul>
      </div>
       -->
   </div>
</nav>