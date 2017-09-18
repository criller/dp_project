package com.macroflag.dp_cms.web;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.macroflag.dp_cms.service.IMetadataService;
import com.macroflag.dp_cms.vo.MetadataModel;
import com.macroflag.dp_cms.vo.MetadataQueryModel;
import com.macroflag.dp_cms.vo.Page;

/**
 * 元数据控制类
 * 
 * @author caocheng
 * @time 2017年9月12日 上午10:27:07
 */
@Controller
@RequestMapping("/analytics")
public class MetadataController {
	@Autowired
	private IMetadataService iMetadataService;
	private static final String PIXEL_B64 = "R0lGODlhAQABAPAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==";

	@RequestMapping(value = "1.gif", method = RequestMethod.GET)
	@SuppressWarnings("restriction")
	public void add(HttpServletResponse response, MetadataModel mdm) {
		this.iMetadataService.add(mdm);
		byte[] buf;
		try {
			buf = new sun.misc.BASE64Decoder().decodeBuffer(PIXEL_B64);
			response.setContentType("image/gif");
			response.getOutputStream().write(buf);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(Model model) {
		List<MetadataQueryModel> metadas = this.iMetadataService.findAll();
		model.addAttribute("metadas", metadas);
		return "admin/metadata";
	}

	/**
	 * 分页查询
	 * @param mqm
	 * @return
	 */
	@RequestMapping(value = "page", method = RequestMethod.GET)
	public @ResponseBody Page<MetadataQueryModel> getPageList(MetadataQueryModel mqm) {
		Page<MetadataQueryModel> pageObj = new Page<MetadataQueryModel>();
		List<MetadataQueryModel> metadas = this.iMetadataService.findByPage(mqm);
		pageObj.setData(metadas);
		if(metadas.size() > 0) {
			pageObj.setCount(metadas.get(0).getCount());
		}
		return pageObj;
	}
}
