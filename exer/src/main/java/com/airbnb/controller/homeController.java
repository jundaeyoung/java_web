package com.airbnb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.airbnb.dao.HomeDAO;
import com.airbnb.dto.HomeDTO;
import com.airbnb.utils.DBHelper;

@WebServlet("/homeController")
public class homeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HomeDAO dao;

	@Override
	public void init() throws ServletException {
		DBHelper dbHelper = new DBHelper();
		dbHelper.getConnection();
	}

	public homeController() {
		dao = new HomeDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HomeDAO dao = new HomeDAO();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");

		String cid = request.getParameter("id");
		String price = request.getParameter("price");
		String name = request.getParameter("name");
		String day = request.getParameter("day");
		String view = request.getParameter("view");
		String action = request.getParameter("action");
		String search = request.getParameter("search");
		String home_id = request.getParameter("home_id");
		if ("search".equals(action)) {

		} else {
			ArrayList<HomeDTO> resultlist = dao.select();
			System.out.println("집 id" + cid);
			System.out.println("집 home_id" + home_id);
			request.setAttribute("home_id", home_id);
			request.setAttribute("list", resultlist);
			RequestDispatcher dispatcher = request.getRequestDispatcher("airbnbHomeLogin.jsp");
			dispatcher.forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
