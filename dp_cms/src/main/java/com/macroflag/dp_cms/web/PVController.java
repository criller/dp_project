package com.macroflag.dp_cms.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.macroflag.dp_cms.service.IMetadataService;
import com.macroflag.dp_cms.vo.PVQueryModel;

@Controller
@RequestMapping(value = "/pv")
public class PVController {
	@Autowired
	private IMetadataService metadataService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String index() {
		// 页面跳转到WEB-INF/jsp/index.jsp
		return "admin/pv";
	}

	@RequestMapping(value = "getPV", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody PVQueryModel getPV(@RequestParam(value = "startDate") String startDate,
			@RequestParam(value = "endDate") String endDate,@RequestParam(value="url") String url) {
		PVQueryModel pv = this.metadataService.getPV(startDate, endDate,url);
		return pv;
	}
}
