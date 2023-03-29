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

/**
 * Servlet implementation class UserController
 */
@WebServlet("/usercontroller")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService;

	public UserController() {
		userService = new UserService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		UserDTO responseDTO = userService.selectByUserId(id, password);

		System.out.println("name : " + id);
		System.out.println("password : " + password);
		System.out.println(responseDTO.toString());
		// 다른곳으로 한번 더 돌림
		System.out.println(responseDTO.getId());
		if (responseDTO.getId() != null) {
			response.sendRedirect("/exer/airbnbHomeLogin.jsp");
		}else{
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter writer = response.getWriter();
//			writer.println("<script>alert('가입을해주세요.'); location.href='/exer/signin.jsp';</script>");	
//			writer.close();
		}
	}

}
