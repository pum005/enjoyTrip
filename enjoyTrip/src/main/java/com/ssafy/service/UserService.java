package com.ssafy.service;

import java.sql.SQLException;

import com.ssafy.dto.User;
import com.ssafy.model.dao.UserDao;
import com.ssafy.util.DBUtil;

public class UserService {
	private UserDao userDao = UserDao.getInstance();
	
	private static UserService instance = new UserService();
	
	private UserService() {};
	
	public static UserService getInstance() {
		return instance;
	}
	
	//findUserAfterValidation
	public User findUserAfterValidation(User user) throws SQLException {
		return userDao.findUserAfterValidation(user);
	}
}
