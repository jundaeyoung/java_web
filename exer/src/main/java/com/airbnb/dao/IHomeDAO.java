package com.airbnb.dao;

import java.util.ArrayList;

import com.airbnb.dto.HomeDTO;


public interface IHomeDAO {
	ArrayList<HomeDTO> select();
	
	ArrayList<HomeDTO> search(String search);
	
}
