package com.macroflag.vo;

import com.macroflag.pageutil.Page;

/**
 * 基础vo类
 * @author caocheng
 * @createTime 2017年9月9日下午4:27:53
 */
public class BaseModel<M> {
	private int uuid;	//UUID作为主键
	private Page<M> page = new Page<M>();	//作为分页

	public int getUuid() {
		return uuid;
	}

	public void setUuid(int uuid) {
		this.uuid = uuid;
	}
	
	public Page<M> getPage() {
		return page;
	}

	public void setPage(Page<M> page) {
		this.page = page;
	}

	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + uuid;
		return result;
	}

	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		@SuppressWarnings("unchecked")
		BaseModel<M> other = (BaseModel<M>) obj;
		if (uuid != other.uuid)
			return false;
		return true;
	}
	
}
