<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty loginUser }">
	<jsp:forward page="login.do"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Membership Management</title>
<script type="text/javascript" src="member.js"></script>
</head>
<body>
<h2>Membership Only</h2>
<form action="logout.do">
<table>
	<tr>
	<td>
		Hello, ${loginUser.name }(${loginUser.userid }) Sir!
	</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Logout"> &nbsp;&nbsp;
			<input type="button" value="Update"
				onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'"> &nbsp;&nbsp;
		</td>
	</tr>
</table>
</form>
</body>
</html>