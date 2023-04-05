package com.dong.board.config;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.dong.board.entity.Member;

public class SecurityUser extends User{
	
	private Member member;
	
	public SecurityUser(Member member) {
		super(member.getUserId(), member.getUserPw(), AuthorityUtils.createAuthorityList(member.getRole().toString()));
		
		this.member=member;
	}

}
