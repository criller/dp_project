package com.macroflag.dp_cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.macroflag.dp_cms.vo.MetadataModel;
import com.macroflag.dp_cms.vo.MetadataQueryModel;

/**
 * 元数据DAO
 * @author caocheng
 * @time   2017年9月12日 上午10:06:41
 */
@Repository
public interface MetadataDAO{
	/**
	 * 新增记录
	 * @param e
	 */
	public void create(MetadataModel mdm);
	public List<MetadataQueryModel> getByCondition(MetadataQueryModel mdm);
}
