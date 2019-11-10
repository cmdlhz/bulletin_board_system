package com.board.bbs.service;

import java.util.List;
import java.util.Map;

public interface UserService {
	public Map<String, String> doSignup(String uiName, String uiId, String uiPwd);
	public Map<String, String> doLogin(String uiId, String uiPwd);
//	public List<Map<String, String>> getUsers(Map<String, String> user);
}
