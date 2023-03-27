<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="errorPage.jsp" %>
<%
	session.invalidate();
	response.sendRedirect("/exer/airbnbHome.jsp");
%>