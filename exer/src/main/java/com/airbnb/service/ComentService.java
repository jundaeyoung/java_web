package com.airbnb.service;

import com.airbnb.dao.ReplyDAO;
import com.airbnb.dto.ReplyDTO;

public class ComentService {

	private ReplyDAO replyDAO;
	public ComentService() {
		replyDAO = new ReplyDAO();
		
	}
	public ReplyDTO comentCount(int home_id) {
		ReplyDTO resultDTO = replyDAO.count(home_id);
		return resultDTO;
	}
}
