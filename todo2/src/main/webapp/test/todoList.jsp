<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

div {
	display: flex;
	flex-direction: column;
	align-items: flex-end;	
}

h1 {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 70px;
}

table {
	width: 900px;
	border: 1px solid black;
	border-radius: 20px;
	border-color: #FFF6D6;
	background-color: #FFF6D6;
	margin-bottom: 30px;
	padding: 10px;
}

button {
	background-color: #6690FF;
	border: none;
	padding: 5px;
	border-radius: 10px;
}

th {
	font-size: 20px;
}

td {
	text-align: center;
}

a {
	color: white;
	text-decoration: none;
}

.add {
	width: 100px; 
	margin-bottom: 100px;
}
</style>
</head>
<body>
	<h1>오늘 할일❗❗❗</h1>
	<div>
		<table>
			<tr>
				<th>id</th>
				<th>제목</th>
				<th>설명</th>
				<th>우선순위</th>
				<th>완료❓</th>
				<th>생성시간🕓</th>
				<th>카테고리</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="todo" items="${list}">
				<tr>
					<td>${todo.id}</td>
					<td style="color:#B7751A">${todo.title}</td>
					<td>${todo.description}</td>
					<td>${todo.priority}</td>
					<td>${todo.completed}</td>
					<td>${todo.createdAt}</td>
					<td>${todo.category_id}</td>
					<td><button>
							<a href="/todo/todoTest?action=delete&cid=${todo.id}">delete</a>
						</button></td>
				</tr>
			</c:forEach>
		</table>
		<button class=add>
			<a href="/todo/test/insertForm.jsp">추가하기 
		</button>
	</div>
</body>
</html>