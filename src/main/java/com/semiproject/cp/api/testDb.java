package com.semiproject.cp.api;

public class testDb {

	private int userNum; 
	private String id; 
	private String password; 
	private String location;
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "testDb [userNum=" + userNum + ", id=" + id + ", password=" + password + ", location=" + location + "]";
	} 
	
	
	
}
