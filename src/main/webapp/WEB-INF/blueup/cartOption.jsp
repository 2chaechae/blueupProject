<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cartOption 선택</title>
</head>
<body>
<script type="text/javascript">
	self.moveTo(50,50);
	self.resizeTo(400,300);
</script>
<h3 style="text-align:center">[옵션선택]</h3>
<div style="text-align:center">
사이즈 : 
<select id="size" style="text-align:center; width:200px; padding-bottom:10px; margin-bottom:10px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="size" items="${data}">
	<option value="${size.clothes_size}">${size.clothes_size}</option>
</c:forEach>
</select>
<br>
컬러 : 
<select id="color" style="text-align:center; width:200px; padding-bottom:10px; margin-bottom:10px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="colorList" items="${color}">
	<option value="${colorList}">${colorList}</option>
</c:forEach>
</select>
</div>
<div style="width:300px; display: flex;">
	<a href="javascript:void(0)" onclick="" style="display: flex; text-align:center;"><span style="width:150px; border:2px solid black; padding:5px 10px;">취소</span></a>
	<a href="javascript:void(0)" onclick="" style="display: flex; text-align:center;"><span style="width:150px; border:2px solid black; padding:5px 10px;">변경하기</span></a>
</div>
</body>
</html>