package com.macroflag.dp_cms.vo;
/**
 * 系统用户
 * @author caocheng
 * @time   2017年9月18日 上午11:18:34
 */
public class User {
	private int id; 
	private String username;
	private String password;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
	}
}
