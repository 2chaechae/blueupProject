<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>블루업 | BlueUp</title>
   <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
   <script src="${pageContext.request.contextPath}/js/top.js"></script>
   <script src="${pageContext.request.contextPath}/js/index.js"></script>
   <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
   
	<!-- MLB CSS -->
	<link href="${pageContext.request.contextPath}/css/od.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/bs.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/cm.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/ly.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/my.css" rel="stylesheet" type="text/css" />
	
	<!-- MLB JS -->
	<script src="${pageContext.request.contextPath}/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/js/commonFunction.js"></script>
	<script src="${pageContext.request.contextPath}/js/order.form.js"></script>
	

</head>
<!--맨위로 가기 맨 아래로 가기-->
<p><img src="${pageContext.request.contextPath}/images/icon/scrollup.png" alt="맨위로" width="40" height="41" class="up_btn"></p>
<p><img src="${pageContext.request.contextPath}/images/icon/scrolldown.png" alt="맨아래로" width="40" height="41" class="down_btn"></p>
<!--상단-->
<!--상단-->
<div id="top_wrap">
	<header id="top">
		<!--js태그 추가자리-->
		<h1><a href="#"><img src="https://blueup.s3.ap-northeast-2.amazonaws.com/main/blueuplogo.png" alt="블루업"></a></h1>
		<div id="top_bar">
			<nav id="top_navi">
				<ul id="mtop">
					<li><a href="#"  data-atitle="세일상품" data-btitle="Gift">SALES</a></li>
					<li><a href="#" data-atitle="아우터" data-btitle="Collection">OUTER</a>
						<ul class="sub">
							<li><a href="#">가디건</a></li>
							<li><a href="#">자켓/베스트</a></li>
							<li><a href="#">점퍼</a></li>
							<li><a href="#">코트</a></li>
						</ul>
					</li>
					<li><a href="#" data-atitle="상의" data-btitle="Collection">TOP</a>
						<ul class="sub">
							<li><a href="#">티셔츠</a></li>
							<li><a href="#">니트</a></li>
							<li><a href="#">맨투맨/후드</a></li>
							<li><a href="#">셔츠/블라우스</a></li>
							<li><a href="#">크롭</a></li>
						</ul>
					</li>
					<li><a href="#" data-atitle="바지" data-btitle="Collection">BOTTOM</a>
						<ul class="sub">
							<li><a href="#">긴바지</a></li>
							<li><a href="#">트레이닝</a></li>
							<li><a href="#">반바지</a></li>
							<li><a href="#">스커트</a></li>
						</ul>
					</li>
					<li><a href="#" data-atitle="기타" data-btitle="Collection">ACC</a>
						<ul class="sub">
							<li><a href="#">Necklace</a></li>
							<li><a href="#">Earrings</a></li>
							<li><a href="#">Rings</a></li>
							<li><a href="#">Bracelet</a></li>
							<li><a href="#">BAGS/SHOES</a></li>
							<li><a href="#">CAP</a></li>
							<li><a href="#">ETC</a></li>
						</ul>
					</li>
				</ul>
			</nav><!--top_navi 주메뉴-->
			<div id="quick">
					<!--js태그 추가자리-->
					<ul>
						<li class="top_btn1"><a href="#" title="고객센터"><br><span>COMMUNTIY</span></a>
							<ul class="btn_sub">
								<li><a href="#" onclick="location.href='cscenter.jsp'">공지사항</a></li>
								<li><a href="#" onclick="location.href='cscenter.jsp'">QnA</a></li>
								<li><a href="#" onclick="location.href='cscenter.jsp'">REVIEW</a></li>
							</ul>
						</li>
						<li class="top_btn"><img src="${pageContext.request.contextPath}/images/top/login.png" alt="로그인" width="16" height="16"><br><span>LOGIN</span></li>
						<li class="top_btn2"><img src="${pageContext.request.contextPath}/images/top/search.png" alt="상단바 검색" width="16" height="16"><br><span>검색</span>
							<ul class="btn_sub2">
								<li><img src="${pageContext.request.contextPath}/images/top/seartop_btn.png" alt="검색드롭다운메뉴" width="40" height="40"></li>
								<li><input type="text" title="검색어 입력" placeholder="검색어를 입력해주세요. " id="seartop_input"></li>
								<li><button type="submit" id="seartop_btn">검색</button></li>
							</ul>
						</li>
					</ul>
				</div>
		</div>
	</header>
