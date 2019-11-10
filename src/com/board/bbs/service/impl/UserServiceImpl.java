package com.board.bbs.service.impl;

import java.util.HashMap;
import java.util.Map;

import com.board.bbs.dao.UserDAO;
import com.board.bbs.dao.impl.UserDAOImpl;
import com.board.bbs.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO udao = new UserDAOImpl();
	
	public Map<String, String> doLogin(String uiId, String uiPwd){
		Map<String, String> user = new HashMap<>();
		user.put("uiId", uiId);
		user.put("uiPwd", uiPwd);
		return user = udao.loginUser(user);
	}
	
	public Map<String, String> doSignup(String uiName, String uiId, String uiPwd){
		Map<String, String> user = new HashMap<>();
		user.put("uiName", uiName);
		user.put("uiId", uiId);
		user.put("uiPwd", uiPwd);
		// DAO folder
		return user = udao.registerUser(user);
	}
}
