<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form {
	display: flex;
	flex-direction: column;
}

input {
	width: 100px;
	margin: 5px;
}
</style>
</head>
<body>
	<h1>category insert form</h1>
	<form action="/todo/cTest?action=insert" method="post">
		<input type="text" name="name" required="required"> <input
			type="submit" value="카테고리저장">
	</form>
	<h1>todo insert form</h1>
	<form action="/todo/todoTest?action=insert" method="post">
		제목  <input type="text" name="title" required="required"> 설명 :
		<input type="text" name="description" required="required">
		우선순위  <input type="text" name="priority" required="required">
		완료  <input type="text" name="completed" required="required">
		카테고리  <input type="text" name="category_id" required="required">
		<input type="submit" value="할일저장">
	</form>
</body>
</html>