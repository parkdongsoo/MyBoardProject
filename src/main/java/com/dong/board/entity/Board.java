package com.dong.board.entity;

import java.sql.Date;

public class Board {
	
	private int id;
	
	private String title;
	
	private String memberName;
	
	private String content;
	
	private Date regdate;
	
	private int hit;
	
	private boolean pub;
	
	private int memberId;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int id, String title, String memberName, String content, Date regdate, int hit, boolean pub,
			int memberId) {
		super();
		this.id = id;
		this.title = title;
		this.memberName = memberName;
		this.content = content;
		this.regdate = regdate;
		this.hit = hit;
		this.pub = pub;
		this.memberId = memberId;
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public boolean isPub() {
		return pub;
	}

	public void setPub(boolean pub) {
		this.pub = pub;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "board [id=" + id + ", title=" + title + ", memberName=" + memberName + ", content=" + content
				+ ", regdate=" + regdate + ", hit=" + hit + ", pub=" + pub + ", memberId=" + memberId + "]";
	}
	
}
