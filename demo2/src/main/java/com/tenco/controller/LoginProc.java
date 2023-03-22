package com.tenco.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginProc")
public class LoginProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginProc() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	// method방식은 post(form 태그에서정한다)
	// http:localhost:8080/demo2/loginProc
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// form 태그 --> 반드시 속성 name = "email"이 있어야한다.
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String isRemeber = request.getParameter("isRemember");
		String hobby = request.getParameter("hobby");
		// 배열처리 (다중선택)
		String[] likes = request.getParameterValues("like");

		System.out.println("email : " + email);
		System.out.println("password : " + password);
		System.out.println("isRemeber : " + isRemeber);
		System.out.println("hobby : " + hobby);
		if(likes!=null) {
		for (String string : likes) {
			System.out.println("like : " + string);
		}
		}
	}

}
