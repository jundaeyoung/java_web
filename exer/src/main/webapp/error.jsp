<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	response.setContentType("text/html; charset=UTF-8");
	PrintWriter writer = response.getWriter();
	writer.println("<script>alert('로그인을 해주세요'); location.href='/exer/signin.jsp';</script>");
	writer.close();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>dd</h1>
</body>
</html>