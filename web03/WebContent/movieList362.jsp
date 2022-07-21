<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
	<c:set var="movieList" value="토르, 탑건:매버릭, 기묘한이야기, 가오갤"></c:set>
	
	<table border="1" style="width:100%; text-align: center;">
	<tr>
		<th> index </th> 
		<th> count </th> 
		<th> title </th>
	</tr>
	<c:forEach var="movie" items="${movieList }" varStatus="status">
	<tr>
		<td>${status.index }</td>
		<td>${status.count }</td>
		<td>${movie }</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>