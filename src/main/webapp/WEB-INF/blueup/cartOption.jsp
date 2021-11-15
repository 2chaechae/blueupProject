<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cartOption 선택</title>
</head>
<body style="font-family:Noto-Sans-Korean, sans-serif">
<script type="text/javascript">
	self.moveTo(300,300);
	self.resizeTo(400,280);
</script>
<h3 style="text-align:center">[옵션선택]</h3>
<div style="text-align:center">
<span style="text-align:left">사이즈 : </span> 
<select id="size" style="text-align:center; width:212px; padding-bottom:10px; margin-bottom:10px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="size" items="${data}">
	<option value="${size.clothes_size}">${size.clothes_size}</option>
</c:forEach>
</select>
<br>
<span>컬러 : </span> 
<select id="color" style="text-align:center; width:228px; padding-bottom:12px; margin-bottom:10px;">
<option value='' selected>-- 선택 --</option>
<c:forEach var="colorList" items="${color}">
	<option value="${colorList}">${colorList}</option>
</c:forEach>
</select>
</div>
<div style="width:300px; display: flex;">
	<a href="javascript:void(0)" onclick="" style="text-decoration:none; display: flex; text-align:center; color:white;"><span style="width:150px; border:2px solid black; padding:6px 14px; margin-top:21px; margin-left:21px; background-color:black;">취소</span></a>
	<a href="javascript:void(0)" onclick="" style="text-decoration:none; display: flex; text-align:center; color:white;"><span style="width:150px; border:2px solid black; padding:5px 10px; margin-top:20px; margin-left:21px; background-color:black;">변경하기</span></a>
</div>
</body>
</html>