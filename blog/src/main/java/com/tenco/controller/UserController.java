package com.tenco.controller;

import java.io.IOException; 
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/usercontroller")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 문제 2
		// JSON 형식으로 name = 홍길동, age=10이라는 값을 리턴하시오.
		response.setContentType("application/json; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.print("{");
		writer.print("\"name\" : \"홍길동\", ");
		writer.print("\"age\":10");
		writer.print("}");
		
	}

	// Method : post
	// http://localhost:8080/blog/usercontroller
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// form 태그에서 넘어오는 값들을 받아보고?? 연산을 해서 응답 처리 해보기
		// 요청시 파라미터로 넘겨온 키 값을 확인해서 값을 추출하는 기술을 알아보자
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String pwd = request.getParameter("password");
		
		System.out.println("name : " + name);
		System.out.println("password : " + pwd);
		response.setContentType(getServletInfo());

		
		// 응답 처리
		// 문제1
		// MIME TYPE 은 text/html 방식 -> 이름과 비번을 확인 하였습니다.
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain; charset =utf-8;");
		PrintWriter writer = response.getWriter();
		writer.print("이름과 비번을 확인 하였습니다.");
	}

}