</div>
</body>
<!-- 컨텐츠 시작 -->
<div class="contain od list" id="contain">
	<div class="container">
		<div id="orderRegion"></div>
		<div class="location-container">
			<div class="location-contents">
				<h2 class="title01">주문결제</h2>
				<p class="location">
					<span><a href="/">Home</a></span> <strong>주문결제</strong>
				</p>
			</div>
		</div>
		<main class="contents" id="contents">
			<section>
				<ul class="stepInfoBox">
					<li class="on">장바구니</li>
					<li class="on">주문/결제</li>
					<li>주문완료</li>
				</ul>

				<div class="orderContents orderWrite">
					<div class="orderInfoArea orderWrite">

						<!-- 주문상품 정보 -->
						<div class="orderWriteArea">
							<h3 class="title06">주문상품정보</h3>

							<div class="orderWrite">
								<!-- order list -->
								<div class="orderTable">
									<table class="board-list">
										<caption>상품정보, 수량, 할인/혜택, 배송정보, 주문금액.</caption>
										<colgroup>
											<col style="width:">
											<col style="width: 110px">
											<col style="width: 110px">
											<col style="width: 110px">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">상품정보</th>
												<th scope="col">수량</th>
												<th scope="col">할인/혜택</th>
												<th scope="col">주문금액</th>
											</tr>
										</thead>
										<tfoot>
											<tr class="info_not_pickup">
												<td colspan="4" class="dvTotal"><strong>배송비</strong> <em
													id="dlv_amt_m">0원</em></td>
											</tr>
										</tfoot>
									</table>
								</div>

								<p class="iconTxt01 mt20 PKUP_DLV_layer" style="display: none;">매장주문인 경우 사은품이 제공되지 않습니다.</p>
								<p class="iconTxt01 mt20 info_no_mem" style="display: none;">회원 가입(로그인)후 주문하시면 MLB에서 제공하는 할인, 쿠폰, 적립 등의 다양한 혜택을 받으실 수 있습니다.</p>
								<p class="iconTxt01 mt05 info_no_mem" style="display: none;">비회원으로 구매하시면 사은품 및 적립 마일리지가 제공되지 않습니다. 
								<a href='#' class='btnJoinMb'>회원가입</a>
								</p>
							</div>
						</div>

						<!-- 약관동의 및 개인정보수집 동의 -->
						<div class="orderWriteArea info_no_mem">
							<h3 class="title06 info_no_mem" style="display: none;">약관 동의 및 개인정보수집 안내</h3>
							<div class="order-detail-wrap d_toggle on info_no_mem"
								style="display: none;">
								<button type="button" class="btn-open d_toggle_select">
									<span>Open</span>
								</button>
								<div class="order-detail-content d_toggle_cont">
									<section class="agree-section">
										<h4 class="title05">구매이용약관 (필수)</h4>
										<section class="agree-section-content">
											<h1>제 1 장 총 칙</h1>
											<div class="agree-link d_layer_scroll_anchor">
												<ul>
													<li><a href="#agree0101">[제1조] 목적</a></li>
													<li><a href="#agree0102">[제2조] 정의</a></li>
													<li><a href="#agree0103">[제3조] 약관 등의 명시와 설명 및 개정</a></li>
													<li><a href="#agree0104">[제4조] 서비스의 제공 및 변경</a></li>
													<li><a href="#agree0105">[제5조] 서비스의 중단</a></li>
													<li><a href="#agree0106">[제6조] 회원가입</a></li>
													<li><a href="#agree0107">[제7조] 회원정보의 변경</a></li>
													<li><a href="#agree0108">[제8조] 회원 탈퇴 및 자격 상실 등</a></li>
													<li><a href="#agree0109">[제9조] 개인정보보호 의무 및 수집</a></li>
													<li><a href="#agree0110">[제10조] 이용자의 "통합아이디" 및 비밀번호의 관리에 대한 의무</a></li>
													<li><a href="#agree0111">[제11조] 이용자에 대한 통지</a></li>
													<li><a href="#agree0112">[제12조] "사이트"의 의무</a></li>
													<li><a href="#agree0113">[제13조] 이용자의 의무</a></li>
													<li><a href="#agree0114">[제14조] 정보의 제공 및 광고의 게재</a></li>
													<li><a href="#agree0115">[제15조] "게시물"의 저작권</a></li>
													<li><a href="#agree0116">[제16조] "게시물"의 관리</a></li>
													<li><a href="#agree0117">[제17조] 권리의 귀속</a></li>
													<li><a href="#agree0118">[제18조] 구매신청</a></li>
													<li><a href="#agree0119">[제19조] 구매계약의 성립</a></li>
													<li><a href="#agree0120">[제20조] 지급방법</a></li>
													<li><a href="#agree0121">[제21조] 수신확인통지, 구매신청 변경 및 취소</a></li>
													<li><a href="#agree0122">[제22조] 재화 등의 공급</a></li>
													<li><a href="#agree0123">[제23조] 환급</a></li>
													<li><a href="#agree0124">[제24조] 청약철회 등</a></li>
													<li><a href="#agree0125">[제25조] 청약철회 등의 효과</a></li>
													<li><a href="#agree0126">[제26조] 계약해제, 해지 등</a></li>
													<li><a href="#agree0127">[제27조] 통합마일리지 및 포인트</a></li>
													<li><a href="#agree0128">[제28조] 이용제한 등</a></li>
													<li><a href="#agree0129">[제29조] 책임제한</a></li>
													<li><a href="#agree0130">[제30조] 재판권 및 준거법</a></li>
												</ul>
											</div>
											<h2>
												<span id="agree0101"></span>제1조 (목적)
											</h2>
											<p>본 약관은 ㈜F&amp;F(이하 “회사”라 함)가 운영하는 인터넷 웹사이트(이하 “사이트”)에서
												제공하는 인터넷 관련 서비스(이하 “서비스”)를 이용함에 있어 사이트와 이용자의 권리, 의무 및 책임사항,
												기타 필요한 사항을 규정함을 목적으로 합니다.</p>
											<h2>
												<span id="agree0102"></span>제2조 (정의)
											</h2>
											<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
											<ol>
												<li>1. “이용자”란 “사이트”에 접속하여 이 약관에 따라 “사이트”가 제공하는 서비스를 받는
													회원 및 비회원을 말합니다.</li>
												<li>2. “회원”이라 함은 “사이트“에 개인정보를 제공하여 회원등록을 한 자로서, “사이트”의
													정보를 지속적으로 제공받으며, “사이트”가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.</li>
												<li>3. “비회원”이라 함은 ”회원”에 가입하지 않고 “사이트”에서 제공하는 서비스를 이용하는
													자를 말합니다.</li>
												<li>4. “통합마일리지“란 ”회원”이 ”사이트”에서 상품을 구매하거나 서비스를 이용하는 경우
													“회사”의 정책에 따라 부여하는 마일리지로, 상품 구매 시 사이버 머니처럼 사용할 수 있는 결제수단입니다.</li>
												<li>5. “포인트“란 각 “사이트“ 별 정책에 따라 일정 기준에 부합할 경우 “회원“에게
													제공되는 포인트로 해당 “사이“트“의 정책에 따라 결제수단으로 사용이 가능합니다.</li>
												<li>6. “서비스“란 “사이트”가 이용자를 위해 제공하는 결제, ”통합마일리지” 및 ”포인트”의
													적립/사용, 할인, 이벤트 참여 기타 고객 서비스 프로그램을 말합니다. 이용자에게 제공되는 ”서비스”의
													구체적인 내용은 “사이트”가 정한 정책에 따라 변경될 수 있으며, 변경이 있는 경우 본 약관 제3조에 정한
													방법으로 이를 이용자에게 고지합니다.</li>
												<li>7. “사이트”란 “회사“가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신
													설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이트를
													운영하는 사업자의 의미로도 사용합니다. “사이트”의 내역은 회사의 사정에 따라 추가/감소 또는 변경될 수
													있습니다.<br> <br>
													<ul>
														<li>“회사“의 “사이트”내역(기준일 2021년 04월 11일) </a></li>
														<li>- F&amp;F : <a href="http://www.fnf.co.kr">http://www.fnf.co.kr</a></li>
														<li>- MLB : <a href="https://www.mlb-korea.com">https://www.mlb-korea.com</a></li>
														<li>- Discovery : <a
															href="https://www.discovery-expedition.com">https://www.discovery-expedition.com</a></li>
														<li>- COLLECTED : <a
															href="http://www.collected.co.kr">http://www.collected.co.kr</a></li>
													</ul> <br>
												</li>
												<li>8. "게시물"이란 이용자가 "서비스"를 이용함에 있어 "서비스"상에 게시한
													부호/문자/음성/음향/동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</li>
											</ol>
											<h2>
												<span id="agree0103"></span>제3조 (약관 등의 명시와 설명 및 개정)
											</h2>
											<ol>
												<li>1."사이트"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을
													처리할 수 있는 곳의 주소를 포함), 전화번호, 모사전송번호, 전자우편주소, 사업자 등록번호,
													통신판매업신고 번호, 개인정보 관리책임자 등을 이용자가 쉽게 알 수 있도록 "사이트"의 초기
													서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수
													있습니다.</li>
												<li>2."사이트"는 전자상거래 등에서의 소비자보호에 관한법률, 약관의 규제에 관한 법률,
													전자거래기본법, 전자서명법, 정보통신망이용촉진 등에 관한 법률, 방문판매 등에 관한 법률, 소비자보호법,
													개인정보보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</li>
												<li>3."사이트" 가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께
													몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게
													약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다.</li>
												<li>4."사이트" 가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만
													적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 때에는 변경된 약관을 승인한
													것으로 간주합니다.</li>
											</ol>
											<h2>
												<span id="agree0104"></span>제4조 (서비스의 제공 및 변경)
											</h2>
											<ol>
												<li>1. "사이트"는 다음과 같은 업무를 수행합니다.
													<ul>
														<li>- 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결</li>
														<li>- 구매계약이 체결된 재화 또는 용역의 배송</li>
														<li>- 기타 "사이트" 이 정하는 업무</li>
													</ul>
												</li>
												<li>2. "사이트"는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차
													체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는
													용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.</li>
												<li>3. "사이트" 가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는
													기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 방법으로 즉시
													통지합니다.</li>
												<li>4. 전 항의 경우 "사이트"는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만,
													"사이트" 이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</li>
											</ol>
											<h2>
												<span id="agree0105"></span>제5조 (서비스의 중단)
											</h2>
											<ol>
												<li>1. "사이트"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의
													사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</li>
												<li>2. "사이트"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는
													제3자가 입은 손해에 대하여 배상합니다. 단, "사이트"가 고의 또는 과실이 없음을 입증하는 경우에는
													그러하지 아니합니다.</li>
												<li>3. 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게
													되는 경우에는 "사이트"는 제11조에 정한 방법으로 이용자에게 통지하고 당초 "사이트"에서 제시한 조건에
													따라 소비자에게 보상합니다. 다만, "사이트"가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 포인트
													또는 적립금 등을 "사이트"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.</li>
											</ol>
											<h2>
												<span id="agree0106"></span>제6조 (회원가입)
											</h2>
											<ol>
												<li>1. 이용자는 "사이트"가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는
													의사표시를 함으로서 회원가입을 신청합니다.</li>
												<li>2. "사이트"는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지
													않는 한 회원으로 등록합니다.
													<ol>
														<li>가.가입신청자가 이 약관 제8조 제4항에 의하여 이전에 회원자격을 상실한 적이 있는
															경우, 다만 제7조 제3항에 의한 회원자격 상실 후 30일이 경과한 자로서 "사이트"의 회원재가입
															승낙을 얻은 경우에는 예외로 한다.</li>
														<li>나.등록 내용에 허위, 기재누락, 오기가 있는 경우</li>
														<li>다.기타 회원으로 등록하는 것이 "사이트"의 기술상 현저히 지장이 있다고 판단되는 경우</li>
														<li>라.회원가입일 현재 만 14세 미만인 경우</li>
													</ol>
												</li>
												<li>3. 회원가입계약의 성립시기는 "사이트"의 승낙이 회원에게 도달한 시점으로 합니다.</li>
												<li>4. “사이트” 정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을
													세분하여 이용에 차등을 둘 수 있습니다.</li>
											</ol>

											<h2>
												<span id="agree0107"></span>제7조 (회원정보의 변경)
											</h2>
											<ol>
												<li>1. 이용자는 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수
													있습니다. 다만, "서비스" 관리를 위해 필요한 실명, 주민등록번호, 아이디 등은 수정이 불가능합니다.</li>
												<li>2. 이용자는 회원가입신청 시 기재한 사항이 변경되었을 경우, 온라인으로 수정을 하거나
													전자우편 기타 방법으로 “사이트”에 대하여 그 변경사항을 알려야 합니다.</li>
												<li>3. 제2항의 변경사항을 “사이트”에 알리지 않아 발생한 불이익에 대하여 “사이트”는
													책임지지 않습니다.</li>
											</ol>
											<h2>
												<span id="agree0108"></span>제8조 (회원 탈퇴 및 자격 상실 등)
											</h2>
											<ol>
												<li>1. 다음의 경우 회원탈퇴가 가능합니다.
													<ul>
														<li>가. 회원은 "사이트"에 언제든지 탈퇴를 요청할 수 있으며 “사이트”는 즉시 회원탈퇴를
															처리합니다.</li>
														<li>나. 관련 법령으로 정한 기간동안 이용실적이 없는 경우, 자동으로 휴면회원 전화 또는
															탈퇴처리 됩니다.</li>
														<li>다. 사이트가 폐쇄되는 경우, 자동으로 탈퇴처리 됩니다.</li>
													</ul>
												</li>
												<li>2. 회원이 다음 각호의 사유에 해당하는 경우, "사이트"는 회원자격을 제한 및 정지시킬 수
													있습니다.
													<ul>
														<li>가. 가입 신청시에 타인의 정보 또는 허위 내용을 등록한 경우</li>
														<li>나. "사이트" 를 이용하여 구입한 재화등의 대금, 기타 "사이트" 이용에 관련하여
															회원이 부담하는 채무를 기일에 지급하지 않는 경우</li>
														<li>다. 다른 사람의 "사이트" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를
															위협하는 경우</li>
														<li>라. 부정한 방법으로 포인트를 적립하거나 포인트를 부정 사용하는 등 포인트 서비스
															제도운영을 방해한 경우</li>
														<li>마. "사이트"를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는
															경우</li>
													</ul>
												</li>
												<li>3. "사이트"가 회원 자격을 제한, 정지 시킨후, 동일한 행위가 2회이상 반복되거나
													30일이내에 그 사유가 시정되지 아니하는 경우 “사이트”는 회원자격을 상실시킬 수 있습니다.</li>
												<li>4. "사이트"가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게
													이를 통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</li>
											</ol>
											<h2>
												<span id="agree0109"></span>제9조 (개인정보보호 의무 및 수집)
											</h2>
											<ol>
												<li>1. "사이트"는 이용자의 정보수집 시 구매계약 이행에 필요한 최소한의 정보를 수집합니다.<br>다음
													사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
													<ol>
														<li>가. 성명</li>
														<li>나. 생년월일</li>
														<li>다. 성별</li>
														<li>라. 통신사</li>
														<li>마. 핸드폰 번호</li>
														<li>바. 희망ID(회원의 경우)</li>
														<li>사. 비밀번호(회원의 경우)</li>
														<li>아. Email주소</li>
													</ol>
												</li>
												<li>2. "사이트"가 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의
													동의를 받습니다.</li>
												<li>3. 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수
													없으며, 이에 대한 모든 책임은 “사이트”가 집니다. 다만, 다음의 경우에는 예외로 합니다.
													<ol>
														<li>가. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소,
															전화번호)를 알려주는 경우</li>
														<li>나. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수
															없는 형태로 제공하는 경우</li>
														<li>다. 재화 등의 거래에 따른 대금정산을 위하여 필요한 경우</li>
														<li>라. 도용방지를 위하여 본인확인에 필요한 경우</li>
														<li>마. 법률의 규정 또는 국가기관의 적법한 절차에 의해 정보공개가 요구되는 경우</li>
													</ol>
												</li>
												<li>4. "사이트"가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리
													책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한
													정보제공 관련사항(제공받은 자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진 등에 관한 법률
													제22조 제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수
													있습니다.</li>
												<li>5. 이용자는 언제든지 "사이트"가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을
													요구할 수 있으며, "사이트"는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의
													정정을 요구한 경우에는 "사이트"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.</li>
												<li>6. "사이트"는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드,
													은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여
													법령이 정한 책임을 집니다.</li>
												<li>7. "사이트" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은
													목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.</li>
											</ol>
											<h2>
												<span id="agree0110"></span>제10조 (이용자의 "통합아이디" 및 비밀번호의 관리에
												대한 의무)
											</h2>
											<ol>
												<li>1. 이용자의 "통합아이디"와 비밀번호에 관한 관리책임은 이용자에게 있으며, 이를 제3자가
													이용하도록 하여서는 안 됩니다.</li>
												<li>2. “사이트”는 이용자의 "통합아이디"가 개인정보 유출 우려가 있거나, 반사회적 또는
													미풍양속에 어긋나거나 “사이트”의 운영자로 오인할 우려가 있는 경우, 해당 "통합아이디"의 이용을 제한할
													수 있습니다.</li>
												<li>3. 이용자는 "통합아이디" 및 비밀번호가 도용되거나 제3자가 사용하고 있음을 인지한
													경우에는 이를 즉시 “사이트”에 통지하고 “사이트”의 안내에 따라야 합니다.</li>
												<li>4. 제3항의 경우에 해당 이용자가 “사이트”에 그 사실을 통지하지 않거나, 통지한 경우에도
													“사이트”의 안내에 따르지 않아 발생한 불이익에 대하여 “사이트”는 책임지지 않습니다.</li>
											</ol>
											<h2>
												<span id="agree0111"></span>제11조 (이용자에 대한 통지)
											</h2>
											<ol>
												<li>1. “사이트”가 이용자에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한
													"서비스"내 전자우편주소, 공지 등으로 할 수 있습니다.</li>
												<li>2. “사이트”는 이용자 전체에 대한 통지의 경우 최소 7일 이상 "사이트"의 게시판에
													게시함으로써 제1항의 통지에 갈음할 수 있습니다. 다만 회원 본인의 거래와 관련하여 중대한 영향을 미치는
													사항에 대하여는 개별통지를 합니다.</li>
											</ol>
											<h2>
												<span id="agree0112"></span>제12조 ("사이트"의 의무)
											</h2>
											<ol>
												<li>1. "사이트"는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며,
													계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다.</li>
												<li>2. "사이트"는 이용자가 안전하게 "서비스"를 이용할 수 있도록 개인정보(신용정보
													포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다.</li>
												<li>3. "사이트"는 "서비스" 이용과 관련하여 이용자로부터 제기된 의견이나 불만이 정당하다고
													인정할 경우에는 이를 처리하여야 합니다. 이용자가 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나
													전자우편 등을 통하여 이용자에게 처리과정 및 결과를 전달합니다.</li>
											</ol>
											<h2>
												<span id="agree0113"></span>제13조 (이용자의 의무)
											</h2>
											<ol>
												<li>1. 이용자는 다음 행위를 하여서는 안 됩니다.
													<ol>
														<li>1) 이용자 등록 신청 또는 변경 시 허위내용의 등록</li>
														<li>2) 타인의 정보도용</li>
														<li>3) “사이트”가 게시한 정보의 변경</li>
														<li>4) “사이트”가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</li>
														<li>5) “사이트”와 기타 제3자의 저작권 등 지적재산권에 대한 침해</li>
														<li>6) “사이트” 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
														<li>7) 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 "사이트"
															또는 "서비스"에 공개 또는 게시하는 행위</li>
														<li>8) “사이트”의 동의 없이 영리를 목적으로 "사이트" 또는 "서비스"를 사용하는 행위</li>
														<li>9) 기타 불법적이거나 부당한 행위</li>
													</ol>
												</li>
												<li>2. 이용자는 관계법, 이 약관의 규정, 이용안내 및 "서비스"와 관련하여 공지한 주의사항,
													“사이트”가 통지하는 사항 등을 준수하여야 하며, 기타 “사이트”의 업무에 방해되는 행위를 하여서는 안
													됩니다.</li>
											</ol>
											<h2>
												<span id="agree0114"></span>제14조(정보의 제공 및 광고의 게재)
											</h2>
											<ol>
												<li>1. “사이트”는 이용자가 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나
													전자우편 등의 방법으로 이용자에게 제공할 수 있습니다. 다만, 이용자는 관련법에 따른 거래관련 정보 및
													고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신 거절을 할 수 있습니다.</li>
												<li>2. 제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 이용자의 사전
													동의를 받아서 전송합니다. 다만, 이용자의 거래관련 정보 및 고객문의 등에 대한 회신에 있어서는
													제외됩니다.</li>
												<li>3. “사이트”는 "서비스"의 운영과 관련하여 "서비스" 화면, "사이트", 전자우편 등에
													광고를 게재할 수 있습니다. 광고가 게재된 전자우편을 수신한 이용자는 수신거절을 “사이트”에게 할 수
													있습니다.</li>
												<li>4. 이용자는 “사이트”가 제공하는 "서비스"와 관련하여 게시물 또는 기타 정보를 변경,
													수정, 제한하는 등의 조치를 취할 수 없습니다.</li>
											</ol>
											<h2>
												<span id="agree0115"></span>제15조("게시물"의 저작권)
											</h2>
											<ol>
												<li>1. 이용자가 "서비스" 내에 게시한 "게시물"의 저작권은 해당 게시물의 저작권자에게
													귀속됩니다.
													<ol>
														<li>가. 이용자가 "서비스" 내에 게시하는 "게시물"은 검색결과 내지 "서비스" 및 관련
															프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어
															게시될 수 있습니다. 이 경우, “사이트”는 저작권법 기타 관련 규정을 준수하며, 이용자는 언제든지
															고객센터 또는 "서비스" 내 관리기능을 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의
															조치를 취할 수 있습니다</li>
														<li>나. “사이트”는 전호 이외의 방법으로 이용자의 "게시물"을 이용하고자 하는 경우에는
															전화, 팩스, 전자우편 등을 통해 사전에 이용자의 동의를 얻어야 합니다</li>
													</ol>
												</li>
												<li>2. “사이트”가 작성한 저작물에 대한 저작권 기타 지적재산권은 “사이트”에 귀속합니다.
													<ol>
														<li>가. 이용자는 “사이트”를 이용함으로써 얻은 정보 중 “사이트”에게 지적재산권이 귀속된
															정보를 “사이트”의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로
															이용하거나 제3자에게 이용하게 하여서는 안됩니다.</li>
												</li>
											</ol>
											</ol>
											<h2>
												<span id="agree0116"></span>제16조("게시물"의 관리)
											</h2>
											<ol>
												<li>1. 이용자의 "게시물"이 정보통신망법 및 저작권법 등 관련법에 위반되는 내용을 포함하는
													경우, 권리자는 관련법이 정한 절차에 따라 해당 "게시물"의 게시중단 및 삭제 등을 요청할 수 있으며,
													“사이트”는 관련법에 따라 조치를 취하여야 합니다.</li>
												<li>2. “사이트”는 전 항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가
													있거나, 기타 “사이트” 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "게시물"에 대해 임시조치
													등을 취할 수 있습니다.
													<ol>
														<li>1) 영리추구/홍보성 목적의 활동</li>
														<li>2) 음란성 게시물의 등록</li>
														<li>3) 욕설, 비방, 반사회적 게시물 등록 및 타인에게 불쾌감을 주는 활동</li>
														<li>4) 타인의 개인정보, 사생활, 명예를 침해하는 게시물의 등록</li>
														<li>5) 타인의 지적재산권을 침해하는 게시물의 등록</li>
														<li>6) 다른 사용자의 정상적인 서비스 이용을 방해하는 행위</li>
														<li>7) 청탁성, 요청성 게시물의 등록</li>
														<li>8) 정보적 가치가 부재한 게시물의 등록</li>
														<li>9) 게시물의 도배</li>
														<li>10) 기타 서비스 취지에 부합하지 않는 일체의 부정 행위</li>
													</ol>
												</li>
												<li>3. 본 조에 따른 세부절차는 정보통신망법 및 저작권법이 규정한 범위 내에서 “사이트”가
													정한 "게시중단요청서비스"에 따릅니다.</li>
											</ol>
											<h2>
												<span id="agree0117"></span>제17조(권리의 귀속)
											</h2>
											<ol>
												<li>1. "서비스"에 대한 저작권 및 지적재산권은 “사이트”에 귀속됩니다. 단, 이용자의
													"게시물" 및 제휴계약에 따라 제공된 저작물 등은 제외합니다.</li>
												<li>2. “사이트”는 "서비스"와 관련하여 이용자에게 “사이트”가 정한 이용조건에 따라 계정,
													"아이디", 콘텐츠, "통합마일리지" "포인트" 등을 이용할 수 있는 이용권한을 부여하며, 이용자는 이를
													양도, 판매, 담보제공 등의 처분행위를 할 수 없습니다.</li>
											</ol>
											<h2>
												<span id="agree0118"></span>제18조(구매신청)
											</h2>
											<p>"사이트" 이용자는 "사이트"상에서 이하의 방법에 의하여 구매를 신청합니다.</p>
											<ol>
												<li>가. 성명, 주소, 전화번호 등의 입력</li>
												<li>나. 재화 또는 용역의 선택</li>
												<li>다. 결제방법의 선택</li>
												<li>라. 약관 내용, 청약 철회권이 제한되는 서비스, 배송료, 설치비 등의 비용 부담과 관련한
													내용에 대한 확인</li>
												<li>마. 이 약관에 동의한다는 표시 (예: 마우스 클릭)</li>
												<li>바. 재화 등의 구매신청 및 이에 관한 확인 또는 "사이트"의 확인에 대한 동의</li>
											</ol>
											<h2>
												<span id="agree0119"></span>제19조(구매계약의 성립)
											</h2>
											<ol>
												<li>1. "사이트"는 제18조 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수
													있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
													법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
													<ol>
														<li>가. 신청 내용에 허위, 기재누락, 오기가 있는 경우</li>
														<li>나. 상행위(재판매)를 목적으로 구매하는 거래이거나, 거래 정황상 상행위(재판매)를
															목적으로 한 구매로 판단되는 경우</li>
														<li>다. 기타 구매신청을 승낙하는 것이 "사이트" 기술상 현저히 지장이 있다고 판단되는 경우</li>
													</ol>
												</li>
												<li>2. "사이트"의 승낙이 수신확인 통지형태로 이용자에게 도달한 시점에 구매계약이 성립한
													것으로 봅니다.</li>
												<li>3. "사이트"의 승낙의 의사표시에는 이용자의 구매신청에 대한 확인 및 판매가 여부,
													구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다</li>
											</ol>
											<h2>
												<span id="agree0120"></span>제20조 (지급방법)
											</h2>
											<p>사이트에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할
												수 있습니다. 다만 사이트는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여
												징수할 수 없습니다.</p>
											<ol>
												<li>가. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체</li>
												<li>나. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</li>
												<li>다. 온라인무통장입금</li>
												<li>라. 수령 시 대금지급</li>
												<li>마. 마일리지 등 사이트가 지급한 포인트에 의한 결제</li>
												<li>바. 사이트와 계약을 맺었거나 사이트가 인정한 상품권에 의한 결제</li>
												<li>사. 기타 전자적 지급 방법에 의한 대금 지급 등</li>
											</ol>
											<h2>
												<span id="agree0121"></span>제21조 (수신확인통지, 구매신청 변경 및 취소)
											</h2>
											<ol>
												<li>1. "사이트"는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.</li>
												<li>2. 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은
													후 즉시 구매신청 변경 및 취소를 요청할 수 있고, "사이트"는 배송 전에 이용자의 요청이 있는 경우에는
													지체 없이 그 요청에 따라 처리하여야 합니다. 다만, 이미 대금을 지불한 경우에는 제24조 청약철회 등에
													관한 규정에 따릅니다.</li>
											</ol>
											<h2>
												<span id="agree0122"></span>제22조 (재화 등의 공급)
											</h2>
											<ol>
												<li>1. "사이트"는 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가
													청약을 한 날부터 7 영업일 이내에 재화 등이 배송될 수 있도록 주문제작, 포장 등 기타의 필요한 조치를
													취합니다. 다만, "사이트"가 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는
													일부를 받은 날부터 2영업일 이내에 조치를 취합니다. 이때 "사이트"는 이용자가 재화 등의 공급 절차 및
													진행 사항을 확인할 수 있도록 적절한 조치를 합니다.</li>
												<li>2. "사이트"는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별
													배송기간 등을 명시합니다. 만약 "사이트"가 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를
													배상하여야 합니다. 다만, "사이트"가 고의 과실이 없음을 입증한 경우에는 그러하지 아니합니다.</li>
											</ol>
											<h2>
												<span id="agree0123"></span>제23조 (환급)
											</h2>
											<p>"사이트"는 이용자가 구매 신청한 재화 또는 용역이 품절 등의 사유로 인도 또는 제공을 할 수
												없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을
												받은 날부터 7영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</p>
											<h2>
												<span id="agree0124"></span>제24조 (청약철회 등)
											</h2>
											<ol>
												<li>1. "사이트"와 재화 또는 용역의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를
													받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다.</li>
												<li>2. 이용자는 재화 또는 용역을 배송 받은 경우 다음 각호의 1호이상 해당하는 경우에는 반품
													및 교환을 할 수 없습니다.
													<ol>
														<li>가. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 또는
															용역의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다.)</li>
														<li>나. 이용자의 사용 또는 일부 소비에 의하여 재화 또는 용역의 가치가 현저히 감소한 경우</li>
														<li>다. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 또는 용역의 가치가 현저히 감소한
															경우</li>
														<li>라. 같은 성능을 지닌 재화 또는 용역으로 복제가 가능한 경우 그 원본인 재화 또는
															용역의 포장을 훼손한 경우</li>
													</ol>
												</li>
												<li>3. 제2항 나호 내지 라호의 경우에 "사이트"가 사전에 청약철회 등이 제한되는 사실을
													소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약
													철회 등이 제한되지 않습니다.</li>
												<li>4. 이용자는 제1항 및 제2항의 규정에 불구하고 재화 또는 용역의 내용이 표시광고 내용과
													다르거나 계약내용과 다르게 이행된 때에는 당해 재화 또는 용역을 공급받은 날부터 3월이내, 그 사실을 안
													날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.</li>
											</ol>
											<h2>
												<span id="agree0125"></span>제25조 (청약철회 등의 효과)
											</h2>
											<ol>
												<li>1. "사이트"는 이용자로부터 재화 또는 용역을 반환 받은 경우 3영업일 이내에 이미
													지급받은 재화 또는 용역의 대금을 환급합니다. 이 경우 "사이트"가 이용자에게 재화 또는 용역의 환급을
													지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를
													지급합니다.</li>
												<li>2. "사이트"는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의
													결제수단으로 재화 또는 용역의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화
													또는 용역의 대금의 청구를 정지 또는 취소하도록 요청합니다.</li>
												<li>3. 청약철회 등의 경우 공급받은 재화 또는 용역의 반환에 필요한 비용은 이용자가
													부담합니다. "사이트"는 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만
													재화 또는 용역의 내용이 표시광고 내용과 다르거나 계약 내용과 다르게 이행되어 청약 철회 등을 하는 경우
													재화 또는 용역의 반환에 필요한 비용은 "사이트"가 부담합니다.</li>
												<li>4. "이용자"가 재화 또는 용역을 제공받을 때 발송비를 부담한 경우에 "사이트"는 청약철회
													시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.</li>
											</ol>
											<h2>
												<span id="agree0126"></span>제26조 (계약해제, 해지 등)
											</h2>
											<ol>
												<li>1. 이용자는 "사이트"에 언제든지 마이페이지 개인정보수정 메뉴 등에서 “사이트”가 정한
													절차에 따라 이용계약 해지 신청을 할 수 있으며, 이용자가 계약을 해지할 경우, 관련법 및
													개인정보처리방침에 따라 “사이트”가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 이용자의 모든 데이터는
													소멸됩니다.</li>
												<li>2. 이용자가 다음 각 호의 사유에 해당하는 경우, "사이트"는 회원자격을 제한 및 정지시킬
													수 있습니다.
													<ol>
														<li>1) 가입 신청 시에 허위 내용을 등록한 경우</li>
														<li>2) "사이트"를 이용하여 구입한 재화, 용역 등의 대금, 기타 "사이트"이용에 관련하여
															이용자가 부담하는 채무를 기일에 지급하지 않는 경우</li>
														<li>3) 다른 이용자의 "사이트" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를
															위협하는 경우</li>
														<li>4) "사이트"를 이용하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하는
															경우</li>
														<li>5) 타인의 "아이디"와 비밀번호 또는 그 개인정보를 도용한 경우</li>
														<li>6) "사이트"의 화면에서 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우</li>
														<li>7) "사이트" 화면에 음란물을 게재하거나 음란사이트를 링크시키는 경우</li>
														<li>8) 기타 서비스 운영을 고의로 방해하는 행위를 하는 경우</li>
													</ol>
												</li>
												<li>3. 회원가입 이용자가 "사이트"에서 최종 탈퇴 시에는 탈퇴처리 한 후 30일 이내에는
													재가입이 불가능합니다.</li>
												<li>4. 이용자가 계약을 해지하는 경우, 이용자가 작성한 "게시물" 중 My page, My
													lifestyle 등과 같이 본인 계정에 등록된 게시물 일체는 삭제됩니다. 다만, 타인에 의해 담기,
													스크랩 등이 되어 재게시 되거나, 공용게시판에 등록된 "게시물" 등은 삭제되지 않으니 사전에 삭제 후
													탈퇴하시기 바랍니다. 단, “사이트”의 "포인트" 정책에 따라 "서비스"를 참여함으로써 부여된 "포인트"는
													구매 시 결제로 소진한 경우 해당 "게시물"에 한하여서는 “사이트”에 귀속됩니다.</li>
											</ol>
											<h2>
												<span id="agree0127"></span>제27조 (통합마일리지 및 포인트)
											</h2>
											<ol>
												<li>1. "포인트"
													<ol>
														<li>1) "회사"는 "사이트"별 정책에 따라 일정 기준에 부합할 경우 "회원"에게
															"포인트"를 부여할 수 있습니다.</li>
														<li>2) 적립된 "포인트"는 "사이트"별 정책에 따라 결제 수단으로만 사용할 수 있으며,
															현금화 할 수 없습니다.</li>
														<li>3) "회사"는 "포인트" 적립, 사용 방법 등에 관련된 세부이용정책을 "사이트" 별도로
															정하여 시행할 수 있으며, "회원"은 그 정책에 따라야 합니다. "회사"가 상이한 시기와 발생 원인에
															따라서 "회원"에게 "포인트"를 부여하여 "회원"이 합산된 "포인트" 중 일부를 사용할 경우
															"포인트"의 차감 순서나 소멸시효 기간 등은 "회사"가 결정하여 공지합니다.</li>
													</ol>
												</li>
												<!--<li><a href="http://member.fnf.co.kr/fnfmember/shop/benefit/benefit_mileage.php?&" target="_blank" class="link_type-a">"사이트"별 마일리지 정책 확인</a></li>-->
											</ol>
											<h2>
												<span id="agree0128"></span>제28조 (이용제한 등)
											</h2>
											<ol>
												<li>1. “사이트”는 이용자가 본 약관에 정한 의무를 위반하거나, "서비스"의 정상적인 운영을
													방해한 경우, 경고, 일시정지, 영구이용정지 등으로 "서비스" 이용을 단계적으로 제한할 수 있습니다.</li>
												<li>2. “사이트”는 전 항에도 불구하고, "주민등록법"을 위반한 명의도용 및 결제도용,
													저작권법 및 컴퓨터프로그램 보호법을 위반한 불법프로그램의 제공 및 운영방해, 정보통신망법을 위반한 불법통신
													및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를
													할 수 있습니다. 본 항에 따른 영구이용정지 시 "서비스" 이용을 통해 획득한 "포인트" 및 기타 혜택
													등도 모두 소멸되며, “사이트”는 이에 대해 별도로 보상하지 않습니다.</li>
											</ol>
											<h2>
												<span id="agree0129"></span>제29조 (책임제한)
											</h2>
											<ol>
												<li>1. “사이트”는 천재지변 또는 이에 준하는 불가항력으로 인하여 "서비스"를 제공할 수 없는
													경우에는 "서비스" 제공에 관한 책임이 면제됩니다.</li>
												<li>2. “사이트”는 이용자의 귀책사유로 인한 "서비스" 이용의 장애에 대하여는 책임을 지지
													않습니다.</li>
												<li>3. “사이트”는 이용자가 "서비스"와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성
													등의 내용에 관하여는 책임을 지지 않습니다.</li>
												<li>4. “사이트”는 이용자 간 또는 이용자와 제3자 상호간에 "서비스"를 매개로 하여 거래
													등을 한 경우에는 책임이 면제됩니다.</li>
												<li>5. “사이트”는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한
													책임을 지지 않습니다.</li>
											</ol>
											<h2>
												<span id="agree0130"></span>제30조 (재판권 및 준거법)
											</h2>
											<ol>
												<li>1. “사이트” 또는 "사이트"와 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소
													당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만,
													제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에
													제기합니다.</li>
												<li>2. “사이트” 또는 "사이트"와 이용자간에 제기된 전자상거래 소송에는 대한민국법을
													적용합니다.</li>
											</ol>
											<br>
											<p>
												부칙<br>이 약관은 2021년 04월 18일부터 적용됩니다.(2021년 04월 18일 개정)
											</p>
										</section>
										<ul class="agree-right">
											<li><span class="rdo-skin"> 
													<input type="radio" id="rdoAgreeMem-01" name="rdoAgreeMem" checked="checked">
													<span>선택</span>
												</span> 
												<label for="rdoAgreeMem-01">동의 안함</label>
											</li>
											<li><span class="rdo-skin"> <input type="radio" id="rdoAgreeMem-02" name="rdoAgreeMem"
													class="input_required" alt="구매이용약관 (필수)"> <span>선택</span>
												</span> 
												<label for="rdoAgreeMem-02">비회원 구매이용약관 동의 함</label>
											</li>
										</ul>

										<h4 class="title05">개인정보수집 및 이용에 대한 안내 (필수)</h4>
										<section class="agree-section-content">
											<h1 class="blind">개인정보처리방침개인정보 수집∙이용에 대한 안내</h1>
											<h2>1. 개인정보 수집 항목</h2>
											<p>- e-mail, 전화번호, 성명, 주소, 은행계좌번호, 신용카드번호 등</p>
											<h2>2. 수집 목적</h2>
											<ul>
												<li>- e-mail, 전화번호 : 고지의 전달, 불만처리나 주문/배송정보 안내 등 원활한 의사소통 경로의 확보.</li>
												<li>- 성명, 주소 : 고지의 전달, 청구서, 정확한 상품 배송지의 확보.</li>
												<li>- 은행계좌번호, 신용카드번호 : 유료정보에 대한 이용 및 상품구매에 대한 결제</li>
												<li>- 주문번호 : 배송정보 확인 시, 본인식별 절차에 사용.</li>
											</ul>
											<h2>3. 개인정보 보유기간</h2>
											<ul>
												<li>- 계약 또는 청약철회 등에 관한 기록 : 5년</li>
												<li>- 대금결제 및 재회 등의 공급에 관한 기록 : 5년</li>
												<li>- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</li>
											</ul>
											<h2>4. 비회원 주문 시 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지
												않습니다. 기타 자세한 사항은 ‘개인정보처리방침’을 참고하여주시기 바랍니다. (동의 후 문의가 가능합니다.)</h2>
										</section>
										<ul class="agree-right">
											<li><span class="rdo-skin"> 
													<input type="radio" id="rdoAgreeMem2-01" name="rdoAgreeMem2" checked="checked">
													<span>선택</span>
												</span> 
												<label for="rdoAgreeMem2-01">동의 안함</label>
											</li>
											<li><span class="rdo-skin"> 
													<input type="radio" id="rdoAgreeMem2-02" name="rdoAgreeMem2"
													class="input_required" alt="개인정보수집 및 이용에 대한 안내 (필수)">
													<span>선택</span>
												</span> 
												<label for="rdoAgreeMem2-02">비회원 구매이용약관 동의 함</label>
											</li>
										</ul>
									</section>
								</div>
								<button type="button" class="btn-close d_toggle_select">
									<span>Close</span>
								</button>
							</div>
						</div>

						<!-- 할인정보 -->
						<div class="orderWriteArea info_mem">
							<h3 class="title06">할인정보</h3>
							<div class="order-detail-wrap d_toggle on dcInfo">
								<button type="button" class="btn-open d_toggle_select">
									<span>Open</span>
								</button>
								<div class="order-detail-content d_toggle_cont">
									<div class="board-write">
										<table>
											<caption>할인정보 쿠폰, 포인트.</caption>
											<colgroup>
												<col style="width: 200px;">
												<col>
											</colgroup>
											<tr>
												<th scope="row"><label for="labelCoupon">쿠폰</label></th>
												<td><input type="text" id="labelCoupon"
													class="input-style01 input_required textOnly" value="0"
													style="width: 255px; ime-mode: disabled;" maxlength="270"
													disabled="disabled" /> 
													<span class="btnTdArea">
														<a href="#layerPopupCoupon" class="btn d_layer_open"
														id="btnLoadCoupons">쿠폰조회</a></span> 
													<span class="txtSub01">적용된 쿠폰 <a id='useCouponCnt'>0</a>건 (적용 가능한 쿠폰 
														<em id='useableCouponCnt'>0</em>건)
													</span>
												</td>
											</tr>
											<tr class="not_emp">
												<th scope="row"><label for="webPointUse">포인트</label></th>
												<td><input type="text" id="webPointUse"
													class="input-style01 align-right input_required numberOnly"
													value="0" style="width: 255px; ime-mode: disabled;" /> 
													<span class="btnTdArea"> 
														<a href="#" class="btn" id="btnWebPointApply">적용</a> 
														<a href="#" class="btn fill" id="btnWebPointApplyEnt">전체적용</a>
													</span> 
													<span class="txtSub01">잔액&nbsp;<em id="webPointBalance">0P</em></span> 
													<span class="txtSub02 st">온라인 쇼핑몰에서만 1,000원 이상 일 경우 1,000원 단위로 사용하실 수 있습니다.</span></td>
											</tr>
										</table>
									</div>
								</div>
								<button type="button" class="btn-close d_toggle_select">
									<span>Close</span>
								</button>
							</div>
						</div>

						<!-- 주문자 정보 -->
						<div class="orderWriteArea">
							<h3 class="title06">주문자정보</h3>
							<div class="order-detail-wrap d_toggle on">
								<button type="button" class="btn-open d_toggle_select">
									<span>Open</span>
								</button>
								<div class="order-detail-content d_toggle_cont">
									<div class="board-write">
										<table>
											<caption>주문하시는분</caption>
											<colgroup>
												<col style="width: 200px;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><label for="noMemName">주문하시는분</label>
														<span class="required">*</span></th>
													<td><input type="text" id="noMemName"
														class="input-style01 input_required textOnly"
														style="width: 255px;" alt="주문하시는분" maxlength="100" />
														<p class="txtSub01 info_mem">
															<span class="check-skin"> 
																<input type="checkbox" id="checkOrderToMemberInfo"> <span>선택</span>
															</span> 
															<label for="checkMemSame">회원 정보와 동일</label>
														</p>
													</td>
												</tr>
												<tr>
													<th scope="row"><label for="noMemContact">휴대전화번호</label>
														<span class="required">*</span></th>
													<td><input type="text" id="noMemMobile1"
														class="input-style01 input_required numberOnly"
														style="width: 65px;" alt="휴대전화번호" maxlength="3"
														minlength="3" /> 
														<span class="hyphen">-</span> 
															<input type="text" class="input-style01 input_required numberOnly"
															id="noMemMobile2" style="width: 75px;" alt="휴대전화번호"
															maxlength="4" minlength="3" /> 
														<span class="hyphen">-</span>
															<input type="text" class="input-style01 input_required numberOnly"
															id="noMemMobile3" style="width: 75px;" alt="휴대전화번호"
															maxlength="4" minlength="4" />
													</td>
												</tr>
												<tr>
													<th scope="row"><label for="noMemContact02">전화번호</label></th>
													<td><input type="text" id="noMemTel1"
														class="input-style01 numberOnly" style="width: 65px;"
														maxlength="3" /> <span class="hyphen">-</span> <input
														type="text" class="input-style01 numberOnly"
														id="noMemTel2" style="width: 75px;" maxlength="4" /> <span
														class="hyphen">-</span> <input type="text"
														class="input-style01 numberOnly" id="noMemTel3"
														style="width: 75px;" maxlength="4" /></td>
												</tr>
												<tr>
													<th scope="row"><label for="boardWriteEmail">이메일
															주소</label> <span class="required">*</span></th>
													<td><input type="text" id="noMemEmail1"
														class="input-style01 input_required" style="width: 152px;"
														alt="이메일" maxlength="100"> <span class="at">@</span>
														<input type="text" id="noMemEmail2"
														class="input-style01 input_required" style="width: 152px;"
														alt="이메일" maxlength="100"> <!-- select -->
														<div class="select-style01 d_select">
															<button type="button" class="d_select_sel"
																style="width: 152px;">
																<span>직접입력</span>
															</button>
															<ul>
																<li><a href="#" onClick="$('#noMemEmail2').val('');">직접입력</a></li>
																<li><a href="#" onClick="$('#noMemEmail2').val('naver.com');">naver.com</a></li>
																<li><a href="#" onClick="$('#noMemEmail2').val('daum.net');">daum.net</a></li>
																<li><a href="#" onClick="$('#noMemEmail2').val('nate.com');">nate.com</a></li>
																<li><a href="#" onClick="$('#noMemEmail2').val('gmail.com');">gmail.com</a></li>
																<li><a href="#" onClick="$('#noMemEmail2').val('hotmail.com');">hotmail.com</a></li>
															</ul>
														</div> <!-- //select --></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<button type="button" class="btn-close d_toggle_select">
									<span>Close</span>
								</button>
							</div>
						</div>
						<!-- 배송지 정보 -->
						<div class="orderWriteArea">

							<h3 class="title06 info_not_pickup not-delivery">배송지 정보</h3>
							<h3 class="title06 info_pickup not-delivery">받는분 및 매장정보</h3>

							<div class="order-detail-wrap d_toggle on">
								<button type="button" class="btn-open d_toggle_select">
									<span>Open</span>
								</button>
								<div class="order-detail-content d_toggle_cont">
									<div class="board-write">
										<table>
											<caption>배송지정보 입력</caption>
											<colgroup>
												<col style="width: 200px;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><label for="ordererName">받는분</label> <span
														class="required">*</span></th>
													<td><input type="text" id="ordererName"
														class="input-style01 input_required textOnly" alt="받는분"
														value="" style="width: 255px;" maxlength="20"> <span
														class="btnTdArea"> <a href="#layerPopupAddress"
															class="btn d_layer_open info_mem info_not_pickup"
															id="btnLoadDelivery">배송지선택</a>
													</span>
														<p class="txtSub01">
															<span class="check-skin" style=""> <input
																type="checkbox" id="checkOrderToNoMemberInfo"> <span>선택</span>
															</span> <label for="addSelect">주문자 정보와 동일</label>
														</p></td>
												</tr>
												<tr>
													<th scope="row"><label for="ordMobile1">휴대전화번호</label>
														<span class="required">*</span></th>
													<td><input type="text" id="ordMobile1"
														class="input-style01 numberOnly input_required" value=""
														style="width: 65px;" alt="휴대전화번호" maxlength="3"
														minlength="3" /> <span class="hyphen">-</span> <input
														type="text"
														class="input-style01 numberOnly input_required"
														id="ordMobile2" value="" style="width: 75px;" alt="휴대전화번호"
														maxlength="4" minlength="3" /> <span class="hyphen">-</span>
														<input type="text"
														class="input-style01 numberOnly input_required"
														id="ordMobile3" value="" style="width: 75px;" alt="휴대전화번호"
														maxlength="4" minlength="4" /></td>
												</tr>
												<tr>
													<th scope="row"><label for="ordTel1">전화번호</label></th>
													<td><input type="text" id="ordTel1"
														class="input-style01 numberOnly" value=""
														style="width: 65px;" maxlength="3" /> <span
														class="hyphen">-</span> <input type="text"
														class="input-style01 numberOnly" id="ordTel2" value=""
														style="width: 75px;" maxlength="4" /> <span
														class="hyphen">-</span> <input type="text"
														class="input-style01 numberOnly" id="ordTel3" value=""
														style="width: 75px;" maxlength="4" /></td>
												</tr>
												<tr class="info_not_pickup">
													<th scope="row"><label for="labelAddress">배송지주소</label>
														<span class="required">*</span></th>
													<td>
														<div class="board-gap">
															<input type="text" class="input-style01 input_required"
																alt="우편번호" id="postAddr" value="" style="width: 373px;"
																readonly="readonly"> <span class="btnTdArea"><a
																href="#" class="btn-style04"
																onclick="openZipcodePopup(); return false;">우편번호</a></span>
														</div>
														<div class="board-gap">
															<input type="text" class="input-style01 input_required"
																alt="주소" id="baseAddr" value="" style="width: 520px;"
																maxlength="200" readonly="readonly">
														</div>
														<div class="board-gap">
															<input type="text" class="input-style01 input_required"
																id="detailAddr" alt="상세주소" value=""
																style="width: 520px;" maxlength="200"> <input
																type="hidden" class="input-style01" id="dlvAddrSectCd"
																value="">
														</div>
														<div class="board-gap info_mem">
															<span class="check-skin"> <input type="checkbox"
																id="checkBaseAddress"> <span>선택</span>
															</span> <label for="chkAddr">기본배송지로 지정</label> <span
																class="check-skin"> <input type="checkbox"
																id="checkRegistAddress"> <span>선택</span>
															</span> <label for="chkAddr02">배송지관리 목록에 추가</label>
														</div>
													</td>
												</tr>
												<tr class="info_not_pickup">
													<th scope="row"><label for="labelComment">배송요청사항</label></th>
													<td>
														<div class="board-gap">
															<!-- select -->
															<div class="select-style01 d_select">
																<button type="button" class="d_select_sel"
																	id="memo_title" style="width: 520px;">직접입력</button>
																<ul id="memo_region">
																	<li><a href="#" onclick="orderform.setMemo('')">직접입력</a></li>
																	<li><a href="#" onclick="orderform.setMemo(this.innerHTML)">부재 시 경비실에 맡겨주세요.</a></li>
																	<li><a href="#" onclick="orderform.setMemo(this.innerHTML)">부재 시 문 앞에 놓아주세요.</a></li>
																	<li><a href="#" onclick="orderform.setMemo(this.innerHTML)">배송 전에 연락주세요.</a></li>
																	<li><a href="#" onclick="orderform.setMemo(this.innerHTML)">무인 택배함에 보관해주세요.</a></li>
																</ul>
															</div>
															<!-- //select -->
														</div>
														<div class="board-gap">
															<input type="text" class="input-style01" value=""
																id="dlvMemo" style="width: 520px;" maxlength="100" />
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<button type="button" class="btn-close d_toggle_select">
									<span>Close</span>
								</button>

								<script>
									//우편번호 팝업
									function openZipcodePopup() {
										layerPopup.popupOpenNow("#layerPopupZipcode");

										var inHtml = "";

										inHtml = "<div class='addressFindInner' id='zipView1'> \
										<ul class='text-list02'> \
											<li>도로명 + 건물번호 예)옥신타워</li>  \
											<li>읍/면/동/리 + 지번 예) 도곡로 117</li>   \
											<li>건물명 예) 서오구 00아파트</li>  \
											<li>사서함+사서함번호 예) 광화문 우체국 사서함 45</li>  \
										</ul> \
										<div class='board-list'> \
											<table summary='우편번호 찾기'> \
												<caption>우편번호 찾기</caption> \
												<colgroup> \
													<col width='70px'> \
													<col> \
												</colgroup> \
												<tbody>	 \
													<tr> \
														<td colspan='2' class='no-result'>검색결과가 없습니다.</td>  \
													</tr> \
												</tbody> \
											</table> \
										</div> \
									</div>";

									$("#zipView1").remove();
									$("#zipView2").remove();
									$('#zipSearchBefore').append(inHtml);
									$("#srchKeyword").val("");
								}
								</script>
							</div>
						</div>

						<!-- 결제수단 -->
						<div class="orderWriteArea">
							<h3 class="title06 orderPayMethod">결제수단</h3>
							<div class="order-detail-wrap d_toggle on orderPayMethod">
								<button type="button" class="btn-open d_toggle_select">
									<span>Open</span>
								</button>
								<div class="order-detail-content d_toggle_cont orderPayOptTab">
									<div class="board-write type02 order-paymethod-group">
										<table>
											<caption>결제수단 선택</caption>
											<colgroup>
												<col style="width: 200px;">
												<col>
											</colgroup>

											<tr>
												<th scope="row"><label for="">일반결제</label></th>
												<td>
													<div class="orderPayOpt">
														<ul>
															<li><span class="rdo-skin"> <input
																	type="radio" id="card_payment" name="paymentBtn"
																	value="100000000000"> <span>선택</span>
															</span> <label for="card_payment">신용/체크카드</label></li>
															<li><span class="rdo-skin"> <input
																	type="radio" id="virtual_payment" name="paymentBtn"
																	value="001000000000"> <span>선택</span>
															</span> <label for="virtual_payment">무통장입금(가상계좌)</label></li>
															<li><span class="rdo-skin"> <input
																	type="radio" id="transfer_payment" name="paymentBtn"
																	value="010000000000"> <span>선택</span>
															</span> <label for="transfer_payment">실시간 계좌이체</label></li>
															<li><span class="rdo-skin"> <input
																	type="radio" id="mobile_payment" name="paymentBtn"
																	value="000010000000"> <span>선택</span>
															</span> <label for="mobile_payment">휴대폰결제</label></li>
														</ul>
													</div>
												</td>
											</tr>

											<tr>
												<th scope="row"><label for="">간편결제</label></th>
												<td>
													<div class="orderPayOpt">
														<ul>
															<li class="easy-kakao"><span class="rdo-skin">
																	<input type="radio" id="kakao_payment"
																	name="paymentBtn" value="kakao"> <span>선택</span>
															</span> <label for="kakao_payment">카카오페이</label></li>
														</ul>
													</div>
												</td>
											</tr>
										</table>
									</div>

									<!-- 결제수단 - 신용/체크카드 : str -->
									<div class="orderPaytCont orderPayMethod"
										style="display: block" id="order-payment-content_100000000000">
										<h4>신용카드결제 시 유의사항</h4>
										<div class="mbBox payGuide">
											<a href="#lypopCardPayCf" class="btn sm d_layer_open" id="btnCard1">공인인증안내</a> 
											<a href="#lypopCardPaysf" class="btn sm d_layer_open" id="btnCard2">안전결제안내</a> 
											<a href="#lypopCardPayClick" class="btn sm d_layer_open" id="btnCard3">안심클릭안내</a>
										</div>

										<ul class="text-list01">
											<li>추가적으로 더 궁금하신 사항은 1:1 고객상담으로 문의 주시기 바랍니다.</li>
										</ul>
										<p class="orderMgBox">상품 주문 후 사이즈, 색상 변경이 불가능 하오니 주문 시 참고 해 주시기 바랍니다.</p>
									</div>
									<!-- //결제수단 - 신용/체크카드 : end -->

									<!-- 결제수단 - 카카오페이 : str -->
									<div class="orderPaytCont orderPayMethod" id="order-payment-content_kakao">
										<h4>카카오페이 이용 안내</h4>
										<ul class="text-list01">
											<li>카카오페이는 카카오톡에 카드(신용/체크)나 페이머니를 연동하고 지문 또는 비밀번호만으로 간단하게 결제할 수 있는 간편결제 서비스 입니다.</li>
											<li>신용(체크) 카드 : 모든 카드사 (휴대폰 명의자와 동일한 사용자의 카드만 등록 가능합니다.)</li>
											<li>머니 : 머니 잔액만 있다면 결제 가능</li>
										</ul>
										<p class="orderMgBox">상품 주문 후 사이즈, 색상 변경이 불가능 하오니 주문 시 참고 해 주시기 바랍니다.</p>
									</div>
									<!-- //결제수단 - 카카오페이 : end -->

									<!-- 결제수단 - 무통장입금(가상계좌) : str -->
									<div class="orderPaytCont orderPayMethod"
										id="order-payment-content_001000000000">
										<h4>구매안전 에스크로 서비스 사용</h4>
										<div class="rdOptBox mbBox info_not_pickup">
											<span class="rdo-skin"> <input type="radio"
												id="rdo2Escrow01" name="escrPayYn" value="Y"> <span>선택</span>
											</span> <label for="rdEscroOpt01Y" class="d_tab02_select">구매안전
												에스크로 사용</label> <span class="rdo-skin"> <input type="radio"
												id="rdo2Escrow02" name="escrPayYn" value="N"
												checked="checked"> <span>선택</span>
											</span> <label for="rdEscroOpt01N" class="d_tab02_select">구매안전
												에스크로 사용 안함</label>
										</div>
										<ul class="text-list01">
											<ul class="text-list01">
												<li>주문접수 후 입금완료가 되어야 주문 및 배송이 처리 됩니다.</li>
												<li>주문접수 후 입금 완료 시점에 재고가 품절되어 주문이 자동 취소 될 수 있습니다.</li>
												<li>무통장입금(가상계좌) 신청 후 1일(24시간) 이내 입금되지 않으면 주문이 자동 취소됩니다.</li>
												<li>무통장입금(가상계좌) 전에 MY PAGE 주문내역에서 신용/체크카드, 실시간 계좌이체로 변경하실 수 있습니다.</li>
												<li>입금 시 예금주 명은 ‘㈜ 에프앤에프’ 입니다.</li>
											</ul>
										</ul>
										<p class="orderMgBox">상품 주문 후 사이즈, 색상 변경이 불가능 하오니 주문 시 참고 해 주시기 바랍니다.</p>
									</div>
									<!-- //결제수단 - 무통장입금(가상계좌) : end -->

									<!-- 결제수단 - 실시간 계좌이체 : str -->
									<div class="orderPaytCont orderPayMethod"
										id="order-payment-content_010000000000">
										<h4 class="info_not_pickup">구매안전 에스크로 서비스 사용</h4>
										<div class="rdOptBox mbBox info_not_pickup">
											<span class="rdo-skin"> <input type="radio"
												id="rdoEscrow01" name="escrPayYn" value="Y"> <span>선택</span>
											</span> <label for="rdEscroOpt02Y" class="d_tab02_select">구매안전
												에스크로 사용</label> <span class="rdo-skin"> <input type="radio"
												id="rdoEscrow02" name="escrPayYn" value="N"
												checked="checked"> <span>선택</span>
											</span> <label for="rdEscroOpt02N" class="d_tab02_select">구매안전
												에스크로 사용 안함</label>
										</div>
										<ul class="text-list01 info_not_pickup">
											<li>실시간 계좌이체는 결제와 동시에 입출금이 처리 됩니다.</li>
											<li>이체 수수료는 부과되지 않습니다.</li>
										</ul>
										<p class="orderMgBox">상품 주문 후 사이즈, 색상 변경이 불가능 하오니 주문 시 참고 해 주시기 바랍니다.</p>
									</div>
									<!-- //결제수단 - 실시간 계좌이체 : end -->


									<!-- 결제수단 - 휴대폰결제 : str -->
									<div class="orderPaytCont orderPayMethod"
										id="order-payment-content_000010000000">
										<ul class="text-list01">
											<li>휴대폰 결제가능 금액은 각 이동통신사에 설정한 결제한도에 의해 결정됩니다.</li>
											<li>휴대폰 결제금액은 증빙서류 발급에서 제외됩니다. (현금영수증은 휴대폰 요금을 현금 납부하는
												경우에만 해당 이동통신사에서 발급합니다.)<br>휴대폰 결제 전체 취소 시,
												<ul class="text-list02">
													<li>당월 내 취소 요청 건은 즉시 취소됩니다.</li>
													<li>전월 결제 건 취소 시에는 이동통신사의 익월취소 불가 정책에 따라 환불 입력하신 계좌번호로 현금 환불되며 이때, 전월 이동통신비에 상품구매 결제 금액이 청구 됩니다.</li>
												</ul>
											</li>
											<li>핸드폰 소액결제 부분 취소 시, 잔존 대금에 대한 재승인 후 기존에 결제된 전체금액 승인이
												취소 처리됩니다.</li>
											<li>잔존 대금이 남은 결제한도액에 못 미치는 경우, 주문이 전체 취소 됩니다.</li>
										</ul>
										<p class="orderMgBox">상품 주문 후 사이즈, 색상 변경이 불가능 하오니 주문 시 참고
											해 주시기 바랍니다.</p>
									</div>
									<!-- //결제수단 - 휴대폰결제 : end -->

									<p class="payOptSave" id="paymentSaveRegion">
										<span class="check-skin"> <input type="checkbox"
											id="preferPayemntMethod"> <span>선택</span>
										</span> <label for="chkPayOptSame">다음에도 이 결제수단으로 결제하기</label>
									</p>
								</div>
								<button type="button" class="btn-close d_toggle_select">
									<span>Close</span>
								</button>
							</div>
						</div>

						<div class="orderPay d_fix">
							<div class="orderPayList d_fix_obj">
								<h3>결제정보</h3>
								<div class="orderPayInfo">
									<dl>
										<dt>선택상품금액</dt>
										<dd id="god_amt">0원</dd>
										<dt>할인적용금액</dt>
										<dd class="c_r" id="dc_amt">+0원</dd>
										<dt>배송비</dt>
										<dd id="dlv_amt">+0원</dd>
									</dl>
									<dl>
										<dt>총 주문금액</dt>
										<dd>
											<strong id="total_amount">0</strong>원
										</dd>
									</dl>
								</div>
								<div class="chkPayAgree">
									<span class="check-skin"><input type="checkbox"
										class="input_required" id="CheckoutAgree"
										alt="주문하실 상품, 가격, 배송정보, 할인정보 등을 확인하였으며, 구매에 동의하시겠습니까? (전자상거래법 제 8조 제2항)"><span>선택</span></span>
									<label for="chkAgreeOk">주문하실 상품, 가격, 배송정보, 할인정보 등을 확인하였으며, 구매에 동의하시겠습니까? (전자상거래법 제 8조 제2항)</label>
								</div>
								<div class="btn_order">
									<a href="javascript:orderform.addOrder();" class="btn lg fill">결제하기</a>
								</div>
							</div>
						</div>
					</div>

				</div>

				<div>
					<form name="kcpForm" id="kcpForm"></form>
				</div>
			</section>
		</main>
	</div>
