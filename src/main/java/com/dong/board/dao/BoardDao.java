package com.dong.board.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;

import com.dong.board.entity.Board;
import com.dong.board.entity.Member;

@Mapper
public interface BoardDao {

	public List<Board> getList(int offset, int size, String field, String query);
	
	public int getCount(String field, String query);

	public int checkId(String userId);

	public int joinInsert(Member member);

	public Member getId(String userId);

	public Board getView(int id);

	public int write(Board board);

	public void update(Board board);

	public void delete(int id);

	public Member getUserInfo(String userId);

	public List<Member> getMemberInfo();

}
