package com.dong.board.service;

import java.util.List;

import com.dong.board.entity.Board;
import com.dong.board.entity.Member;

public interface BoardService {

	List<Board> getList(int page, String field, String query);
	
	int getCount(String field, String query);

	int checkId(String userId);

	int joinInsert(Member member);

    Board getView(int id);

	int write(Board board);

	void update(Board board);

	void delete(int id);

	Member getUserInfo(String userId);

	List<Member> getMemberInfo();

	void userUpdate(Member member);

	void boardUpdateHit(int id);
}
