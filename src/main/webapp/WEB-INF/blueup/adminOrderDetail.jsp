<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문상세페이지</title>
</head>
<body style="font-family:Noto-Sans-Korean, sans-serif">
<!-- 옵션창 사이즈 -->
<script type="text/javascript">
	self.resizeTo(1300,600);
</script>
<!-- 컨텐츠 시작 -->
<div class="contain my od lnblist-Wrap" id="contain">
	<div class="container">
		<main class="contents" id="contents">
			<h2 class="title01">주문/배송 상세관리</h2>
			<div>
				<div>
					<!-- 주문상세정보 -->
					<div>
						<h2>주문정보</h2>
						<div>
							<div class="board-write">
								<table>
									<tbody>
										<tr>
											<th style="width: 200px;"><label>주문번호</label></th>
											<td>${orderdetail.get(0).order_no }</td>
											<th style="width: 200px;"><label>주문일시</label></th>
											<td><fmt:formatDate value="${orderdetail.get(0).order_time }" pattern="yyyy-MM-dd hh:mm:ss" /></td>
										</tr>
										<tr>
											<th style="width: 200px;"><label>주문자/수령인</label></th>
											<td>${orderdetail.get(0).buyer_name }/${orderdetail.get(0).receiver }</td>
											<th style="width: 200px;"><label>휴대전화번호</label></th>
											<td>${orderdetail.get(0).phone1 } - ${orderdetail.get(0).phone2 } - ${orderdetail.get(0).phone3 }</td>
										</tr>
										<tr>
											<th style="width: 200px;"><label>주소</label></th>
											<td>${orderdetail.get(0).address }</td>
											<th style="width: 200px;"><label>배송요청사항</label></th>
											<td>${orderdetail.get(0).message }</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- 상품정보 -->
					<br><br>
					<div>
						<h2>상품정보</h2>
						<div>
							<div class="orderTable">
								<table class="board-list">
									<thead>
										<tr>
											<td style="width: 100px; font-weight: bold;">주문상품명</td>
											<td style="width: 100px; font-weight: bold;">주문상품옵션</td>
											<td style="width: 100px; font-weight: bold;">주문수량</td>
											<td style="width: 100px; font-weight: bold;">주문상품금액</td>
											<td style="width: 100px; font-weight: bold;">할인/혜택</td>
											<td style="width: 120px; font-weight: bold;">배송시작일자</td>
											<td style="width: 120px; font-weight: bold;">배송완료일자</td>
											
										</tr>
									</thead>
									<tbody id="goodsViewLayer">
										<tr>
											<td>
												<div class="product-info-text">
													<div class="product-info-box">
														<div class="product-more-info"></div>
														<p class="product-name"><a href="#" id="product_name">${orderdetail.get(0).product_name }</a></p>
													</div>
												</div>
											</td>
											<td>
												<div class="product-option">
													<span>${orderdetail.get(0).product_color} / ${orderdetail.get(0).product_size}</span>
												</div>
											</td>
											<td>${orderdetail.get(0).quantity}</td>
											<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).product_price}" />원</td>
											<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${orderdetail.get(0).coupon_discount + orderdetail.get(0).used_point + orderdetail.get(0).discount_rate}" />원</td>
											<td><fmt:formatDate value="${orderdetail.get(0).delivery_start_date}" pattern="yyyy-MM-dd hh:mm" /></td>
											<td><fmt:formatDate value="${orderdetail.get(0).delivery_end_date}" pattern="yyyy-MM-dd hh:mm" /></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<br>
					<div style="text-align: center;">
						<!--  button -->
						<a href="#" class="btn fill w160" onclick="okBtn();">확인</a>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
</body>
<script type="text/javascript">
function okBtn(){
	window.close();
}
</script>
</html>