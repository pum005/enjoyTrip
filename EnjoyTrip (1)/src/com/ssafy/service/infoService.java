package com.ssafy.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.model.dto.info;
import com.ssafy.model.dao.infoDao;



public class infoService {
	private infoService() {}

	private static infoService instance = new infoService();

	public static infoService getInstance() {
		return instance;
	}

	private infoDao infodao = infoDao.getInstance();

	public List<info> selectRand() throws SQLException {
		return infodao.selectRand();
	}
}
