<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// 세션을 꺼내는 방법 확인
	String id = (String)session.getAttribute("id");
	if(id==null){
		response.sendRedirect("signin.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>airbnb</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
	body{
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	h1{
		flex:1;
		margin-top: 130px;
		margin-bottom: 50px;
	}
	form{
		flex:1;
		
	}
	button{
		margin:10px;
		width: 150px;
	}
	
	
</style>
</head>
<body>
	<h1> 반갑습니다 <br> <%= id %> 님</h1>
	<form action="/exer/edite.jsp">
	<button type="submit" class="btn btn-primary">정보수정</button>
	</form>
	<form action="/exer/logout.jsp">
	<button type="submit" class="btn btn-primary">Logout</button>
	</form>
</body>
</html>