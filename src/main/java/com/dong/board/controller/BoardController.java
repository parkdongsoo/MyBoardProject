package com.dong.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
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
	public String view(int id,Model model) {
		Board board = boardService.getView(id);
		model.addAttribute("board",board);
		
		return "view.board.view";
	}
	
	@GetMapping("/view/board/write")
	public String writeForm() {
		return "view.board.write";
	}
	
	@PostMapping("/view/board/write")
	public String write(Board board) {
		int result = boardService.write(board);
		return "redirect:/view/board/list";
	}
	
	@GetMapping("/view/board/update")
	public String updateForm(int id, Model model) {
		Board board = boardService.getView(id);
		model.addAttribute("board",board);
		
		return "view.board.update";
	}
	
	@PostMapping("/view/board/update")
	public String update(Board board, Model model) {
		boardService.update(board);
		
		return "redirect:/view/board/view?id="+board.getId();
	}
	
	
	@RequestMapping("/view/board/delete") 
	public String delete(int id) {
		boardService.delete(id);
	    
		return "redirect:/view/board/list"; 
	}
	 
	
	@RequestMapping("/view/member/login")
	public String login() {
		
		return "view.member.login";
	}
	
	@GetMapping("/view/member/join")
	public String joinForm() {
		return "view.member.join";
	}
	
	@PostMapping("/view/member/join")
	public String join(Member member) {
		
		String password = passwordEncoder.encode(member.getUserPw());
		member.setUserPw(password);
		
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
