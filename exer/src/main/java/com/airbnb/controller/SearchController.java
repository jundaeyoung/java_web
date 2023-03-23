package com.airbnb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/searchcontroller")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("id"));
		System.out.println(session.getAttribute("password"));
		System.out.println("search : " + search);
		// 다른곳으로 한번 더 돌림
		response.sendRedirect("airbnbHomeLogin.jsp");
//		if(request.getSession().getAttribute("id").equals("jdy1787") && request.getSession().getAttribute("password").equals("1234")) {
//		}else {
//			response.sendRedirect("airbnbHome.jsp");
//			
//		}
	}

}
