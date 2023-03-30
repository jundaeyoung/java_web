<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp"%>
<%
session.invalidate();
PrintWriter writer = response.getWriter();
writer.println("<script>alert('로그아웃 되었습니다'); location.href='/exer/airbnbHome.jsp';</script>");
writer.close();
response.sendRedirect("/exer/airbnbHome.jsp");
%>