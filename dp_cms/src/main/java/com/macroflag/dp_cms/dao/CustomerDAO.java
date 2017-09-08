package com.macroflag.dp_cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.macroflag.dp_cms.vo.CustomerModel;
import com.macroflag.dp_cms.vo.CustomerQueryModel;


@Repository
public interface CustomerDAO {
	public void create(CustomerModel cm);

	public void update(CustomerModel cm);

	public void delete(int uuid);

	public CustomerModel getByUuid(int uuid);

	public List<CustomerModel> getByCondition(CustomerQueryModel cqm);
}