</div>


<!-- layerpopup - 쿠폰선택 -->
<article id="layerPopupCoupon" class="layer-popup lypopCuponSch">
	<section class="layer-popup-cont" tabindex="0" style="width: 530px"
		id="couponViewLayer"></section>
</article>
<!-- //layerpopup - 쿠폰선택 -->

<!-- layerpopup - 배송지선택 -->
<article id="layerPopupAddress" class="layer-popup lypopaddrSelect">
	<section class="layer-popup-cont" tabindex="0" style="width: 530px">
		<h2>배송지선택</h2>
		<div class="layer-cont ly-box scroll">

			<div class="d_tab02">
				<ul class="tab-type01">
					<li class="d_tab02_select on"><a href="#">배송지 정보</a></li>
					<li class="d_tab02_select"><a href="#">최근배송지</a></li>
				</ul>

				<div id="deliveryInfoViewLayer"></div>

			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">확인</button>
		</div>
	</section>
</article>
<article id="orderConfirmCallback" class="layer-popup layer-type02">
	<section class="layer-popup-cont" tabindex="0">
		<h2>확인</h2>
		<div class="layer-popup-wrap02">
			<p class="layer-txt"></p>
		</div>
		<div class="btn-wrap03">
			<a href="#" class="btn-style03 d_layer_close">취소</a><a href="#"
				class="btn-style02 commonConfirmBtn">확인</a>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">close</button>
		</div>
	</section>
