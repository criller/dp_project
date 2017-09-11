package com.macroflag.dp_cms.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.macroflag.dp_cms.service.ICustomerService;
import com.macroflag.dp_cms.vo.CustomerModel;
import com.macroflag.dp_cms.vo.CustomerQueryModel;
import com.macroflag.service.impl.BaseServiceImpl;
/**
 * 客户service实现类
 * @author caocheng
 * @createTime 2017年9月9日下午4:33:33
 */
@Service
@Transactional
public class CustomerServiceImpl extends BaseServiceImpl<CustomerModel, CustomerQueryModel> implements ICustomerService{

}
