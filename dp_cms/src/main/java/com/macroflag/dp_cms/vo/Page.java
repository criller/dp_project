package com.macroflag.dp_cms.vo;

import java.util.List;

/**
 * 分页包装类
 * @author caocheng
 * @time   2017年9月13日 下午3:40:16
 */
public class Page<E> {
	private int code;
	private String msg;
	private int count;
	private List<E> data;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<E> getData() {
		return data;
	}
	public void setData(List<E> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "Page [code=" + code + ", msg=" + msg + ", count=" + count + ", data=" + data + "]";
	}
}
