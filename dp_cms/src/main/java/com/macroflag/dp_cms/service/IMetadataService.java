package com.macroflag.dp_cms.service;

import java.util.List;

import com.macroflag.dp_cms.vo.MetadataModel;
import com.macroflag.dp_cms.vo.MetadataQueryModel;

public interface IMetadataService {
	/**
	 * 添加元数据
	 * @param mdm
	 */
	public void add(MetadataModel mdm);
	/**
	 * 编辑
	 * @param mdm
	 */
	public void edit(MetadataModel mdm);
	/**
	 * 删除
	 * @param id
	 */
	public void delete(int id);
	/**
	 * 根据ID进行查询
	 * @param id
	 * @return
	 */
	public MetadataQueryModel findById(int id);
	/**
	 * 分页查询
	 * @return
	 */
	public List<MetadataQueryModel> findByPage();
	/**
	 * 查询所有元数据
	 * @return
	 */
	public List<MetadataQueryModel> findAll();
	
}
