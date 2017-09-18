package com.macroflag.dp_cms.vo;

public class MetadataQueryModel extends MetadataModel{
	private int page;	//页码
	private int limit;	//每页显示的条数
	private int count;	//总记录数
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "MetadataQueryModel [page=" + page + ", limit=" + limit + ", count=" + count + "]";
	}
}
