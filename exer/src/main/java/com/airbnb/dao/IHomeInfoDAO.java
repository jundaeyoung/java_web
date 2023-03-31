package com.airbnb.dao;

import java.util.ArrayList;

import com.airbnb.dto.HomeDTO;
import com.airbnb.dto.HomeInfoDTO;

public interface IHomeInfoDAO {

	ArrayList<HomeInfoDTO> select();

	int insert();
}
