package com.airbnb.service;

import com.airbnb.dao.HomeDAO;
import com.airbnb.dto.HomeDTO;
import com.airbnb.dto.UserDTO;

public class HomeService {

	private HomeDAO homeDAO;
	private HomeDTO homeDTO;

	public HomeService() {
		homeDAO = new HomeDAO();
	}

	public HomeDTO selectByReservation(String user_id) {
		HomeDTO resultDTO = homeDAO.select(user_id);
		return resultDTO;
	}

	public int insertByReservation(String start_date, String end_date, int personNumber, String user_id, int home_id) {
		int resultRow = 0;

		resultRow = homeDAO.insert(start_date, end_date, personNumber, user_id, home_id);

		return resultRow;
	}

}
