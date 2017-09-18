package com.macroflag.dp_cms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.macroflag.dp_cms.dao.UserDAO;
import com.macroflag.dp_cms.service.ILoginService;
import com.macroflag.dp_cms.vo.User;

@Service
public class LoginServiceImpl implements ILoginService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public User isAuth(String username, String password) {
		if(username.length() == 0 || password.length() == 0) {
			return null;
		}
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		return this.userDAO.findByUser(user);
		
	}

}
