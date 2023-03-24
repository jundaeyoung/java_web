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
	String[] result={"사과","바나나","복숭아"};
	String apple = (String)session.getAttribute("apple");
	String banana = (String)session.getAttribute("banana");
	String peach = (String)session.getAttribute("peach");
	String[] fruit ={apple,banana,peach};	
	for(int i=0; i<fruit.length;i++){
		if(fruit[i]!=null){
		out.println(result[i]);
		}
	}
	%>
		<br>
		주문되었습니다.
	
</body>
</html>