package com.macroflag.dp_cms.vo;
/**
 * PV分析模型
 * @author caocheng
 * @time   2017年9月14日 下午3:07:48
 */

import java.util.List;

public class PVQueryModel {
	private String startDate;
	private String endDate;
	private String url;
	private List<String> dateList;	//日期集合
	private List<Integer> hitList;	//点击量集合
	
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public List<String> getDateList() {
		return dateList;
	}
	public void setDateList(List<String> dateList) {
		this.dateList = dateList;
	}
	public List<Integer> getHitList() {
		return hitList;
	}
	public void setHitList(List<Integer> hitList) {
		this.hitList = hitList;
	}
	@Override
	public String toString() {
		return "PVQueryModel [startDate=" + startDate + ", endDate=" + endDate + ", url=" + url + ", dateList="
				+ dateList + ", hitList=" + hitList + "]";
	}
}
