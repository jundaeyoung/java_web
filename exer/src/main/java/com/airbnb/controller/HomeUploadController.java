package com.airbnb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.service.HomeUploadService;

@WebServlet("/homeUploadController")
public class HomeUploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HomeUploadService homeUploadService;

	public HomeUploadController() {
		homeUploadService = new HomeUploadService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("/exer/homeUpload.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String price = request.getParameter("price");
		String name = request.getParameter("name");
		String day = request.getParameter("day");
		String view = request.getParameter("view");
		String id = request.getParameter("id");
		System.out.println("price" + price);
		System.out.println("name" + name);
		System.out.println("day" + day);
		System.out.println("view" + view);
		System.out.println("id" + id);
		int insertDTO = homeUploadService.insertByHome(price, name, day, view);
		System.out.println(insertDTO + "2222222222222222222222222");

		if (insertDTO == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('숙소 등록에 실패하였습니다.'); location.href='/exer/index.jsp';</script>");
			writer.close();
		} else {

			request.setAttribute("insertDTO", insertDTO);

			System.out.println((int) request.getAttribute("insertDTO"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("homeInfoUpload.jsp");
			dispatcher.forward(request, response);

			// 웹 브라우저에 와서 URI - 요청
//			response.sendRedirect("/exer/homeInfoUpload.jsp");

//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter writer = response.getWriter();
//			writer.println(
//					"<script>alert('숙소가 등록되었습니다.'); location.href='/exer/homeInfoUpload.jsp';</script>");
//			writer.close();
		}
	}

}
