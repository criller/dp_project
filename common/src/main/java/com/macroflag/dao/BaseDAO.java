package com.macroflag.dao;

/**
 * 基础DAO接口
 * 
 * DESCRIPTION:
 * 		E:表示基础的vo类对象
 * 		F:表示包装类对象
 * @author caocheng
 * @time 2017年9月8日 下午3:35:05
 */
public interface BaseDAO<E, F> {
	/**
	 * 新增记录
	 * @param e
	 */
	public void create(E e);

	/**
	 * 更新记录
	 * @param e
	 */
	public void update(E e);

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
