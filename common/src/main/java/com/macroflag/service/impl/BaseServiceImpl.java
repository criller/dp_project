package com.macroflag.service.impl;

import com.macroflag.dao.BaseDAO;
import com.macroflag.service.IBaseService;

public class BaseServiceImpl<E,F> implements IBaseService<E, F>{
	private BaseDAO<E, F> baseDAO;
	
	public void setBaseDAO(BaseDAO<E, F> dao) {
		this.baseDAO = dao;
	}
	
	@Override
	public void add(E e) {
		this.baseDAO.create(e);
	}

	@Override
	public void edit(E e) {
		this.baseDAO.update(e);
	}

	@Override
	public void delete(int uuid) {
		this.baseDAO.delete(uuid);
	}

	@Override
	public E getByUuid(int uuid) {
		return (E) this.baseDAO.getByUuid(uuid);
	}

}
