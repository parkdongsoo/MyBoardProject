package com.dong.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dong.board.entity.Board;
import com.dong.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/")
	public String list(Model model) {
		
		List<Board> list = boardService.getList();
		model.addAttribute("list",list);
		System.out.println(list);
		return "view.board.list";
	}
	
}
