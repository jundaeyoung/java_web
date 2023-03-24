<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String[] fruits = request.getParameterValues("fruit");
	for(int i=0; i<fruits.length;i++){
		if(fruits[i]!=null){
		out.println(fruits[i]);
		}
	}
	%>
		<br>
		주문되었습니다.
	
</body>
</html>