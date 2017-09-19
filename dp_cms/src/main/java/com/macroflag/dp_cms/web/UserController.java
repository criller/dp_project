package com.macroflag.dp_cms.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.macroflag.dp_cms.service.IUserService;
import com.macroflag.dp_cms.vo.Page;
import com.macroflag.dp_cms.vo.UserQueryModel;

/**
 * 用户控制层
 * @author caocheng
 * @time   2017年9月19日 下午3:24:52
 */
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index() {
		return "admin/user";
	}
	
	/**
	 * 用户列表
	 * @return
	 */
	/**
	 * 分页查询
	 * @param mqm
	 * @return
	 */
	@RequestMapping(value = "page", method = RequestMethod.GET)
	public @ResponseBody Page<UserQueryModel> getPageList(UserQueryModel uqm) {
		Page<UserQueryModel> pageObj = new Page<UserQueryModel>();
		List<UserQueryModel> users = this.userService.findByPage(uqm);
		pageObj.setData(users);
		if(users.size() > 0) {
			pageObj.setCount(users.get(0).getCount());
		}
		return pageObj;
	}
}
