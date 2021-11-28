<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
							<c:choose>
									<c:when test="${productList == null}" >
										<tr><td colspan="10" class="no-result">상품내역이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="product" items="${productList }">
										<fmt:formatNumber var="formatNumber" value="${product.product_price}" pattern="#,###" />
										<fmt:formatDate var="formatRegDate" value="${product.registration_time}" pattern="yyyy.MM.dd" />
										<tr onclick="gotoDetail(this)">
											<td scope="col">${product.product_no}</td>
											<td scope="col">${product.product_name}</td>
											<td scope="col">${product.category_name}</td>
											<td scope="col">${product.detailed_category_name}</td>
											<td scope="col">${formatNumber}원</td>
											<c:choose>
												<c:when test="${product.display_status == true}">
													<td scope="col"><B>T</B></td>
												</c:when>
												<c:otherwise>
													<td scope="col"><B>F</B></td>
												</c:otherwise>
											</c:choose>
											<td scope="col">${formatRegDate}</td>
										</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>