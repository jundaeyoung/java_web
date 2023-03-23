<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/layout/header.jsp" />

<style>
main {
	display: flex;
	padding: 20px;
	flex-direction: column;
	align-items: center;
	justify-content: flex-start;
}

main pre {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	border: 1px solid black;
	border-radius: 10px;
	padding: 20px;
}

table {
	border-collapse:collapse;
	width: 200px;
	font-size: 14px;
	margin: 20px;
}

td {
	background-color: #f2f2f2;
	border: 1px solid #ccc;
	border-radius: 10px;
	text-align: center;
}
</style>

<main>
	<h1>구구단 예제</h1>
	<table>
		<% for(int i=2; i<10; i++){ %>
			<tr>
				<td>
					<% for(int j=1; j<10; j++){ %>
					<tr><td>
					<%=i %>X<%=j %>=<%=i*j%>
					</td></tr>
					<%} %>
				</td>
			</tr>
		<%} %>
	</table>
	<br>
	<pre>스크립트 릿과 표현식을 잘 구분해 봅시다.</pre>
</main>

<jsp:include page="/layout/footer.jsp" />