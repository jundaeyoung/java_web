<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>airbnb</title>
<link rel="shortcut icon" sizes="76x76" type="image/x-icon"
	href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
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
	margin-bottom: 100px;
	margin: 5px;
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
			<h1>숙소 등록</h1>
		</div>
	</section>
	<section class=content>
		<form action="/exer/homeUploadController" method="POST">
			<div class="form-group">
				<label>가격</label> <input type="text" placeholder="296,800 / 박"
					name="price" id="price" class="form-control" required>
			</div>
			<div class="form-group">
				<label>이름</label> <input type="text"
					placeholder=" 시모다, Shizuoka, 일본" name="name" id="name"
					class="form-control" required>
			</div>
			<div class="form-group">
				<label>날짜</label> <input type="text" placeholder="3월 20일~25일"
					name="day" id="day" class="form-control" required>
			</div>
			<div class="form-group">
				<label>view</label> <input type="text" placeholder="바다 전망"
					name="view" id="view" class="form-control" required>
			</div>

			<button type="submit" class="btn btn-primary">등록</button>
		</form>
		<form action="/exer/homeController?action=select&cid=5">
			<button type="submit" class="btn btn-primary">홈으로</button>
		</form>
	</section>
	<%-- 세션 클래스에 사용자 이름이 저장되어 있으면 로그인 상태를 유지합니다. --%>
	<% if(session.getAttribute("id")!=null){ %>


	<%}%>
</body>
</html>