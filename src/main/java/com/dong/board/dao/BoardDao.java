package com.dong.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.dong.board.entity.Board;
import com.dong.board.entity.Member;

@Mapper
public interface BoardDao {

	public List<Board> getList(int offset, int size, String field, String query);
	
	public int getCount(String field, String query);

	public int checkId(String userId);

	public int joinInsert(Member member);
}
