<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
							<c:choose>
									<c:when test="${stockList == null}" >
										<tr><td colspan="10" class="no-result">재고내역이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="stock" items="${stockList }">
										<c:set value="${stock.unit_price}" var="unit"/>
										<c:set value="${stock.stock_quantity}" var="quantity"/>
										<fmt:formatNumber var="formatNumber" value="${stock.unit_price}" pattern="#,###" />
										<fmt:formatNumber var="cost" value="${unit * quantity}" pattern="#,###" />
										<tr onclick="gotoDetail(this)">
											<td scope="col" id="stock_no">${stock.stock_no}</td>
											<td scope="col">${stock.product_name}</td>
											<td scope="col">${stock.product_size}</td>
											<td scope="col">${stock.product_color}</td>
											<td scope="col">${formatNumber}원</td>
											<td scope="col">${stock.stock_quantity}</td>
											<td scope="col"><c:out value="${cost}"></c:out></td>
											<input type="hidden" value="${stock.product_no}"/>
										</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>