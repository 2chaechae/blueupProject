<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../../../view/mlb/adminHeader.jsp"%>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js?v=prod-version-858_20211102145956"></script>

<!-- 컨텐츠 시작 -->
<div class="contain my od lnblist-Wrap" id="contain">
	<div class="container">
		<%@ include file="../../../view/mlb/adminMenu.jsp"%>
		<main class="contents" id="contents">
			<h2 class="title01">주문/배송관리</h2>
			<div class="orderInfoCon">
				<div class="odSearchOptBox">
					<dl class="period-wrap period-type02 clearfix">
						<dt class="blind">상태</dt>
						<dd class="fl">
							<!-- select -->
							<div class="select-style02 d_select">
								<button type="button" class="d_select_sel" style="width: 120px;">
									<span>전체</span>
								</button>
							</div>
						</dd>
						<dt>조회기간</dt>
						<dd>
							<input type="text" class="calendar" id="dateStart" name="dateStart" value="" readonly /> 
							<input type="text" class="calendar" id="dateEnd" name="dateEnd" value="" readonly />
							<a href="#none" class="btn sm" onclick="goMyPageClaimList(); return false;">검색</a> 
							<a href="#none" class="btn sm" onclick="reset();">초기화</a>
						</dd>
					</dl>
				</div>
				<!-- order Result -->
				<div class="odSearchResult">
					<div class="odResultTop">
						<div>
							<strong class="listTotal">전체(<em class="fc_red" id="orderCnt">${fn:length(orderlist)}</em>건)</strong>
						</div>
						<div style="text-align: center; float: right;">
							<span><a href="#" class="btn sm fill" onclick="getDeliveryPreparing();">배송준비중</a></span>
							<span><a href="#" class="btn sm fill" onclick="getDeliveryShipping();">배송중</a></span>
							<span><a href="#" class="btn sm fill" onclick="getDeliveryComplete();">배송완료</a></span>
							<span><a href="#" class="btn sm fill" onclick="getDeliveryDelay();">배송지연</a></span>
							<span><a href="#" class="btn sm fill" onclick="getReturnShipping();">반품수거중</a></span>
							<span><a href="#" class="btn sm fill" onclick="getReturnComplete();">반품수거완료</a></span>
							<span><a href="#" class="btn sm fill" onclick="getExchangeCollectionShipping();">교환수거중</a></span>
							<span><a href="#" class="btn sm fill" onclick="getExchangeCollectionComplete();">교환수거완료</a></span>
						</div>
						<br>
						<div class="orderTable">
							<table class="board-list orderTable" style="width: 1020px;">
								<thead>
									<tr>
										<td style="width: 35px;">
											<div style="display: flex;">
												<input type="checkbox" name="allCheck" id="allCheck" style="margin-left: 10px;">
											</div>
										</td>
										<td style="width: 100px; font-weight: bold;">주문상품명</td>
										<td style="width: 120px; font-weight: bold;">주문자/수령인</td>
										<td style="width: 120px; font-weight: bold;">주문결제금액</td>
										<td style="width: 120px; font-weight: bold;">결제방식</td>
										<td style="width: 120px; font-weight: bold;">주문배송상태</td>
										<td style="width: 120px; font-weight: bold;">주문관리</td>
									</tr>
									<c:forEach items="${orderlist }" var="orderlist">
										<tr>
											<td style="width: 35px">
												<div style="display: flex;">
													<input type="checkbox" onClick="getCheckedValue();" class="check_class" name="check" id="check" value="${orderlist.order_detail_no }" style="margin-left: 10px;">
												</div>
											</td>
											<td style="width: 120px;">${orderlist.product_name}</td>
											<td style="width: 120px;">${orderlist.buyer_name}/${orderlist.receiver}</td>
											<td style="width: 120px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderlist.order_price }" />원</td>
											<td style="width: 120px;">${orderlist.order_means}</td>
											<td style="width: 120px;">${orderlist.order_status}</td>
											<td style="width: 120px;"><a href="#" onclick="orderDetail(${orderlist.order_detail_no});" class="btn sm gray d_layer_open">상세</a></td>
										</tr>
										
										<c:if test="${empty orderlist }" var="orderlist">
											<tr>
												<td>
													<div style="width: 1020px; height: 200px; padding-top: 100px;">주문내역이 없습니다.</div>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
</body>
<script>
var str;
/* 체크버튼 */
$(document).ready(function(){
	$("#allCheck").click(function(){
		if($("input:checkbox[name=allCheck]").is(":checked") == true) {
			$("input[name=check]:checkbox").prop("checked", true);
		}else {
			$("input[name=check]:checkbox").prop("checked", false);
		}
	});
});


function getCheckedValue(){
	str = '';
  	var check = $('input[name=check]:checked').each(function(){
		str+= $(this).val()+",";
	});
}

/* 상세버튼 클릭 => 주문상세 팝업창 열고 닫기 */
function orderDetail(order_detail_no){
	window.open("/test/getOrderDetail.mdo?order_detail_no=" + order_detail_no,"height=600", "width=1300");
}


/* 초기화 */
function reset(){
	$('#dateStart').val('');
	$('#dateEnd').val('');
}

/* 배송준비중 */
function getDeliveryPreparing(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getDeliveryPreparing.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

/* 배송중 */
function getDeliveryShipping(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getDeliveryShipping.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
			
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

/* 배송완료 */
function getDeliveryComplete(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getDeliveryComplete.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
			
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

/* 배송지연 */
function getDeliveryDelay(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getDeliveryDelay.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
			
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

/* 반품수거중 */
function getReturnShipping(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getReturnShipping.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
			
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

/* 반품수거완료 */
function getReturnComplete(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getReturnComplete.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
			
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

/* 교환수거중 */
function getExchangeCollectionShipping(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getExchangeCollectionShipping.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
			
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

/* 교환수거완료 */
function getExchangeCollectionComplete(){
	var sstr = str.substr(0, str.length -1);
	$.ajax({
		url:'/test/getExchangeCollectionComplete.mdo',
	    type:'POST',
		data: {'str' : sstr},
		dataType:'json',
		success:function(data) {
			
		}
	});
	location.href='/test/getOrderManagement.mdo';
}

</script>
</html>
