package com.airbnb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.service.HomeInfoUploadService;
import com.airbnb.service.HomeUploadService;

@WebServlet("/HomeInfoUploadController")
public class HomeInfoUploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HomeInfoUploadService homeInfoUploadService;
	
	public HomeInfoUploadController() {
		homeInfoUploadService = new HomeInfoUploadService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String location = request.getParameter("location");
		String image1 = request.getParameter("image1");
		String image2 = request.getParameter("image2");
		String image3 = request.getParameter("image3");
		String image4 = request.getParameter("image4");
		String image5 = request.getParameter("image5");
		String host = request.getParameter("host");
		String info = request.getParameter("info");
		String sideimage1 = request.getParameter("sideimage1");
		String sideInfo1 = request.getParameter("sideInfo1");
		String sideInfo1_1 = request.getParameter("sideInfo1_1");
		String sideimage2 = request.getParameter("sideimage2");
		String sideInfo2 = request.getParameter("sideInfo2");
		String sideInfo2_1 = request.getParameter("sideInfo2_1");
		String sideimage3 = request.getParameter("sideimage3");
		String sideInfo3 = request.getParameter("sideInfo3");
		String sideInfo3_1 = request.getParameter("sideInfo3_1");
		String home_id = request.getParameter("home_id");
		int insertDTO = homeInfoUploadService.insertByHomeInfo(title, location, image1, image2, image3, image4, image5, host, info, sideimage1, sideInfo1, sideInfo1_1, sideimage2, sideInfo2, sideInfo2_1, sideimage3, sideInfo3, sideInfo3_1, Integer.parseInt(home_id));
		System.out.println(insertDTO);
		if (insertDTO == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('숙소 등록에 실패하였습니다.'); location.href='/exer/index.jsp';</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('숙소가 등록되었습니다.'); location.href='http://localhost:8080/exer/homeController?action=select&cid=5';</script>");
			writer.close();
		}
	}

}
