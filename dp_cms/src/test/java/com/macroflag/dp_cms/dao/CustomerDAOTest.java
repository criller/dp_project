package com.macroflag.dp_cms.dao;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.macroflag.dp_cms.vo.CustomerModel;
import com.macroflag.dp_cms.vo.CustomerQueryModel;

@Service
public class CustomerDAOTest {
	@Autowired
	public CustomerDAO customerDao;
	private ClassPathXmlApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		CustomerDAOTest t = (CustomerDAOTest) context.getBean("CustomerDAOTest");

		CustomerModel cm = new CustomerModel();
		cm.setCustomerId("c1");
		cm.setPwd("c1");
		cm.setRegisterTime("111");
		cm.setShowName("c1");
		cm.setTrueName("张三");

		t.customerDao.create(cm);
		System.out.println(cm);

		List<CustomerModel> list = t.customerDao.getByCondition(new CustomerQueryModel());
		System.out.println(list);
	}

}
