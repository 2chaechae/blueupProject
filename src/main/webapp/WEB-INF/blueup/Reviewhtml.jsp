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
										<td style="font-size: 16px;" colspan="5"></td>
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
													style="height: 10px; width: 60px;">
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