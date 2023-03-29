<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>list2</h2>
	<table>
		<tr>
			<th style="color: blue">ID</th>
			<c:forEach var="category" items="${list}">
				<th>${category.id}</td>
			</c:forEach>
		</tr>
		<tr>
			<th style="color: blue" >이름</th>
			<c:forEach var="category" items="${list}">
				<th>${category.name}</td>
			</c:forEach>
		</tr>

	</table>
</body>
</html>