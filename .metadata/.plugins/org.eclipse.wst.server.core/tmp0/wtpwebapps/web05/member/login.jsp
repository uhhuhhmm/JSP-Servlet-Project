<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Membership Management</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>Log In</h2>
<form action="login.do" method="post" name="frm">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="userid" value="${userid }"></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="Log In" 
					onclick="return loginCheck()">&nbsp;&nbsp;
				<input type="reset" value="Cancel">&nbsp;&nbsp;
				<input type="button" value="Sign Up"
					onclick="location.href='join.do'">
			</td>
		</tr>
		<tr><td colspan="2">${message }</td></tr>
	</table>
</form>
</body>
</html>