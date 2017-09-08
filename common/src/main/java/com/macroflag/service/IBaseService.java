package com.macroflag.service;
/**
 * 服务基础接口
 * 
 * DESCRIPTION:
 * 		E:表示基础的vo类对象
 * 		F:表示包装类对象
 * @author caocheng
 * @time   2017年9月8日 下午4:18:39
 */
public interface IBaseService<E,F> {
	/**
	 * 添加记录
	 * @param e
	 */
	public void add(E e);
	
	/**
	 * 编辑记录
	 * @param e
	 */
	public void edit(E e);
	
	/**
	 * 根据唯一标识号删除记录
	 * @param uuid
	 */
	public void delete(int uuid);
	
	/**
	 * 根据唯一标识号获取最多一条记录
	 * @param uuid
	 * @return
	 */
	public E getByUuid(int uuid);
}
