<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MarketForm</title>
</head>
<body>
<h2>Product Info Form</h2>
<form action="addItem1.jsp" method="post">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" size="20"></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" size="20"></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><input type="text" name="price" size="20"></td>
		</tr>
		<tr>
			<td>Desc.</td>
			<td><input type="text" name="desc" size="20"></td>
		</tr>
		<tr>
			<td>Category</td>
			<td>
				<input type="checkbox" name="cat" value="가방/패션잡화"> 가방/패션잡화
				<input type="checkbox" name="cat" value="의류"> 의류
				<input type="checkbox" name="cat" value="식용품"> 식용품
				<input type="checkbox" name="cat" value="생필품"> 생필품
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="등록"></td>
			<td><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>