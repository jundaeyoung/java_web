package com.airbnb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.dto.UserDTO;
import com.airbnb.service.UserService;

@WebServlet("/reservation")
public class reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService;

	public reservation() {
		userService = new UserService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		String personNumber = request.getParameter("personNumber");

		System.out.println("id : " + Integer.parseInt(id));
		System.out.println("password : " + start_date);
		System.out.println("tel : " + end_date);
		System.out.println("email : " + Integer.parseInt(personNumber));
		// 다른곳으로 한번 더 돌림

		int insertDTO = userService.insertByUser(Integer.parseInt(id), start_date, end_date, Integer.parseInt(personNumber));
		System.out.println("insertDTO" + insertDTO);
		if (insertDTO == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('이미 회원가입된 아이디입니다.'); location.href='/exer/signin.jsp';</script>");	
			writer.close();
		} else {
			response.sendRedirect("/exer/signin.jsp");
		}
	}
}
