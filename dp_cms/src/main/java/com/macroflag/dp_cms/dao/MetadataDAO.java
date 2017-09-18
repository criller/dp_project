package com.macroflag.dp_cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.macroflag.dp_cms.vo.MetadataModel;
import com.macroflag.dp_cms.vo.MetadataQueryModel;
import com.macroflag.dp_cms.vo.PVQueryModel;
import com.macroflag.dp_cms.vo.UVQueryModel;

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
	/**
	 * 分页查询
	 * @param mdm
	 * @return
	 */
	public List<MetadataQueryModel> getByCondition(MetadataQueryModel mdm);
	
	/**
	 * 根据日期查询PV
	 * @param startDate	查询的开始日期
	 * @param endDate	查询结束日期
	 * @return
	 */
	public PVQueryModel getPV(PVQueryModel pv);
	public UVQueryModel getUV(UVQueryModel uv);
}
