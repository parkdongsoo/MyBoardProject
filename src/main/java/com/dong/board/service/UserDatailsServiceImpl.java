package com.dong.board.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.dong.board.config.SecurityUser;
import com.dong.board.dao.BoardDao;
import com.dong.board.entity.Member;

@Component
public class UserDatailsServiceImpl implements UserDetailsService{

	@Autowired
	private BoardDao boardDao;
	
	
	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
		
		Member member = boardDao.getId(userId);
		
		return new SecurityUser(member);
	}
	
}
