package com.tenco.todo.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tenco.todo.dto.CategoryDTO;
import com.tenco.todo.dto.TodoDTO;
import com.tenco.todo.utils.DbHelper;

public class TodoDAO implements ITodoRepo {

	private Connection conn;
	private DbHelper dbHelper;

	public TodoDAO() {
		dbHelper = new DbHelper();
		conn = dbHelper.getConnection();

	}

	@Override
	public ArrayList<TodoDTO> select() {

		ArrayList<TodoDTO> list = new ArrayList();

		String strQry = "  SELECT * FROM todolist ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(strQry);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				int priority = rs.getInt("priority");
				int completed = rs.getInt("completed");
				String createdAt = rs.getString("createdAt");
				int category_id = rs.getInt("category_id");
				TodoDTO dto = new TodoDTO(id, title, description, priority, completed, createdAt, category_id);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return list;

	}

	@Override
	public int insert(String title, String description, int priority, int completed, int category_id) {
		int resultCount = 0;
		String quertStr = " INSERT INTO todolist(title,description,priority,completed,category_id) " + " VALUES "
				+ "	( ? , ? , ? , ? , ? ) ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(quertStr);
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			pstmt.setInt(3, priority);
			pstmt.setInt(4, completed);
			pstmt.setInt(5, category_id);
			resultCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultCount;
	}

	@Override
	public int update(String title, String description, int priority, int completed, int category_id,int id) {
		int resultRowCount = 0;
		String queryStr = " UPDATE todolist "
				+ " SET title= ?, "
				+ "	description = ?, "
				+ " priority = ?, "
				+ " completed = ?, "
				+ " category_id = ? "
				+ " WHERE id= ?  ;  ";
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			pstmt.setInt(3, priority);
			pstmt.setInt(4, completed);
			pstmt.setInt(5, category_id);
			pstmt.setInt(6, id);
			resultRowCount = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

		return resultRowCount;
	}


	@Override
	public int delete(int id) {
		int resultRowCount = 0;
		String queryStr = " DELETE FROM todolist WHERE id=? ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setInt(1, id);
			resultRowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return resultRowCount;
	}

}
