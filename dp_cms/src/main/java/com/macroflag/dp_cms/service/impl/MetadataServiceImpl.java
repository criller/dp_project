package com.macroflag.dp_cms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.macroflag.dp_cms.dao.MetadataDAO;
import com.macroflag.dp_cms.service.IMetadataService;
import com.macroflag.dp_cms.vo.MetadataModel;
import com.macroflag.dp_cms.vo.MetadataQueryModel;
import com.macroflag.dp_cms.vo.PVQueryModel;
import com.macroflag.dp_cms.vo.UVQueryModel;

@Service
@Transactional
public class MetadataServiceImpl implements IMetadataService {
	@Autowired
	private MetadataDAO metadataDAO;

	@Override
	public void add(MetadataModel mdm) {
		this.metadataDAO.create(mdm);
	}

	@Override
	public void edit(MetadataModel mdm) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public MetadataQueryModel findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MetadataQueryModel> findAll() {
		return this.metadataDAO.getByCondition(new MetadataQueryModel());
	}

	@Override
	public List<MetadataQueryModel> findByPage(MetadataQueryModel mqm) {
		int page = mqm.getPage();
		int limit = mqm.getLimit();
		if (page > 1 && limit > 0) {
			mqm.setPage((page - 1) * limit);
			mqm.setLimit(limit * page);
		}
		return this.metadataDAO.getByCondition(mqm);
	}

	@Override
	public UVQueryModel getUV(String startDate, String endDate) {
		UVQueryModel uv = new UVQueryModel();
		uv.setStartDate(startDate);
		uv.setEndDate(endDate);
		return this.metadataDAO.getUV(uv);
	}

	@Override
	public PVQueryModel getPV(String startDate, String endDate, String url) {
		PVQueryModel pv = new PVQueryModel();
		pv.setStartDate(startDate);
		pv.setEndDate(endDate);
		pv.setUrl(url);
		return this.metadataDAO.getPV(pv);
	}
}