</article>
<article id="orderAlertLayer" class="layer-popup layer-type02">
	<section class="layer-popup-cont" tabindex="0">
		<div class="layer-popup-wrap02">
			<p class="layer-txt"></p>
		</div>
		<div class="btn-wrap">
			<a href="#" class="btn-style02 d_layer_close">닫기</a>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="lyPopOrderFail" class="layer-popup lyPopOrderFail">
	<section class="layer-popup-cont" tabindex="0" style="width: 530px">
		<h2>주문실패</h2>
		<div class="layer-cont ly-box">
			<div class="mgBoxSy01"> 주문 처리에 실패하여<br>주문을 완료하지 못했습니다.
			</div>
			<div class="mgBoxSy02"> 재시도를 하시거나 계속 발생하는 경우 <br>고객센터(080-807-0012)로 문의 주시기 바랍니다.<br>
				<span class="txtTime">(평일 오전 9시 ~ 오후 6시: 토/일 공휴일 휴무)</span>
			</div>
			<div class="lyBtnArea">
				<a href="/" class="btn">홈으로 가기</a> <a href="/cart/goods/list"
					class="btn">장바구니 가기</a> <a href="/order/orderform/new"
					class="btn fill">다시 주문하기</a>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="layerPopupZipcode" class="layer-popup addressFind-pop">
	<section class="layer-popup-cont" tabindex="0">
		<h2>우편번호 찾기</h2>
		<div class="layer-cont scroll">

			<div class="addressFind-popWrap" id="zipSearchBefore">

				<!-- 검색S -->
				<div class="addressFindSrch">
					<input type="search" class="input-style02" name="srchKeyword"
						id="srchKeyword"
						onkeydown="if(event.keyCode == 13) getSearchZipcode()"> <a
						href="#" class="btn sm"
						onclick="javascript:getSearchZipcode(); return false;">검색</a>
				</div>
				<!-- //검색E -->


			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close"></button>
		</div>
	</section>
