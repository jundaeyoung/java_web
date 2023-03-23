package com.airbnb.service;

import com.airbnb.dao.UserDAO;
import com.airbnb.dto.UserDTO;

public class UserService {

	private UserDAO userDAO;
	
	public UserService() {
		userDAO = new UserDAO();
	}
	
	public UserDTO selectByUserId(String id, String password) {
		UserDTO resultDTO = userDAO.select(id, password);
		return resultDTO;
	}
	public int insertByUser(String id, String password,String tel,String email) {
		int resultRow =0;
		
		UserDTO userDTO = selectByUserId(id, password);
		if(userDTO !=null ) {
			String userWriteId = userDTO.getId();
			if(id.equals(userWriteId)) {
				System.out.println("같은 아이디가 존재합니다.");
			}else {
				resultRow=userDAO.insert(id, password, tel, email);
				
			}
		}
		return resultRow;
		
		
	}
	
}
