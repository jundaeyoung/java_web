<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String apple = request.getParameter("apple");
String banana = request.getParameter("banana");
String peach = request.getParameter("peach");
String[] fruit ={apple,banana,peach};
	if(apple != null || banana != null || peach != null){
			session.setAttribute("apple", apple);
			session.setAttribute("banana", banana);
			session.setAttribute("peach", peach);
			response.sendRedirect("index.jsp");
	}else{
		out.println("<script>alert('주문할 내용이 없습니다.');location.href='cart.jsp'</script>");
	}
	
			
	
	
%>