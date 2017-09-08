package com.macroflag.dp_cms.vo;

/**
 * Customer base view object
 * 
 * @author caocheng
 *
 */
public class CustomerModel {

	private int uuid; // 主键
	private String customerId;
	private String pwd;
	private String showName;
	private String trueName;
	private String registerTime;

	public int getUuid() {
		return uuid;
	}

	public void setUuid(int uuid) {
		this.uuid = uuid;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getShowName() {
		return showName;
	}

	public void setShowName(String showName) {
		this.showName = showName;
	}

	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + uuid;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CustomerModel other = (CustomerModel) obj;
		if (uuid != other.uuid)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CustomerModel [uuid=" + uuid + ", customerId=" + customerId + ", pwd=" + pwd + ", showName=" + showName
				+ ", trueName=" + trueName + ", registerTime=" + registerTime + "]";
	}

}
