<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
    
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String email = request.getParameter("email");

	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/demo5?serverTimezone=Asia/Seoul";
		String dbUser = "root";
		String dbPw = "1234";
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>