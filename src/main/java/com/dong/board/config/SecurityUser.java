package com.dong.board.config;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.dong.board.entity.Member;

public class SecurityUser extends User{
	
	private int id;
	
	public SecurityUser(Member member) {
		super(member.getUserId(), member.getUserPw(), AuthorityUtils.createAuthorityList(member.getRole().toString()));
		
		this.id=member.getId();
	}

	public int getId() {
		return id;
	}
	
}
