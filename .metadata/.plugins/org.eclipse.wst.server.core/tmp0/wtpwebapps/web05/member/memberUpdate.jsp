<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification</title>
<script type="text/javascript" src="script/member.js?var=2"></script>
</head>
<body>
<h2>Modification</h2>
<form action="memberUpdate.do" method="post" name="frm">
	<table>
		<tr>
			<td>Name</td>
			<td>
				<input type="text" name="name"	size="20" value="${mVo.name }" readonly>
			</td>
		</tr>
		<tr>
			<td>ID</td>
			<td>
				<input type="text" name="userid"	size="20" value="${mVo.userid }" readonly>
			</td>
		</tr>
		<tr>
			<td>PW</td>
			<td>
				<input type="password" name="pwd"	size="20">*
			</td>
		</tr>
		<tr height="30">
			<td width="80">Confim Password</td>
			<td>
				<input type="password" name="pwd_check"	size="20">*
			</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>
				<input type="text" name="email"	size="20" value="${mVo.email }">
			</td>
		</tr>
		<tr>
			<td>Phone</td>
			<td>
				<input type="text" name="phone"	size="20" value="${mVo.phone }">
			</td>
		</tr>
		<tr>
			<td>Class</td>
			<td>
			<c:choose>
				<c:when test="${mVo.admin == 0 }">
					<input type="radio" name="admin"	value="0" checked="checked"> General
					<input type="radio" name="admin"	value="1"> Admin
				</c:when>
				<c:otherwise>
					<input type="radio" name="admin" value="0"> General
					<input type="radio" name="admin" value="1" checked="checked"> Admin
				</c:otherwise>
			</c:choose>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="Confirm" onclick="return joinCheck()">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="Cancel">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="DELETE" onclick="location.href='delete.do?userid=${mVo.userid }'">
			</td>
		</tr>
	</table>
</form>

</body>
</html>