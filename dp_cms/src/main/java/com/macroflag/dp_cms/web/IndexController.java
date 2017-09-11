package com.macroflag.dp_cms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 后台管理系统首页
 * @author caocheng
 * @createTime 2017年9月11日上午9:18:59
 */
@Controller
@RequestMapping(value="/admin")
public class IndexController {
	
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index() {
		System.out.println("==================================");
		//页面跳转到WEB-INF/jsp/index.jsp
		return "index";
	}
}