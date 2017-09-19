package com.macroflag.dp_cms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.macroflag.dp_cms.dao.UserDAO;
import com.macroflag.dp_cms.service.IUserService;
import com.macroflag.dp_cms.vo.UserModel;
import com.macroflag.dp_cms.vo.UserQueryModel;

@Service
@Transactional
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void add(UserModel user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void edit(UserModel user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAll(int[] ids) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<UserQueryModel> findByPage(UserQueryModel uqm) {
		int page = uqm.getPage();
		int limit = uqm.getLimit();
		if(page > 1 && limit > 0) {
			uqm.setPage((page-1)*limit);
			uqm.setLimit(limit*page);
		}
		return this.userDAO.getByCondition(uqm);
	}

}
