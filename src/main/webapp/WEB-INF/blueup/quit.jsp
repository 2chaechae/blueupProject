<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  

<!-- 컨텐츠 시작 -->
	<div class="contain my lnblist-Wrap" id="contain" style="padding-top: 50px; min-height: 412px;">
		<div class="container">
		
			<h2 class="title01">마이페이지</h2>

<%@ include file="mypageMenu.jsp" %>
<main class="contents memberWithdraw-wrap" id="contents">
				
				<div class="location-contents">
				<p class="location">
					<span><a href="/main/mall/view">Home</a></span>
							<span><a href="/mypage/view">마이페이지</a></span>
							<span>회원정보</span>
							<strong>회원탈퇴</strong>
							</p>
			</div> 		<!-- 회원정보S -->
				
				<!-- //회원정보E -->
				
				<hr class="hr-666">
				
				<!-- 주문/클레임 현황 정보 영역S -->
				<div class="memberODinfo">
					
					<!-- 탈퇴 가능한 경우S -->
					<div class="memberWithdraw-inner" id="sectionPossible">
					<form id="secessionMemberForm" name="sectionPossible">
					<input type="hidden" name="checkPasswordFlag" value="MB20211031069017220211107174102079435">
						<div class="contTxtBox">
							<strong>유의사항</strong>
							<ul class="text-list02">
								<li>전자상거래 이용내역이 있는 회원님은 전자상거래 등에서의 소비자보호에 관한 법률에 의거 교환/반품/환불 및 사후처리(A/S) 등을 위해 회원정보가 관리됩니다.</li>
							</ul>
						</div>
						<div class="memberWithdrawInfo">
							<strong>회원탈퇴 사유</strong>
							<div class="memberWithdrawGray">
								<ul>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="DLV_DSCNTT" name="mbr.secsnResnCd" value="DLV_DSCNTT">
											<span>선택</span>
										</span>
										<label for="DLV_DSCNTT">배송불만</label>
									</li>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="USE_FREQ_LOW" name="mbr.secsnResnCd" value="USE_FREQ_LOW">
											<span>선택</span>
										</span>
										<label for="USE_FREQ_LOW">이용빈도낮음</label>
									</li>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="AS_DSCNTT" name="mbr.secsnResnCd" value="AS_DSCNTT">
											<span>선택</span>
										</span>
										<label for="AS_DSCNTT">A/S 불만</label>
									</li>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="GOD_PRC_QLTY_DSCNTT" name="mbr.secsnResnCd" value="GOD_PRC_QLTY_DSCNTT">
											<span>선택</span>
										</span>
										<label for="GOD_PRC_QLTY_DSCNTT">상품의 다양성/가격 품질 불만</label>
									</li>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="PSNL_INFO_EFFLUX_CNCRN" name="mbr.secsnResnCd" value="PSNL_INFO_EFFLUX_CNCRN">
											<span>선택</span>
										</span>
										<label for="PSNL_INFO_EFFLUX_CNCRN">개인정보유출 우려</label>
									</li>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="SOPMAL_SYS_DSCNTT" name="mbr.secsnResnCd" value="SOPMAL_SYS_DSCNTT">
											<span>선택</span>
										</span>
										<label for="SOPMAL_SYS_DSCNTT">쇼핑몰 시스템 불만</label>
									</li>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="EXCHG_RFD_DSCNTT" name="mbr.secsnResnCd" value="EXCHG_RFD_DSCNTT">
											<span>선택</span>
										</span>
										<label for="EXCHG_RFD_DSCNTT">교환/환불 불만</label>
									</li>
									<li>
										<span class="rdo-skin">
											<input type="radio" id="MBR_SHOPNG_BNEF_LOW" name="mbr.secsnResnCd" value="MBR_SHOPNG_BNEF_LOW">
											<span>선택</span>
										</span>
										<label for="MBR_SHOPNG_BNEF_LOW">회원특혜/쇼핑혜택 낮음</label>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="btnWrapBox">
							<a href="javascript:;" class="btn" id="quitRequest">탈퇴 요청</a>
						</div>
					</form>
					</div>

<form id="mainPage" method="post" action="/test/movedIndex.do">
</form>			
<script type="text/javascript">
$(document).ready(function(){
	
	$('#quitRequest').on('click',function(){
		var userId = localStorage.getItem("user_id");
		
		$.ajax({
			type : 'post',
			url:"/test/quit.do",
			data : { user_id : userId },
			dataType : 'json',
	        success : function(data){
            	alert("회원탈퇴가 정상적으로 진행되었습니다. 감사합니다");
            	localStorage.clear();
            	$("#mainPage").submit();
	        },
	        error:function(request,status,error){
	        	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
	       	}
	  });
	});
});

</script>					
			
		

</body>
</html>