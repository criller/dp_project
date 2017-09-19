package com.macroflag.dp_cms.service;

import com.macroflag.dp_cms.vo.UserModel;

/**
 * 登陆权限认证
 * @author caocheng
 * @time   2017年9月18日 上午11:24:52
 */
public interface ILoginService {
	/**
	 * 认证登陆用户
	 * @param username
	 * @param password
	 * @return
	 */
	public UserModel isAuth(String username,String password);
}
