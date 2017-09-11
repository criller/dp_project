package com.macroflag.dp_cms.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.macroflag.dp_cms.service.ICustomerService;
import com.macroflag.dp_cms.vo.CustomerModel;

/**
 * 客户Controller类
 * @author caocheng
 * @createTime 2017年9月9日下午5:01:40
 */
@Controller
@RequestMapping(value="/customer")
public class CustomerController {
	@Autowired
	private ICustomerService iCustomerService;
	
	/**
	 * 添加页面
	 * @return String
	 */
	@RequestMapping(value="toAdd",method=RequestMethod.GET)
	public String toAdd() {
		//页面跳转到WEB-INF/customer/add.jsp
		return "customer/add";
	}
	
	/**
	 * 保存添加
	 * @param cm
	 * @return String
	 */
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@ModelAttribute("cm") CustomerModel cm) {
		this.iCustomerService.add(cm);
		return "customer/success";
	}
	
	/**
	 * 根据UUID查询对应的客户详细记录
	 * @param model
	 * @param customerUuid
	 * @return String
	 */
	@RequestMapping(value="toUpate/(customerUuid)",method=RequestMethod.GET)
	public String toUpdate(Model model,@PathVariable("customerUuid") int customerUuid) {
		//根据UUID查询对应的数据
		CustomerModel customerModel = this.iCustomerService.getByUuid(customerUuid);
		model.addAttribute(customerModel);
		return "customer/update";
	}
	
	/**
	 * 保存更新
	 * @param cm
	 * @return String 
	 */
	@RequestMapping(value="update",method=RequestMethod.POST)
	public String update(@ModelAttribute("cm") CustomerModel cm) {
		this.iCustomerService.edit(cm);
		return "customer/success";
	}
	
	/**
	 * 删除单条记录
	 * @param customerUuid
	 * @return
	 */
	@RequestMapping(value="delete",method=RequestMethod.POST)
	public String delete(@RequestParam("uuid") int customerUuid) {
		this.iCustomerService.delete(customerUuid);
		return "customer/success";
	}
}
