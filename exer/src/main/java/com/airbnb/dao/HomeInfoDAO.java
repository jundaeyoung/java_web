package com.airbnb.dao;

import java.sql.Connection;
import java.util.ArrayList;

import com.airbnb.dto.HomeDTO;
import com.airbnb.dto.HomeInfoDTO;
import com.airbnb.utils.DBHelper;

public class HomeInfoDAO implements IHomeInfoDAO {

	private Connection conn;
	private DBHelper dbHelper;
	
	
	public HomeInfoDAO() {
		dbHelper = new DBHelper();
		conn= dbHelper.getConnection();
	}

	@Override
	public ArrayList<HomeInfoDTO> select() {
		ArrayList<HomeInfoDTO> list = new ArrayList<>();
		return null;
	}

	@Override
	public int insert() {
		return 0;
	}

}
