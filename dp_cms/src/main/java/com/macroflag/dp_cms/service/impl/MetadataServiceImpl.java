package com.macroflag.dp_cms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.macroflag.dp_cms.dao.MetadataDAO;
import com.macroflag.dp_cms.service.IMetadataService;
import com.macroflag.dp_cms.vo.MetadataModel;
import com.macroflag.dp_cms.vo.MetadataQueryModel;

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
	public List<MetadataQueryModel> findByPage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MetadataQueryModel> findAll() {
		return this.metadataDAO.getByCondition(new MetadataQueryModel());
	}

	
}
