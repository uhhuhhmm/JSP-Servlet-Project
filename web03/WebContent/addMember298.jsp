<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="com.j.javabeans.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원의 정보 처리 페이지</title>
</head>
<body>
<h2>입력 완료된 회원 정보</h2>
<table>
	<tr>
		<td> 이름		</td>
		<td><jsp:getProperty property="name" name="member"/></td>
	</tr>
	<tr>
		<td> 아이디	</td>
		<td><jsp:getProperty property="userid" name="member"/></td>
	</tr>
	<tr>
		<td> 별명		</td>
		<td><jsp:getProperty property="nickname" name="member"/></td>
	</tr>
	<tr>
		<td> 비밀번호</td>
		<td><jsp:getProperty property="pwd" name="member"/></td>
	</tr>
	<tr>
		<td> 이메일	</td>
		<td><jsp:getProperty property="email" name="member"/></td>
	</tr>
	<tr>
		<td> 전화번호</td>
		<td><jsp:getProperty property="phone" name="member"/></td>
	</tr>
</table>
</body>
</html>