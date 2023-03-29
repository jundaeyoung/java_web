<%@page import="javax.print.attribute.HashPrintRequestAttributeSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
		
<%
	String id = (String)session.getAttribute("id");
	String home_id = (String)session.getAttribute("home_id");
	System.out.println("home_id"+home_id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>airbnb</title>
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
	<h1>후기</h1>
	<form action="/exer/replyController?action=insert" method="post">
			<input type="text" style="display: none" name="user_id" value="<%=id %>">
			<input type="text" style="display: none" name="home_id" value="<%=home_id %>">
		후기를 작성해주세요  <input type="text" name="content" required="required">
		<input type="submit" value="등록">
	</form>
</body>
</html>