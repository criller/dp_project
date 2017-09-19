package com.macroflag.dp_cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.macroflag.dp_cms.vo.UserModel;
import com.macroflag.dp_cms.vo.UserQueryModel;

@Repository
public interface UserDAO {
	/**
	 * 根据用户名查询用用户信息
	 * @param username
	 * @param password
	 * @return
	 */
	public UserModel findByUser(UserModel user);
	/**
	 * 新增用户
	 * @param user
	 */
	public void create(UserModel user);
	/**
	 * 更新用户
	 * @param user
	 */
	public void update(UserModel user);
	/**
	 * 根据条件查询用户
	 * @param user
	 * @return
	 */
	public List<UserQueryModel> getByCondition(UserModel user);
	/**
	 * 根据ID删除用户
	 * @param id
	 */
	public void delete(int id);
	/**
	 * 批量删除用户
	 * @param ids
	 */
	public void deleteAll(int[] ids);
}