</article>

<script>
	function getSearchZipcode(pageNo) {

		var keyword = $("#srchKeyword").val();
		if ((keyword == "" || keyword.trim() == "")) {
			//검색어 입력해 주세요.
			alert("검색어 입력해 주세요.");
			$("#srchKeyword").focus();
			return;
		}

		$("#srchKeyword").val(keyword.replace('\'', '`'));

		if (pageNo == "") {
			pageNo = 1;
		}

		var strParams = {
			'_csrf' : '8b6da05f-e905-498a-87d2-67e843b06bb5',
			'pageNo' : pageNo,
			'srchKeyword' : $("#srchKeyword").val()
		};

		$.ajax({
			type : "POST",
			async : true,
			url : PATH_LOCALE + "/common/zipcode/list",
			data : strParams,
			success : function(data) {
				console.log(data)
				//$('#zipcode_list').html(data);
				$("#zipView1").remove();
				$("#zipView2").remove();
				$('#zipSearchBefore').append(data);
			},
			error : function(pa_data, status, err) {
				alert("error forward : " + err + " ,status=" + status);
			}
		});
	}
</script>

<script type="text/javascript">
	$(document).ready(
			function() {

				function swiperTemplate(rt) {
					var list = rt.noticeList, deviceType = rt.deviceType;
					var $noticePOPcenter = $('#notice-POP-center');
					var notiSn = $.map(list, function(row) {
						return row.notiSn;
					}).join("_");
					if (getCookie('notice-popup-' + notiSn)) {
						return;
					}
					$noticePOPcenter.find('input[type=checkbox]').val(notiSn);
					$noticePOPcenter.find('input[type=checkbox]').click(
							function() {
								var notiSn = $(this).val();
								setCookie('notice-popup-' + notiSn, true, 1);
								$('#notice-POP-center').remove();
							});
					$noticePOPcenter.on('click', '.btn-notice-close',
							function() {
								$(this).parent().remove();
							});

					for (var i = 0, max = list.length; i < max; i++) {
						var row = list[i];
						var notiContUseSectCd = row.notiContUseSectCd;// PC_MOBILE_UNITY_USE, PC_MOBILE_IND_USE    			
						var content = row.pcNotiCont;
						if (notiContUseSectCd === 'PC_MOBILE_IND_USE'
								&& deviceType === 'MOBILE') {
							content = row.mobileNotiCont;
						}
						var html = [];
						html.push('<li class="swiper-slide slide'
								+ (i + 1).padLeft(2, '0') + '">');
						html.push('	<div class="cons">');
						html.push(content);
						html.push('	</div>');
						html.push('</li>');
						$noticePOPcenter.find('ul').append(html.join(''));
					}
					if (list.length > 0) {
						$noticePOPcenter.css('display', 'flex');
						new Swiper('#notice-POP-center .swiper-container', {
							slidesPerView : 1,
							observer : true,
							observeParents : true,
							resistance : true,
							resistanceRatio : 0,
							pagination : {
								el : '#notice-POP-center .pagination',
								clickable : true
							}
						});
					}
				}

				function layerTemplate(rt) {
					var list = rt.noticeList, deviceType = rt.deviceType;
					var $noticePOPcenter = $('.wrap');
					var notiSn = $.map(list, function(row) {
						return row.notiSn;
					}).join("_");

					$noticePOPcenter.on('click',
							'.noticeView-pop input[type=checkbox]', function() {
								var notiSn = $(this).attr('data-noti-sn');
								setCookie('notice-popup-' + notiSn, true, 1);
								$('#noticePOP-' + notiSn).remove();
							});

					$noticePOPcenter.on('click',
							'.noticeView-pop .d_layer_close', function() {
								$(this).parent().parent().parent().remove();
							});

					for (var i = 0, max = list.length; i < max; i++) {
						var row = list[i];
						var notiContUseSectCd = row.notiContUseSectCd;// PC_MOBILE_UNITY_USE, PC_MOBILE_IND_USE    			
						var content = row.pcNotiCont;
						if (notiContUseSectCd === 'PC_MOBILE_IND_USE'
								&& deviceType === 'MOBILE') {
							content = row.mobileNotiCont;
						}
						row.content = content;
						$('.wrap')
								.append($('#noticePopupTemplate').render(row));
						layerPopup.popupOpenNow('#noticePOP-' + row.notiSn);
						setTimeout($.proxy(function() {
							$(
									'#noticePOP-' + this.notiSn
											+ " .layer-popupinner").width(
									$(
											'#noticePOP-' + this.notiSn
													+ " .layer-cont img")
											.width());
						}, row), 1000);

						if ($('.wrap').is(':contains(.noticeView-pop)')) {
							$('.contain').off('scroll touchmove mousewheel');
						}
					}
				}

				function getPopupList(displayCallback) {
					var arr = window.location.search.substring(1).split('&');
					var previewNotiSnList;
					for (i = 0; i < arr.length; i++) {
						var row = arr[i].split('=');
						if (row[0] === 'previewNotiSnList') {
							previewNotiSnList = row[1];
							break;
						}
					}

					var data = {
						searchExpsrScrinSectCd : 'ORDSH' || 'MAIN'
					};
					if (previewNotiSnList) {
						data.previewNotiSnList = previewNotiSnList;
					}
					$.ajax(PATH_LOCALE + '/helpdesk/notice/popupList.ajax', {
						type : 'get',
						data : data,
					}).done(function(rt) {
						displayCallback(rt);
					});
				}

				getPopupList(swiperTemplate);
			});
