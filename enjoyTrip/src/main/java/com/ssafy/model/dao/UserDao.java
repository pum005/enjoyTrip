package com.ssafy.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ssafy.dto.User;
import com.ssafy.util.DBUtil;

public class UserDao {
	private DBUtil dbUtil = DBUtil.getInstance();
	
	private static UserDao instance = new UserDao();
	
	private UserDao() {};
	
	public static UserDao getInstance() {
		return instance;
	}
	
	//findUserAfterValidation
	public User findUserAfterValidation(User user) throws SQLException {
		//1. 쿼리 작성
		String sql = "select id, name from user where id=? and password=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//2. DB 연결
			conn = dbUtil.getConnection();
			
			//3. 쿼리 실행
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPassword());
			rs = pstmt.executeQuery();
			
			//4. 조회 결과 파싱
			if(rs.next()) {
				User result = new User();
				result.setId(rs.getString("id"));
				result.setName(rs.getString("name"));
				return result;
			}
			return null;
		} finally {
			//5. 자원 반납
			dbUtil.close(rs, pstmt, conn);
		}
	}
	
	public static void main(String[] args) {
		UserDao userDao = new UserDao();
		
		User user = new User();
		user.setId("ssafy");
		user.setPassword("1234");
		
		try {
			User ret = userDao.findUserAfterValidation(user);
			
			System.out.println(ret);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
