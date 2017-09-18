package com.macroflag.dp_cms.dao;

import org.springframework.stereotype.Repository;

import com.macroflag.dp_cms.vo.User;

@Repository
public interface UserDAO {
	/**
	 * 根据用户名查询用用户信息
	 * @param username
	 * @param password
	 * @return
	 */
	public User findByUser(User user);
}
