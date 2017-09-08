package com.macroflag.dp_cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.macroflag.dao.BaseDAO;
import com.macroflag.dp_cms.vo.CustomerModel;
import com.macroflag.dp_cms.vo.CustomerQueryModel;

/**
 * 客户DAO接口
 * @author caocheng
 * @time   2017年9月8日 下午3:41:58
 */
@Repository
public interface CustomerDAO extends BaseDAO<CustomerModel, CustomerQueryModel>{
	/**
	 * 根据包装类对象，查询多条记录
	 * @param cqm
	 * @return	List
	 */
	public List<CustomerModel> getByCondition(CustomerQueryModel cqm);
}
