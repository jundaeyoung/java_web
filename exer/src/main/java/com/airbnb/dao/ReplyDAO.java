package com.airbnb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.airbnb.dto.ReplyDTO;
import com.airbnb.utils.DBHelper;

public class ReplyDAO implements IReplyDAO{

	private Connection conn;
	private DBHelper dbHelper;
	
	public ReplyDAO() {
		dbHelper= new DBHelper();
		conn = dbHelper.getConnection();
	}
	
	@Override
	public ArrayList<ReplyDTO> select(int home_id) {
		ArrayList<ReplyDTO> list = new ArrayList();
		
		String strQry = "SELECT * FROM reply WHERE home_id = ? ORDER BY date DESC ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt=conn.prepareStatement(strQry);
			pstmt.setInt(1, home_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String user_id = rs.getString("user_id");
				String content = rs.getString("content");
				String date = rs.getString("date");
				ReplyDTO dto = new ReplyDTO(id,user_id,home_id,content,date);
				list.add(dto);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public int insert(String user_id, int home_id, String content) {
		int resultCount = 0;
		String quertStr = " INSERT INTO reply(user_id, home_id, content) "
				+ " VALUES "
				+ "	( ? , ? , ? ) ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(quertStr);
			pstmt.setString(1, user_id);
			pstmt.setInt(2, home_id);
			pstmt.setString(3, content);
			resultCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultCount;
	}

	@Override
	public int update(int id, String user_id, int home_id, String content) {
		int resultRowCount = 0;
		String queryStr = " UPDATE reply "
				+ " SET id= ? , "
				+ "	user_id = ? , "
				+ " home_id = ? , "
				+ " content = ? ";
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setInt(1, id);
			pstmt.setString(2, user_id);
			pstmt.setInt(3, home_id);
			pstmt.setString(4, content);
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
	public int delete(String user_id,int id) {
		int resultRowCount = 0;
		String queryStr = "  DELETE FROM reply WHERE user_id= ? AND id= ?  ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, user_id);
			pstmt.setInt(2, id);
			resultRowCount = pstmt.executeUpdate();
			System.out.println("삭제: "+ resultRowCount);
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
