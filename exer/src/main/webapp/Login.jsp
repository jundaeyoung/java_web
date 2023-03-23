<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String id = request.getParameter("id");
String password = request.getParameter("password");

if (id != null && password != null) {
	if (id.equals("jdy1787") && password.equals("1234")) {
		// login 성공
		// 세션에 사용자 이름 저장
		session.setAttribute("id", id);
		session.setAttribute("password", password);
		response.sendRedirect("airbnbHomeLogin.jsp");
	} else {
		// login 실패
		out.print("<p>로그인에 실패했습니다.</p>");
		response.sendRedirect("airbnbHome.jsp");
	}
}
		
%>