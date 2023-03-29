<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category update form</title>
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
	<h1>category update form</h1>
		<p>
			HTTP 메세지 시작줄에 추가적인 정보를 달아서 서버에 보낼수 있다. 
			쿼리 파라메터 방식, 패스베리어블 방식
		</p>
		<form action="/todo/cTest?action=update&age=10" method="post">
			id <input type="number" name="id" required="required"> 
			바꿀 이름 <input type="text" name="name" required="required"> 
			<input type="submit" value="카테고리수정">
		</form>
	<h1>todo update form</h1>
		<p>
		</p>
		<form action="/todo/todoTest?action=update&age=10" method="post">
			바꿀 todo id <input type="text" name="id" required="required"> 
			제목 <input type="text" name="title" required="required"> 
			설명 <input type="text" name="description" required="required"> 
			우선순위 <input type="number" name="priority" required="required"> 
			완료 <input type="number" name="completed" required="required"> 
			카테고리 <input type="number" name="category_id" required="required"> 
			<input type="submit" value="할일 수정">
		</form>
</body>
</html>