<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
    
<%!
    	Connection conn = null;
		PreparedStatement pstmt = null;
    	String sql = "insert into product values(?, ?, ?, ?, ?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MarketItem</title>
</head>
<body>
	<%
			request.setCharacterEncoding("UTF-8");
			
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String price = request.getParameter("price");
			String desc = request.getParameter("desc");
			String cat = request.getParameter("cat");

		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setInt(3, Integer.parseInt(price));
			pstmt.setString(4, desc);
			pstmt.setString(5, cat);
			
			pstmt.executeUpdate();
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try{
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e){
				e.printStackTrace();
			}
		}
	%>
	
	<h3>Product Confirm</h3>
	<a href="itemList1.jsp"> Product List</a>
</body>
</html>