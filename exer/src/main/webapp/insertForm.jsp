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
	justify-content: center;
	align-items: center;
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
	width: 120px;
	height:40px;
	margin-bottom: 10px;
	color: white;
	font-size: 20px;
	
}
form{

	display: flex;
	}
.coment{
	width: 800px;
	height: 200px;
	border-radius:9px;
	justify-content: flex-start;
	align-items: flex-start;
	
}
</style>
</head>
<body>

	<h1>후기</h1>
	<div>
			<table>
				<tr>
					<td>후기를 작성해주세요 </td>
				</tr>
				<tr>
					<td>
					<h3>				
					<form action="/exer/replyController?action=insert" method="post">
						<input type="text" style="display: none" name="user_id" value="<%=id %>">
						<input type="text" style="display: none" name="home_id" value="<%=home_id %>">
						<input type="text" class="coment" name="content" required="required" style="background:#F2F2F2;
						border: 1px solid #747474">
					</h3>
					</td>
				</tr>
				</table>
						<button type="submit" class=add>등록</button>
					</form>
		
	</div>
	
</body>
</html>