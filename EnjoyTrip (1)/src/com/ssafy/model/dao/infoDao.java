package com.ssafy.model.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.model.dto.info;
import com.ssafy.util.DBUtil;

public class infoDao {
	
	private infoDao() {}
	private static infoDao instance = new infoDao();
	public static infoDao getInstance() {
		return instance;
	}
	private DBUtil dbUtil = DBUtil.getInstance();
	
	public List<info> selectRand() throws SQLException{
		System.out.println("selectAll() 실행");
		//1. 쿼리 작성
		String sql = "select * from attraction_info where first_image like 'http%' order by rand() limit 8;";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//2. DB 연결
			conn = dbUtil.getConnection();
			
			//3. 쿼리 실행
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			//4. 데이터 파싱
			List<info> infoList = new ArrayList<>();
			while(rs.next()) {
				info information = new info();
				information.setContentId(rs.getInt("content_id"));
				information.setContentTypeId(rs.getInt("content_type_id"));
				information.setTitle(rs.getString("title"));
				information.setAddress(rs.getString("addr1"));
				information.setImg(rs.getString("first_image"));
				
				infoList.add(information);
				System.out.println(information.getImg());
			}
			return infoList;
		} finally {
			//5. 자원 반납
			dbUtil.close(rs, pstmt, conn);
		}
	}
	
	
	
}
