package com.tenco.todo.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenco.todo.dto.CategoryDTO;
import com.tenco.todo.dto.TodoDTO;
import com.tenco.todo.repository.TodoDAO;
import com.tenco.todo.utils.DbHelper;

@WebServlet("/todoTest")
public class TodoTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		DbHelper dbHelper = new DbHelper();
		dbHelper.getConnection(); // DB 연결
	}
	
	
	public TodoTest() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TodoDAO dao = new TodoDAO();
		
		String action = request.getParameter("action");
		if("delete".equals(action)) {
			String cid = request.getParameter("cid");
			dao.delete(Integer.parseInt(cid));
			response.sendRedirect("/todo/todoTest");
		}else {
			ArrayList<TodoDTO> resultlist = dao.select();
			request.setAttribute("list", resultlist);
			RequestDispatcher dispatcher = request.getRequestDispatcher("test/todoList.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		TodoDAO todoDAO = new TodoDAO();
		int responseCount = 0;
		String title = request.getParameter("title");
		String description=request.getParameter("description");
		String priority = request.getParameter("priority");
		String completed = request.getParameter("completed");
		String category_id = request.getParameter("category_id");
		if(action.equals("update")) {
			
			String id = request.getParameter("id");
			
			responseCount = todoDAO.update(title,description, Integer.parseInt(priority),Integer.parseInt(completed),Integer.parseInt(category_id),Integer.parseInt(id));
		}else if(action.equals("insert")) {
			responseCount = todoDAO.insert(title,description, Integer.parseInt(priority),Integer.parseInt(completed),Integer.parseInt(category_id));		
		}
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		out.print("저장된 갯수 확인 : " + responseCount);
	}

}
