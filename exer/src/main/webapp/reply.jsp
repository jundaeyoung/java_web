<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String id = (String) session.getAttribute("id");
String home_id = (String) session.getAttribute("home_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
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
	justify-content: flex-start;
	align-items: flex-start;
	margin-bottom: 70px;
}

table {
	width: 900px;
	border: 1px solid #F2F2F2;
	border-radius: 20px;
	border-color: #F2F2F2;
	background-color: #F2F2F2;
	margin-bottom: 30px;
	padding: 10px;
}

button {
	background-color: #6690FF;
	border: none;
	padding: 5px;
	border-radius: 10px;
}

tr {
	display: flex;
	justify-content: flex-start;
	align-items: flex-start;
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
	margin-bottom: 10px;
}
</style>
</head>
<body>

	<h1>후기</h1>
	<div>
		<c:forEach var="reply" items="${list}">
			<table>
				<tr>
					<td>${reply.user_id}</td>
				</tr>
				<tr>
					<td>${reply.date}</td>
				</tr>
				<tr>
					<td><h3>${reply.content}</h3></td>
				</tr>
				<c:if test="${id eq reply.user_id}">


					<tr>
						<td><button>
								<a
									href="/exer/replyController?action=delete&cid=${reply.id}&user_id=${reply.user_id}&home_id=${reply.home_id}">delete</a>
							</button></td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		<button class=add>
			<a href="/exer/insertForm.jsp">추가하기 
		</button>
		<button class=add>
			<a href="http://localhost:8080/exer/homeController?action=select&cid=5">home 
		</button>
	</div>
</body>
</html>