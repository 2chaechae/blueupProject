<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>약관전문보기</title>
</head>
<body style="text-align:center;">
<br>
<span style="font-size:30px;">&nbsp;BlueUp 이용 약관&nbsp;</span>
<br>
<br>
<textarea class="terms" rows="50" cols="100" style="resize: none; font-size: large">
	<%=request.getParameter("vo") %>
</textarea>
</body>
</html>