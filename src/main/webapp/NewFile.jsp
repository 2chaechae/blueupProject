<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <c:forEach var="notice" items="${noticeList}" varStatus="status">
	            <dl>
	              <dt>
	              	<p>
	              	  <span class="t5_num">1</span>
		              <span class="top_tit">${notice.notice_cnt}"></span>
		              <span class="top_tit">${notice.notice_type}"</span>${notice.notice_title}">
		            </p>
		            </dt>
	              <dd>
	                <c:out value="${noticeVO.notice_content}"></c:out>
	              </dd>
	            </dl>
 </c:forEach>
</body>
</html>