package com.airbnb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class HomeDAO implements IHomeDAO{

	private Connection conn;
	private PreparedStatement pastmt;
	private ResultSet rs;
	
	@Override
	public int insert() {
		return 0;
	}

	@Override
	public int delete() {
		return 0;
	}

}
