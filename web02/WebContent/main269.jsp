<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie []ck = request.getCookies();
String str= null;
if(ck != null){
	for(Cookie c : ck)
		{
			str = URLDecoder.decode(c.getValue(),"UTF-8");
		}
	out.print(str);	
%>
	Bella!<br>
	asdasdasdasd.<br>
	asdasdasdasd..<br>
	<form method="post" action="logout.jsp">
		<input type="submit" value="확인">
	</form>
<%} else { %>
	<h2>Bella</h2>
	<p><a href="loginForm.jsp">back</a>
<%} %>
</body>
</html>