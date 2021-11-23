<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<table>
		<c:choose>
						<c:when test="${review == null}">
							<div style="display: grid; width: 800px; margin: 50px;">
								<span style="font-size: 20px; text-align: center;">등록된
									리뷰가 없습니다.</span>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="review" items="${review}">
								<tr style="heigth: 100px; border: 1px none none solid none">
								<c:choose>
									<c:when test="${review.photo1 != null}">
										<td style="font-size: 16px;" colspan="5"><img
											src="${review.photo1}"
											style="height: 200px; width: 200px; margin: 10px;"></td>
									</c:when>
									<c:otherwise>	
										<td style="font-size: 16px;" colspan="5"><div style="height: 200px; width: 200px; margin: 10px;"></div></td>
									</c:otherwise>
								</c:choose>
									<td style="font-size: 16px; text-align: left" colspan="7">
										<c:choose>
											<c:when test="${review.star == 1}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star1.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:when test="${review.star == 2}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star2.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:when test="${review.star == 3}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star3.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:when test="${review.star == 4}">
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star4.png"
													style="height: 27px; width: 117px;">
											</c:when>
											<c:otherwise>
												<img
													src="https://blueup.s3.ap-northeast-2.amazonaws.com/icon/product/star5.png"
													style="height: 27px; width: 117px;">
											</c:otherwise>
										</c:choose> <br>${review.review_title}<br>${review.review_content}</td>
									<fmt:formatDate var="formatRegDate" value="${review.review_time}" pattern="yyyy.MM.dd" />
									<td style="font-size: 16px; text-align: center" colspan="3">${formatRegDate }</td>
									<td style="font-size: 16px; text-align: right" colspan="4">${review.user_id}님의
										리뷰입니다.<br>${review.product_size}<br>${review.product_color}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div style="display: block; text-align: center; width:1200px; margin : 50px 0;">
					<c:if test="${review.get(0).user_no != 0 }">
							<c:if test="${pageMaker.startPage != 1 }">
								<a href="javascript:void(0)" onclick="beforePage()">&lt;</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="p">
								<c:choose>
									<c:when test="${p == cri.page }">
										<b>|&nbsp;${p}&nbsp;|</b>
			
									</c:when>
									<c:when test="${p != cri.page }">
										<a href="javascript:void(0)" onclick="numberPage(this)">|&nbsp;${p}&nbsp;|</a>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${pageMaker.endPage != pageMaker.tempEndPage}">
								<a href="javascript:void(0)" onclick="afterPage()">&gt;</a>
							</c:if>
						</c:if>
				</div>