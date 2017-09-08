package com.macroflag.dp_cms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.macroflag.dp_cms.dao.CustomerDAO;
import com.macroflag.dp_cms.vo.CustomerModel;
import com.macroflag.dp_cms.vo.CustomerQueryModel;

/**
 * 测试类
 * @author caocheng
 *
 */
@Service
public class Client {
	@Autowired
	private CustomerDAO customerDao;
	
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		Client t = (Client)context.getBean("client");
		
		CustomerModel cm = new CustomerModel();
		cm.setCustomerId("c1");
		cm.setPwd("c1");
		cm.setRegisterTime("111");
		cm.setShowName("c1");
		cm.setTrueName("张三");
		
		t.customerDao.create(cm);
		
		List<CustomerModel> list = t.customerDao.getByCondition(new CustomerQueryModel());
		System.out.println(list);
	}
}