</script>
<script>
	$(document).ready(function() {

		orderform.load();

		$(".agree-link a").click(function(e) {
			e.preventDefault();
			var hrefNm = $(this).attr("href");
			var object = $(hrefNm);
			if (object) {
				var posTop = $(this).closest(".agree-section-content");
				posTop.animate({
					scrollTop : object.offset().top - posTop.offset().top
				}, 100);
			}
		});
	});
</script>
<!--// 컨텐츠 끝 -->

<script>
	function doFooterAsk() {
		if (getCookie("__NCP_LOCALE__") == "ko") {
			jsLinkUrlPost(PATH_LOCALE + '/helpdesk/bundleOrder/list');
		} else {
			jsLinkUrlPost(PATH_LOCALE + '/helpdesk/bundleOrder/new');
			/* var bool = confirm(MESSAGES['common.js.header.msg']);
			
			if(bool){
				changeLocale("ko");
			} */
		}
	}

	function doFooterCenter() {
		if (getCookie("__NCP_LOCALE__") == "ko") {
			jsLinkUrlPost(PATH_LOCALE + '/helpdesk');
		} else {
			var bool = confirm(MESSAGES['footer.js.locale.msg']);

			if (bool) {
				changeLocale("ko");
			}
		}
	}

	function doFooterView() {
		if (getCookie("__NCP_LOCALE__") == "ko") {
			window
					.open("https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1538102451&apv_perm_no=2011322016230200086");
		} else {
			var bool = confirm(MESSAGES['footer.js.locale.msg']);

			if (bool) {
				changeLocale("ko");
			}
		}
	}

	function goFamilyUrl(url) {
		window.open(url);
	}

	function goLangUrl(url) {
		window.open(url);
	}

	function goRetailStore() {
		if (getCookie("__NCP_LOCALE__") == "ko") {
			jsLinkUrlPost(PATH_LOCALE + '/helpdesk/notice/view/99');
		} else if (getCookie("__NCP_LOCALE__") == "en") {
			jsLinkUrlPost(PATH_LOCALE + '/helpdesk/notice/view/100');
		} else if (getCookie("__NCP_LOCALE__") == "cn") {
			jsLinkUrlPost(PATH_LOCALE + '/helpdesk/notice/view/101');
		}
	}
