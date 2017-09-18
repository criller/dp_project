package com.macroflag.dp_cms.vo;


import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 元数据实体类
 * @author caocheng
 * @time   2017年9月12日 上午9:47:40
 */
public class MetadataModel {
	private int id;
	private String dpaUuid;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date time;
	private String domain;
	private String url;
	private int screenHeight;
	private int screenWidth;
	private String os;
	private String browserVersion;
	private String eventName;
	private String eXPath;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDpaUuid() {
		return dpaUuid;
	}
	public void setDpaUuid(String dpaUid) {
		this.dpaUuid = dpaUid;
	}
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="Asia/Shanghai")
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getScreenHeight() {
		return screenHeight;
	}
	public void setScreenHeight(int screenHeight) {
		this.screenHeight = screenHeight;
	}
	public int getScreenWidth() {
		return screenWidth;
	}
	public void setScreenWidth(int screenWidth) {
		this.screenWidth = screenWidth;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getBrowserVersion() {
		return browserVersion;
	}
	public void setBrowserVersion(String browserVersion) {
		this.browserVersion = browserVersion;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String geteXPath() {
		return eXPath;
	}
	public void seteXPath(String eXPath) {
		this.eXPath = eXPath;
	}
	@Override
	public String toString() {
		return "MetadataModel [id=" + id + ", dpaUuid=" + dpaUuid + ", time=" + time + ", domain=" + domain + ", url="
				+ url + ", screenHeight=" + screenHeight + ", screenWidth=" + screenWidth + ", os=" + os
				+ ", browserVersion=" + browserVersion + ", eventName=" + eventName + ", eXPath=" + eXPath + "]";
	}
}
