<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����������</title>
</head>
<body style="text-align:center;">
<br>
<span style="font-size:30px;">&nbsp;BlueUp �̿� ���&nbsp;</span>
<br>
<br>
<textarea class="terms" rows="50" cols="100" style="resize: none; font-size: large">
	<%=request.getParameter("vo") %>
</textarea>
</body>
</html>