</script>
<!--하단-->
<%@include file="/view/user/footer.jsp"%>


<article id="releaseDrmncyPopup" class="layer-popup layer-type02">
	<section class="layer-popup-cont" tabindex="0">
		<h2>휴면 계정 해제</h2>
		<div class="layer-popup-wrap02">
			<p class="layer-txt03">회원님 반갑습니다. 휴면 계정이 해제되었습니다.</p>
			<p class="layer-txt04">(1년간 온라인 로그인 이력이 없거나, 오프라인 매장 결제 이력이 없을 경우
				휴면계정으로 전환됩니다.)</p>
		</div>
		<div class="btn-wrap03">
			<a
				href="javascript:callbackReleaseDrmncyAfter('releaseDrmncyPopup');"
				class="btn-style02">확인</a>
		</div>
		<div class="layer-popup-close" style="display: none;">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="commonLayerPopup" class="layer-popup popCertifi">
	<section class="layer-popup-cont" tabindex="0">
		<h2></h2>
		<div class="layer-popup-wrap">
			<p class="msg-txt layer-txt"></p>
			<div class="btns">
				<a href="javascript:;" class="btn lg fill btn-confirm d_layer_close">확인</a>
			</div>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>


<article id="commonLayerPopupForConfirm" class="layer-popup popConfirm">
	<section class="layer-popup-cont" tabindex="0">
		<h2></h2>
		<div class="layer-popup-wrap">
			<p class="layer-txt"></p>
		</div>
		<div class="btn-wrap">
			<a href="javascript:callbackConfirmLayer(false);" class="btn"></a> <a
				href="javascript:callbackConfirmLayer(true);" class="btn fill"></a>
		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close">닫기</button>
		</div>
	</section>
</article>

<article id="bottomEmailPop" class="layer-popup agreeMent-pop">
	<section class="layer-popup-cont" tabindex="0">
		<h2>개인정보수집 및 이용에 대한 동의</h2>
		<div class="layer-cont">

			<div class="agreeMent-popWrap">
				<ul class="text-list02">
					<li>개인정보보호법 제15조 2항에 의한 수집,이용 동의</li>
					<li>이용목적 : STRETCH ANGELS 최신정보를 제공하기 위하여 사용</li>
					<li>수집항목 : 이메일</li>
					<li>보유 및 이용기간 : 수신 둉의 거부 시, 즉시 삭제</li>
				</ul>
				<div class="btn-wrap">
					<a href="#" class="btn lg fill"
						onclick="agreeEmailNewsLetter(); return false;">확인</a>
				</div>
			</div>

		</div>
		<div class="layer-popup-close">
			<button type="button" class="d_layer_close"></button>
		</div>
	</section>
</article>
</body>
</html>