package com.airbnb.dao;

import com.airbnb.dto.UserDTO;

public interface IUserDAO {

	UserDTO select(String id, String password);
	
	int insert(String id, String password,String tel, String email);
}
