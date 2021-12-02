<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
<script src="${pageContext.request.contextPath}/js/cscenter.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nscenter.css">
<!-- 컨텐츠 시작 -->
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/top.js"></script>
<script src="js/cscenter.js"></script>

	<head>
  <link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
   <!-- <script type="text/javascript" src="/javascript/message/helpdesk_ko.js?v=prod-version-858_20211102145956"></script>
 --> <input type="hidden"  id="confirmBtn" />
  </head>
 <div id="pageTop"></div>
<!-- <script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/helpdesk/helpdesk.js"></script>
 -->
<form id ="gForm" action ="/helpdesk/faq/list" method="post">

    <div class="contain cs" id="contain">
        <div class="container">

            <h2 class="title01">고객센터</h2>

            <main class="contents csMain-wrap" id="contents">

                <div class="location-contents">
                    <p class="location">
                        <span>Home</span><strong title="현재 위치">고객센터</strong>
                    </p>
                </div>

                <!-- 상단탭 S -->
                <div class="csMainTab">
                    <ul>
                        <li><a href="/helpdesk/notice/list">공지사항</a></li>
                        <li>
                            <a href="/test/qnaList.do?pageNum=1&user_no=">1:1 문의</a>
                                    </li>
                        <li><a href="${pageContext.request.contextPath}/mypage/benefit/membershipRateInfo">회원혜택안내</a></li>
                        <li><a href="/helpdesk/faq/list?searchAllCd=FAQ_EXCHG_RTGOD_INQ">반품/교환 안내</a></li>
                    </ul>
                </div>
                <!--//상단탭 E -->

                <!-- SEARCH S -->
              <!--   <div class="search-wrap02">
                    <label for="searchType">FAQ SEARCH</label>
                    <div class="search-input02">
                        <input type="search" name="searchFaq" id="searchFaq" placeholder="궁금하신 내용을 입력해 주세요."><button type="button" onclick="javascript:searchFaqList();">검색</button>
                    </div>
                    <div>
                        <ul class="word-list">
                            <li><a href="javascript:sendQuick('교환');">교환</a></li>
                            <li><a href="javascript:sendQuick('반품');">반품</a></li>
                            <li><a href="javascript:sendQuick('배송');">배송</a></li>
                            <li><a href="javascript:sendQuick('취소');">취소</a></li>
                            <li><a href="javascript:sendQuick('환불');">환불</a></li>
                            <li><a href="javascript:sendQuick('비밀번호');">비밀번호</a></li>
                        </ul>
                    </div>
                </div> -->
                <!--//SEARCH E -->

                <!-- 자주 묻는 질문 S -->
                <!-- <!-- <div class="justify-wrap">
                    <h3 class="title01 left">자주 묻는 질문</h3>
                    <a href="/helpdesk/faq/list" class="btn-style07 right"><span>전체보기</span></a>
                </div> --> 
                <div class="board-list accordion-type d_accordion">
                    <table>
                        <caption>자주 묻는 질문 Top 10 번호, 분류, 제목 정보표.</caption>
                      <!--   <colgroup>
                            <col style="width:95px;">
                            <col style="width:230px;">
                            <col>
                        </colgroup> -->
                        <thead>
                       
				<!--//////공지사항///////-->
				<div id="search_wrap">
					<!--///자주찾는 질문 Top5///-->
					<div class="top5_wrap">
						<br>
						 <h3>자주찾는 질문</h3>
						 
						<div class=btn_wrap>
							<input type="button" id="btn1" value="배송문의">
							<input type="button" id="btn2" value="교환/반품문의">
							<input type="button" id="btn3" value="결제문의">
							<input type="button" id="btn4" value="회원관련문의">
						</div>
						<div class=faq_wrap></div>
						
						<dl>
						
							<dt style="padding-top: 20px" >
								<p >
									<span class="t5_num">1</span><span class="top_tit1">배송문의</span><label id="text1">언제배송되나요?</label>
								</p>
							</dt>
							<dd id="an1">결제 완료 후 기본 상품 준비기간은 영업일 기준 1-3일 정도 소요되며, 거래처 사정에 따라 2-3일 정도 더 소요 될 수 있습니다.
							3일 이상 입고지연되는 경우 알림톡으로 안내드리고 있습니다.입고 예정일, 출고 예정일 문의는 14시 이후로 연락주시면 가장 정확히 확인 가능합니다.</dd>
						</dl>
						<dl>
							<dt style="padding-top: 20px" >
								<p>
									<span class="t5_num">2</span><span class="top_tit1">배송문의</span><label id="text2">배송조회는 어떻게 하나요?</label>
								</p>
							</dt>
							<dd id="an2">상품 출고시 고객님의 카카오톡으로 송장번호가 포함된 알림톡을 보내드립니다.(카카오톡 미설치 고객님은 문자 발송됩니다.)</dd>
						</dl>
						<dl>
							<dt  style="padding-top: 20px">
								<p>
									<span class="t5_num">3</span><span class="top_tit1">배송문의</span><label id="text3">배송이 되었다는 문자를 받았는데 배송조회가 되지 않아요.</label>
								</p>
							</dt>
							<dd id="an3">저희쪽에서 출고된 상품은 CJ대한통운으로 발송되어 운송장 정보를 전송하는 시간이 필요합니다. 
							운송장번호를 이용한 배송조회는 저녁7~10시 이후 가능하며, 출고 후 1-3일 이내로 수령 가능합니다.</dd>
						</dl>
						<dl>
							<dt style="padding-top: 20px">
								<p >
									<span class="t5_num">4</span><span class="top_tit1">배송문의</span><label id="text4">주문번호로 확인 할 수 있나요?</label>
								</p>
							</dt>
							<dd id="an4">주문, 결제 완료시 알림톡(문자)과 메일로 주문번호를 보내드립니다.
							알림톡(문자)과 메일로 못 받으셨을 경우,주문자 성함, 연락처를 고객센터나 문의 남겨주시면 확인 가능합니다.</dd>
						</dl>
						<dl>
							<dt  style="padding-top: 20px">
								<p>
									<span class="t5_num">5</span><span class="top_tit1">배송문의</span><label id="text5">상품수령을 못했는데 배송완료 되었어요</label>
								</p>
							</dt>
							<dd id="an5">전산상으로 출고일 기준 2일 뒤에는 자동으로 배송완료로 상태변경됩니다.
							출고시 보내드린 송장번호로 조회해보시는게 가장 정확합니다.</dd>
						</dl>
					</div>
					<!--top5_wrap-->
				</div>
				<!--search_wrap-->
			<!-- </div>
			con_right
		</div>
		cs_wrap
	</div>
	con_wrap -->
	<script type="text/javascript">

	



	//고객센터 리스트
	$(".list_li2 div").hide();
	$(".list_li2").toggle(function(){
		//$(".list_li2 div").show();
		$(".list_li2 div:not(:animated)").slideDown();
		$("#list_lia").addClass("sel");
		$(".list_li2 span").text("--");
	},function(){
		$("#list_lia").removeClass("sel");
		$(".list_li2 div:not(:animated)").slideUp();
		$(".list_li2 span").text("+");
	});
	
	//고객서비스
	//문의하기
	$(".service:eq(0)").mouseover(function(){
		$("img",this).attr("src","images/csc/service1_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service1.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	//맞춤서비스
	$(".service:eq(1)").mouseover(function(){
		$("img",this).attr("src","images/csc/service2_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service2.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	//제품관리&수리
	$(".service:eq(2)").mouseover(function(){
		$("img",this).attr("src","images/csc/service3_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service3.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	//기프트 상담
	$(".service:eq(3)").mouseover(function(){
		$("img",this).attr("src","images/csc/service4_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service4.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	
	
	
	//자주찾는 질문 top5
	$(".top5_wrap > dl > dd:not(:first)").hide();
	$(".top5_wrap > dl > dt:first p").addClass("selected");
	
	$(".top5_wrap > dl > dt > p").click(function(){
		$(".top5_wrap > dl > dt > p").removeClass("selected");
		$(this).addClass("selected");
		
		if($(this).parent().next().css("display")=="none"){
			$(".top5_wrap > dl > dd").slideUp("fast");
		}
		$(this).parent().next().slideDown("fast");
		return false;
	});

	
	
	
		$(document).ready(function(){
			$('#btn1').click(function(){
				$('.top_tit1').text("배송문의");
				$('#text1').last().text("언제배송되나요?");
				$('#an1').text("결제 완료 후 기본 상품 준비기간은 영업일 기준 1-3일 정도 소요되며, 거래처 사정에 따라 2-3일 정도 더 소요 될 수 있습니다."
						+"3일 이상 입고지연되는 경우 알림톡으로 안내드리고 있습니다.입고 예정일, 출고 예정일 문의는 14시 이후로 연락주시면 가장 정확히 확인 가능합니다.");
				$('#text2').last().text("배송조회는 어떻게 하나요?");
				$('#an2').text("상품 출고시 고객님의 카카오톡으로 송장번호가 포함된 알림톡을 보내드립니다.(카카오톡 미설치 고객님은 문자 발송됩니다.)");
				$('#text3').last().text("배송이 되었다는 문자를 받았는데 배송조회가 되지 않아요.");
				$('#an3').text("저희쪽에서 출고된 상품은 CJ대한통운으로 발송되어 운송장 정보를 전송하는 시간이 필요합니다."
						+"운송장번호를 이용한 배송조회는 저녁7~10시 이후 가능하며, 출고 후 1-3일 이내로 수령 가능합니다.");
				$('#text4').last().text("주문번호로 확인 할 수 있나요?");
				$('#an4').text("주문, 결제 완료시 알림톡(문자)과 메일로 주문번호를 보내드립니다."
						+"알림톡(문자)과 메일로 못 받으셨을 경우,주문자 성함, 연락처를 고객센터나 문의 남겨주시면 확인 가능합니다.");
				$('#text5').last().text("상품수령을 못했는데 배송완료 되었어요");
				$('#an5').text("전산상으로 출고일 기준 2일 뒤에는 자동으로 배송완료로 상태변경됩니다."
						+"출고시 보내드린 송장번호로 조회해보시는게 가장 정확합니다.");
			});	
		
			$('#btn2').click(function(){
				$('.top_tit1').text("교환/반품문의");
				$('#text1').last().text("환불은 언제 어떻게 처리되나요?");
				$('#an1').text(" 반품(환불)시에는 상품 반송 입고확인 후처리 가능합니다.상품 확인 후 , 평일 기준 1~2일가량 처리 기간이 소요되며,"
						+"환불은 결제해주신 수단에 따라 환불이 진행됩니다.혹, 2일 경과시에도 주문서 상 반품-환불완료 상태확인이 되지 않는다면 고객센터로 문의 부탁드립니다.");
				$('#text2').last().text("상품 발송전인데 취소하고싶어요");
				$('#an2').text("마이페이지-주문내역 상세페이지에서 주문취소버튼 클릭 시 주문 취소가 진행됩니다."
						+"상품 발송이 완료된 후에는 취소가 불가능하오니 참고해주세요.");
				$('#text3').last().text("상품을 받았는데,하자/오배송을 받았어요.");
				$('#an3').text("하자 또는 오배송의 경우 고객센터로 먼저 연락을 주시고 반송 부탁드립니다."
						+"상품의 하자/오배송으로 교환하실 경우 상품 회수확인 후 배송비는 블루업측 부담으로 교환해드립니다."
						+"단, 동일상품에 한하여 교환처리 가능합니다.");
				$('#text4').last().text("교환/반품이 불가한 경우가 있나요?");
				$('#an4').text("-상품 수령 후 영업일 기준 7일이 경과한 경우."
						+ "-공정거래 표준약관 제 15조 2항에 의한 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우."
						+ "-모니터 해상도에 따라 색상 차이가 있을수 있기 때문에 불량으로 처리되지 않습니다."
						+ "-실측사이즈는 측정방법에 따라 1~3cm 오차가 있을 수 있으며, 니트 상품은 소재 특성상 1~5cm 오차가 있을 수 있습니다."
						+ "이런 경우 불량으로 교환/반품 불가한 점 양해 부탁드립니다."
						+ "-데님소재 및 컬러감이 강한 상품은 밝은 색상의 상품과 함께 착용시 이염의 가능성이 있는 점 주의 부탁드립니다."
						+ "-제작과정에 따라 마감처리 미흡(실밥), 초크자국 등이 있을 수 있으며 불량으로 판단되지 않습니다.");
						
				$('#text5').last().text("환불은 어떻게 받나요?");
				$('#an5').text("-카드결제: 카드취소 승인일로부터 5~7(카드사 업무일기준)이네에 취소승인확인이 가능합니다."
						+ "-실시간계좌이체: 취소 승인일로부터 5~7일 후 결제한 은행으로 자동입금"
						+ "-휴대폰결제: 당월취소만 가능하며 취소 승인일로부터 5~7일 소요");
			});	
			
			$('#btn3').click(function(){
				$('.top_tit1').text("결제문의");
				$('#text1').last().text("무통장 입금 결제방법으로 주문 후 입금했는데 확인되지 않아요.");
				$('#an1').text("주문 후 7일 이내에 입금확인이 되지 않을 경우 주문은 자동 취소됩니다."
						+"입금 후 1시간 뒤 자동으로 입금확인됩니다.");
				$('#text2').last().text("여러가지 상품을 따로 주문하였는데 한꺼번에 입금해도 되나요?");
				$('#an2').text("주문을 따로하시고 함께 입금하는 것은 가능하나, 주문서와 입금액이 일치하지 않기 때문에 자동입금확인이 불가합니다.");
				$('#text3').last().text("휴대폰/실시간계좌이체 부분취소 환불은 왜 안되나요?");
				$('#an3').text("결제 시스템 특성상 요금이 결제 당시 바로 정산되기 때문에 부분취소가 불가합니다."
						+"단, 휴대폰결제는 결제 당월에 내에서는 전체취소 가능합니다.");
				$('#text4').last().text("실수로 주문금액보다 더(혹은 덜) 입금했어요.");
				$('#an4').text("*주문금액보다 더 입금했을 경우 게시판에 주문번호/환불 받으실 계좌를 남겨주시면 익일 오전에 차액을 환불해드립니다"
						+ "*주문금액보다 덜 입금했을 경우 차액을 추가로 입금해주시고 게시판 또는 고객센터로 문의주세요.");
				$('#text5').last().text("주문시 입금하기로 한 이름이 아닌 다른 이름으로 입금했어요");
				$('#an5').text("다른 이름으로 입금하셨을 경우 고객센터(대표번호 1588-0903)로 연락을 주시거나,"
						+"문의 게시판에 입금자명, 입금날짜를 남겨주시면 확인 후 입금확인 도와드리고있습니다.");
			});	
			
			$('#btn4').click(function(){
				$('.top_tit1').text("회원관련문의");
				$('#text1').last().text("사용중인 아이디와/패스워드를 잊어서 로그인을 할수 없어요.");
				$('#an1').text("로그인 화면에서 아이디/비밀번호 찾기를 통하여 검색하실 수 있습니다."
						+ "해당방법으로도 확인이 어려우신 경우 고객센터로 문의부탁드립니다..");
				$('#text2').last().text("더이상 이용하지 않아요. 회원탈퇴를 하고싶어요.");
				$('#an2').text("회원탈퇴를 원하실 때는 사이트에 정상 로그인 하신 후 회원탈퇴 신청하실 수 있습니다."
						+ "회원탈퇴를 하신 후 재 가입이 가능하지만 기존의 적립금 또는 쿠폰이 반환된지 않습니다");
				$('#text3').last().text("회원가입을 해야지만 상품구매가 가능한가요?");
				$('#an3').text("회원과 비회원 모두 상품주문 및 기타이용이 가능합니다. 주문시 비회원 구매를 클릭하시면 됩니다.");
				$('#text4').last().text("회원정보변경은 어떻게 하나요?");
				$('#an4').text("회원가입시 입력하신 주소,패스워드등 각종 정보를 변경하실 때에는 사이트에 정상 로그인 하신 후 사이트 상단의 마이페이지 접속후--> 회원정보수정 란에서 변경 하실수 있습니다.");
				$('#text5').last().text("회원에 가입하면 어떤 혜택이 있나요?");
				$('#an5').text("등급별로 다양한 할인 혜택을 받아보실 수 있으며, 다양한 이벤트에 참여하실 수 있습니다.");
			});	
			
		});
		 </script>
                            <!-- <tr>
                                <th scope="col">번호</th>
                                <th scope="col">분류</th>
                                <th scope="col">제목</th>
                           </tr> -->
                        </thead>
                        
                    </table>
                </div>
                <!--//자주 묻는 질문 E -->

                <!-- 공지사항 S -->
                <div class="justify-wrap">
                    <h3>공지사항</h3>
                    <!-- <a href="/helpdesk/notice/list" class="btn-style07 right"><span>전체보기</span></a> -->
                </div>
                <div class="board-list">
                    <table>
                        <caption>공지사항 번호, 구분, 제목, <!-- 조회수, 등록일  -->정보표.</caption>
                        <colgroup>
                            <col style="width:100px;">
                            <col style="width:120px;">
                            <col>
                            <col style="width:120px;">
                            <col style="width:120px;">
                        </colgroup>
                        <!-- <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">구분</th>
                                <th scope="col">제목</th>
                               <th scope="col">조회수</th>
                                <th scope="col">등록일</th>
                            </tr>
                        </thead> -->
                     <!--    <tbody> -->
						<!--//for문//-->
								<tr>
                                    <th>번호</th>
                                    <th>유형</th>
                                    <th class="tleft"><a href="/test/getnoticeone.do">제목</a></th> 
                                    <th></th>
                                    <th>등록시간</th>
                                </tr> 
							 <c:forEach var="notice" items="${noticeList}" varStatus="status">
							 <input type="hidden" value="${notice.notice_no}"></input>
								 <tr>
                                    <td>${status.count}</td>
                                    <td>${notice.notice_type}</td>
                               			<!-- 공지사항 링크 -->
                                    <td class="tleft"><a href="javascript:void(0)" onclick="getnotice(this)">${notice.notice_title}</a></td> 
                                    <td></td>
                                    <td>${notice.notice_time}</td>
                                </tr> 
                               </c:forEach>
                           
                           <!--  </tbody> -->
                    </table>
                </div>
                <!--//공지사항 E -->

                <!-- CONTACT US S -->
                <div class="justify-wrap">
                    <h3>CONTACT US</h3>
                </div>
                <div class="csMainTXTBox">
                    <ul>
                        <li>
                            <a href="javascript:;">
                                <strong>전화문의</strong>
                                <p>080-807-0012</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" onclick="goKakaoTalkOpen()">
                                <strong>카카오톡</strong>
                                <p>상담하기</p>
                            </a>
                        </li>
                        <li>
							<a href="#" onclick="openLayerPopupForLogin('guestGroupCounsel', '/helpdesk/bundleOrder/list'); return false;"><strong>단체구매</strong><p>문의</p></a>
							</li>
                    </ul>
                </div>
                <!--//CONTACT US E -->

            </main>

        </div>
    </div>

</form>

<!-- <script>
	function searchFaqList(){
		if($('#searchFaq').val()!=""){
		$("#gForm").submit();
		}else{
		//alert("검색어를 입력해 주세요");
			alert('검색어를 입력 후, 검색버튼을 눌러 주세요.');
		}
	}
	function sendQuick(txt){
		var rtxt = encodeURI(txt);
		location.href= PATH_LOCALE + "/helpdesk/faq/list?searchFaq="+rtxt
	}
</script> -->
<!--// 컨텐츠 끝 -->
	
<script type="text/javascript">
function getnotice(element){
	var noticeNo = $(element).closest('tr').prev().val();
	location.href="/test/getnoticeone.do?notice_no="+noticeNo;
}
	

</script>
<!-- 2019.01.15 추가 -->

<%@ include file="/footer.jsp" %>
</body>
</html>