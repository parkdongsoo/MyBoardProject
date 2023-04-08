package com.dong.board.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dong.board.dao.BoardDao;
import com.dong.board.entity.Board;
import com.dong.board.entity.Member;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Override
	public List<Board> getList(int page, String field, String query) {
		
		int size = 10;
		int offset = 0 + (page - 1) * size;

		return boardDao.getList(offset, size, field, query);
	}

	@Override
	public int getCount(String field, String query) {
		
		return boardDao.getCount(field, query);
	}

	@Override
	public int checkId(String userId) {
		
		return boardDao.checkId(userId);
	}

	@Override
	public int joinInsert(Member member) {
		
		return boardDao.joinInsert(member);
	}

	@Override
	public Board getView(int id) {
		
		return boardDao.getView(id);
	}

	@Override
	public int write(Board board) {
		
		return boardDao.write(board);
	}

	@Override
	public void update(Board board) {
		boardDao.update(board);
	}

	@Override
	public void delete(int id) {
		boardDao.delete(id);
	}

	@Override
	public Member getUserInfo(String userId) {
		
		return boardDao.getUserInfo(userId);
	}

	@Override
	public List<Member> getMemberInfo() {
		
		return boardDao.getMemberInfo();
	}

	@Override
	public void userUpdate(Member member) {
		
		boardDao.userUpdate(member);
	}

	@Override
	public void boardUpdateHit(int id) {
		
		boardDao.boardUpdateHit(id);
	}

}
