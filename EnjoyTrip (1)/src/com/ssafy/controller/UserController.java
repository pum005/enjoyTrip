package com.ssafy.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssafy.model.dto.User;
import com.ssafy.service.UserService;


@WebServlet("/auth")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private UserService userService = UserService.getInstance();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("auth 컨트롤러 doget() 호출");
		
		String action = request.getParameter("action");
		
		try {
			if(action.equals("login")) {
				login(request, response);
			} else if(action.equals("logout")){
				logout(request, response);
			} else {
				System.out.println("해당 action의 요청에 대한 처리는 존재하지 않습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect(request.getContextPath()+"/error/error.jsp");
		}
		
	}
	
	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("로그아웃 요청 수신");
		//1. 세션 조회
		HttpSession session = request.getSession();
		
		//2. 세션 끊기
		session.invalidate();
		
		//3. 메인 페이지로 리다이렉트
		response.sendRedirect(request.getContextPath());
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		System.out.println("로그인 요청 수신");
		
		//1.요청 파라미터 추출 및 가공
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		User user = new User();
		user.setId(id);
		user.setPassword(password);
		
		//2.유저 정보 조회 요청 모델에 넘기기
		User result = userService.findUserAfterValidation(user);
		
		//3-1. 정보가 있다면 세션에 유저정보 저장
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", result);
			
			//isRemember 가 체크되어 있다면 쿠키에 아이디 저장
			if(request.getParameter("isRemember")!=null) {
				Cookie cookie = new Cookie("rememberId", result.getId());
				cookie.setMaxAge(60*60*3);//세시간
				response.addCookie(cookie);
			}
			//체크되어있지 않다면 쿠키 유효성 제거
			else {
				Cookie cookie = new Cookie("rememberId", result.getId());
				cookie.setMaxAge(0);//0시간 유효하지 않은 쿠키가 만들어짐
				response.addCookie(cookie);
			}
			
			//4. 메인화면으로 리다이렉트
			response.sendRedirect(request.getContextPath());
		}
		//3-2. 정보가 없다면 로그인 화면으로 리다이렉트
		else {
//			response.sendRedirect(request.getContextPath()+"/user/login.jsp");
		}
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
