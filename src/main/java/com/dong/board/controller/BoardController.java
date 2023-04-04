package com.dong.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dong.board.entity.Board;
import com.dong.board.entity.Member;
import com.dong.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value={"/","view/board/list"})
	public String list(Model model, 
			@RequestParam(name = "p", required = false, defaultValue = "1") int page,
			@RequestParam(name = "f", required = false, defaultValue = "title")String field,
			@RequestParam(name = "q", required = false, defaultValue = "")String query) {
		
		List<Board> list = boardService.getList(page, field, query);
		int count = boardService.getCount(field, query);

		model.addAttribute("count", count);
		model.addAttribute("list", list);
		return "view.board.list";
	}
	
	@RequestMapping("/view/board/view")
	public String view() {
		
		return "view.board.view";
	}
	
	@RequestMapping("/view/board/write")
	public String write() {
		
		return "view.board.write";
	}
	
	@RequestMapping("/view/board/update")
	public String update() {
		
		return "view.board.update";
	}
	
	@RequestMapping("/view/board/login")
	public String login() {
		
		return "view.board.login";
	}
	
	@GetMapping("/view/board/join")
	public String joinForm() {
		return "view.board.join";
	}
	
	@PostMapping("/view/board/join")
	public String join(Member member) {
		int result = boardService.joinInsert(member);
		System.out.println(result);
		return "redirect:/view/board/list";
	}
	
	@PostMapping("/checkId")
	@ResponseBody
	public int checkId(@RequestParam("userId") String userId) {
		int checkId = boardService.checkId(userId);
	
		return checkId;
	}
}