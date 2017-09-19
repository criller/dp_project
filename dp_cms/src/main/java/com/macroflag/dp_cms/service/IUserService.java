package com.macroflag.dp_cms.service;

import java.util.List;

import com.macroflag.dp_cms.vo.UserModel;
import com.macroflag.dp_cms.vo.UserQueryModel;

/**
 * 用户Service
 * @author caocheng
 * @time   2017年9月19日 下午3:13:45
 */
public interface IUserService {
	/**
	 * 增加用户
	 * @param user
	 */
	public void add(UserModel user);
	/**
	 * 编辑用户
	 * @param user
	 */
	public void edit(UserModel user);
	/**
	 * 根据ID删除单个用户
	 * @param id
	 */
	public void delete(int id);
	/**
	 * 根据id批量删除用户
	 * @param ids
	 */
	public void deleteAll(int[] ids);
	/**
	 * 分页查询
	 * @param uqm
	 * @return
	 */
	public List<UserQueryModel> findByPage(UserQueryModel uqm);
}
