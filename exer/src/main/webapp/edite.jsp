<%@page import="com.airbnb.controller.UserController"%>
<%@page import="com.airbnb.dto.UserDTO"%>
<%@page import="com.airbnb.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("id");
String password = (String)session.getAttribute("password");
UserService userService = new UserService();

UserDTO responseDTO = userService.selectByUserId(id, password);
String dbId = responseDTO.getId();
String dbPwd = responseDTO.getPassword();
String dbTel= responseDTO.getTel();
String dbEmail= responseDTO.getEmail();
System.out.println("id : "+dbId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>airbnb</title>
<!-- Latest compiled and minified CSS -->
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
body {
	margin: 20px;
	height: 100vh;
	padding: 10px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.head {
	width: 200px;
}

input {
	flex: 1;
	border-radius: 10px;
}

.form-group {
	width: 250px;
}

button {
	float: right;
	margin-bottom: 150px;
}
</style>
</head>
<body>
	<!-- 
	signin.html 요청을 하면 화면을 그리는 담당
	1.요청
	form 태그중 method 속성, action 속성에 대해 알아보고 
	name 값과 password 값을 보낼 수 있는 화면을 구성하시오. 
	
	2. 버튼을 누르면 연산 처리를 할 서블릿 객체를 만들어 주세요.
		method 방식은 post
		서버 콘솔창에 넘겨받은 데이터를 출력하시오
	-->
	<section>
		<img alt="" src="images/airbnb.jpg">
	</section>
	<section class="header">
		<div class="icon">
			<h1>회원수정</h1>
		</div>
	</section>
	<section class=content>
		<form action="/exer/userupdatecontroller" method="POST">
			<div class="form-group">
			<label>아이디</label>
				<input type="text" value=<%= dbId %> name="id" id="id" class="form-control"
					required>
			</div>
			<div class="form-group">
			<label>비밀번호</label>	
				<input type="password" value=<%= dbPwd %> name="password" id="password"
					class="form-control" required>
			</div>
			<div class="form-group">
			<label>전화번호</label>
				<input type="tel" value=<%= dbTel %> name="tel" id="tel"
					class="form-control" required>
			</div>
			<div class="form-group">
			<label>이메일</label>
				<input type="email" value=<%= dbEmail %> name="email" id="email"
					class="form-control" required>
			</div>
			<button type="submit" class="btn btn-primary">수정</button>
		</form>
	</section>
		<%-- 세션 클래스에 사용자 이름이 저장되어 있으면 로그인 상태를 유지합니다. --%>
	<% if(session.getAttribute("id")!=null){ %>
		
			
		<%}%>
</body>
</html>