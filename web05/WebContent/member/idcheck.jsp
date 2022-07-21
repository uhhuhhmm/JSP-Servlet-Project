<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Membership Management</title>
<script type="text/javascript" src="script/member.js?var=2"></script>
</head>
<body>
	<h2>ID Check</h2>
	<form action="idCheck.do" method="get" name="frm">
		ID <input type="text" name="userid" value="${userid }">
			<input type="submit" value="ID Check">
		<br>
		<c:if test="${result == 1 }">
			<script type="text/javascript">
				opener.document.frm.userid.value="";
			</script>
			${userid} is already in use
		</c:if>
		<c:if test="${result == -1 }">
			${userid} is available
			<input type="button" value="confirm" class="cancel" onclick="idok()"> 
		</c:if>
	</form>
</body>
</html>