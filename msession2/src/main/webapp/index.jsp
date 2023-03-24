<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String username = (String)session.getAttribute("username");
	// 문제 로그인이 안되어있으면 login.jsp 페이지로 이동시키시오.
	if(username==null){
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 상태이어야만 이 페이지를 보여줍니다.</h1>
	<h1>로그아웃 하는 기능도 만들어보시오.</h1>
	<form action="logout.jsp">
		<input type="submit" value="logout">
	</form>
</body>
</html>