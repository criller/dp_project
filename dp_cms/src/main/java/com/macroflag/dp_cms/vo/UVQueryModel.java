package com.macroflag.dp_cms.vo;
/**
 * UV分析模型
 * @author caocheng
 * @time   2017年9月14日 下午3:07:48
 */

import java.util.List;

public class UVQueryModel {
	private String startDate;
	private String endDate;
	
	private List<String> dateList;	//日期集合
	private List<Integer> hitList;	//点击量集合
	
	
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
		return "UVQueryModel [startDate=" + startDate + ", endDate=" + endDate + ", dateList="
				+ dateList + ", hitList=" + hitList + "]";
	}
}
