package com.dong.board.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dong.board.entity.Member;
import com.dong.board.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserInfoController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/view/member/userInfo")
	public String userInfo(Principal principal,Model model) {
    
	    log.info("마이프로필 창으로 이동");
	    log.info("유저아이디: "+principal.getName());
	    String userId=principal.getName();
	    Member member=boardService.getUserInfo(userId);
	    model.addAttribute("member", member);
	    
	    return "/view/member/userInfo";
	}
	
	
	@GetMapping("/view/admin/adminPage")
	public String adminPage(Model model) {
		
		List<Member> memberList = boardService.getMemberInfo();
		System.out.println(memberList);
		
		model.addAttribute(memberList);
		
		return "/view/admin/adminPage";
	}
}
