package com.macroflag.dp_cms.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.macroflag.dp_cms.service.IMetadataService;
import com.macroflag.dp_cms.vo.UVQueryModel;

/**
 * 后台管理系统首页
 * @author caocheng
 * @createTime 2017年9月11日上午9:18:59
 */
@Controller
@RequestMapping(value="/index")
public class IndexController {
	@Autowired
	private IMetadataService metadataService;
	
	@RequestMapping(value="list",method=RequestMethod.GET)
	public String index() {
		//页面跳转到WEB-INF/jsp/index.jsp
		return "index";
	}
	
	@RequestMapping(value="getPV",method= {RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody UVQueryModel getPV(@RequestParam(value="startDate") String startDate,@RequestParam(value="endDate") String endDate) {
		UVQueryModel uv = this.metadataService.getUV(startDate, endDate);
		return uv;
	}
}
