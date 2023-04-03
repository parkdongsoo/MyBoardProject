package com.dong.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.dong.board.entity.Board;

@Mapper
public interface BoardDao {

	public List<Board> getList();
	
}
