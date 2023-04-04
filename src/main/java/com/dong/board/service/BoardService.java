package com.dong.board.service;

import java.util.List;

import com.dong.board.entity.Board;
import com.dong.board.entity.Member;

public interface BoardService {

	List<Board> getList(int page, String field, String query);
	
	int getCount(String field, String query);

	int checkId(String userId);

	int joinInsert(Member member);
}
