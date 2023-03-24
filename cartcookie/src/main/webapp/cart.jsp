<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 과일 </h1>
	<form action="cartProc.jsp" method="post">
	<input type="checkbox" name="fruit">사과<br>
	<input type="checkbox" name="fruit">바나나<br>
	<input type="checkbox" name="fruit">복숭아<br>
	<input type="submit" value="주문">
	<input type="submit" name = "delete" value="삭제">
	</form>
</body>
</html>