package com.airbnb.service;

import com.airbnb.dao.HomeDAO;
import com.airbnb.dto.HomeDTO;

public class HomeUploadService {
	
	
	private HomeDAO homeDAO;
	public HomeUploadService() {
		homeDAO = new HomeDAO();
		
	}
	
	
	public int insertByHome(String price, String name, String day, String view) {
		int resultRow = 0;
		resultRow = homeDAO.insert(price, name, day, view);
		return resultRow;
	}
	
	

}
