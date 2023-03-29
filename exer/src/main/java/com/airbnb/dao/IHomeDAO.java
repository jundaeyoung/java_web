package com.airbnb.dao;

import com.airbnb.dto.HomeDTO;

public interface IHomeDAO {

	HomeDTO select(String user_id);
	int insert(String start_date,String end_date,int personNumber,String user_id,int home_id);
	int delete();
}
