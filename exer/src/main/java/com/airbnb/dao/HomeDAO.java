package com.airbnb.dao;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.airbnb.dto.HomeDTO;
import com.airbnb.utils.DBHelper;

public class HomeDAO implements IHomeDAO {
	
	private Connection conn;
	private DBHelper dbHelper;

	public HomeDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}

	@Override
	public ArrayList<HomeDTO> select() {
		ArrayList<HomeDTO> list = new ArrayList<>();

		String strQry = " SELECT * FROM home ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(strQry);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String price = rs.getString("price");
				String name = rs.getString("name");
				String day = rs.getString("day");
				String view = rs.getString("view");
				HomeDTO dto = new HomeDTO(id, price, name, day, view);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public ArrayList<HomeDTO> search(String search) {
		ArrayList<HomeDTO> list = new ArrayList<>();

		String strQry = " SELECT * FROM home WHERE name like ?  ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(strQry);
			pstmt.setString(1,"%" + search + "%");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String price = rs.getString("price");
				String name = rs.getString("name");
				String day = rs.getString("day");
				String view = rs.getString("view");
				HomeDTO dto = new HomeDTO(id, price, name, day, view);
				System.out.println(list);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
}
