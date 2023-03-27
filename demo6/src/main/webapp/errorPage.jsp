<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 여기 jsp 파일을 error 전용 페이지로 사용할려면 
    반드시 isErrorPage = true를 선언해주어야한다. -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		height:100vh;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
	}
	img{
		width: 630px;
		height: 450px;
	}
	h2{
		color: #88AAF5;
	}
	div{
		flex-direction: row;
		padding: 10px;
	}
	input{
		margin: 20px;
		background-color: #88AAF5;
		color:white;
		border-radius: 10px;
		padding: 15px 30px;
		border-style: none;
	}
	input:hover{
		background-color: #628AEF;
		cursor: pointer;
	}
</style>
</head>
<body>
	<img alt="" src="/demo6/upload/img/error.jpg">
	<h2>죄송합니다. 현재 찾을 수 없는 페이지를 요청 하셨습니다.</h2>
	<p>
		존재하지 않는 주소를 입력하셨거나,<br> 
		요청하신 페이지의 주소가 변경, 삭제되어 찾을 수 없습니다.<br>
		궁금한 점이 있으시면 언제든 고객센터를 통해 문의해 주시기 바랍니다.<br>
		감사합니다
	</p>
	<div>
	<input type="submit" value="메인으로">
	<input type="submit" value = "이전페이지">
	</div>
	<h5>
		error message :
		<%=exception.getMessage()%></h5>

</body>
</html>