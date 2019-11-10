package com.board.bbs.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.bbs.service.UserService;
import com.board.bbs.service.impl.UserServiceImpl;

public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService us = new UserServiceImpl();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("USER get method").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uiName = request.getParameter("uiName");
		String uiId = request.getParameter("uiId");
		String uiPwd = request.getParameter("uiPwd");
		
		String uri = request.getRequestURI();
		// "/users/" 삭제
		String cmd = uri.substring(7);
		String path = "/views/msg";
		
		if("login".equals(cmd)) {
			Map<String, String> user = us.doLogin(uiId, uiPwd);
			if(user != null) {
				HttpSession hs = request.getSession();
				hs.setAttribute("user", user);
				request.setAttribute("msg", "Login SUCCESS!");
				request.setAttribute("url", "/views/index");
			} else {
				System.out.println(user);
				request.setAttribute("msg", "Login FAILED!");
				request.setAttribute("url", "/views/user/login");
			}
		} else if("signup".equals(cmd)) {
			// Service folder
			Map<String, String> user = us.doSignup(uiName, uiId, uiPwd);
			if(user != null) {
				HttpSession hs = request.getSession();
				hs.setAttribute("user", user);
				request.setAttribute("msg", "Sign-up SUCCESS!");
				// 폴더 구조
				request.setAttribute("url", "/views/user/login");
			} else {
				request.setAttribute("msg", "Login FAILED!");
				request.setAttribute("url", "/views/user/signup");
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
}




















