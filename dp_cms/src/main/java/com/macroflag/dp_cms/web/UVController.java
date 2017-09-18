package com.macroflag.dp_cms.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.macroflag.dp_cms.service.IMetadataService;
import com.macroflag.dp_cms.vo.UVQueryModel;

@Controller
@RequestMapping(value="/uv")
public class UVController {
	@Autowired
	private IMetadataService metadataService;
	
	@RequestMapping(value="list",method=RequestMethod.GET)
	public String index() {
		//页面跳转到WEB-INF/jsp/index.jsp
		return "admin/uv";
	}
	
	@RequestMapping(value="getUV",method= {RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody UVQueryModel getUV(@RequestParam(value="startDate") String startDate,@RequestParam(value="endDate") String endDate) {
		UVQueryModel pv = this.metadataService.getUV(startDate, endDate);
		return pv;
	}
}
