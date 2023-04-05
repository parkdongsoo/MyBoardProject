package com.dong.board.entity;

public class Member {
	private int id;
	private String userId;
	private String userPw;
	private String userName;
	private String addr1;
	private String addr2;
	private String addr3;
	private Role role;
	private boolean enabled;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(int id, String userId, String userPw, String userName, String addr1, String addr2, String addr3,
			Role role, boolean enabled) {
		this.id = id;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.role = role;
		this.enabled = enabled;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", addr1="
				+ addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + ", role=" + role + ", enabled=" + enabled + "]";
	}
	
}
