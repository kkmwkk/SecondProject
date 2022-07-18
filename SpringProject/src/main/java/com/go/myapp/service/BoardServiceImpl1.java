package com.go.myapp.service;

import java.sql.SQLException;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.go.myapp.dto.Board1;
import com.go.myapp.repo.BoardDao1;

@Service
@Repository
public class BoardServiceImpl1 implements BoardService1 {

	@Autowired
	private BoardDao1 boardDao1;

	@Override
	@Transactional
	public List<Board1> searchAll1(Board1 board1) throws SQLException {
		return boardDao1.searchAll1(board1);

	}

	@Override
	public Board1 boardDetail1(int no) {
		return boardDao1.boardDeatil1(no);
	}

	@Override
	public void updates1(Board1 board1) {
		boardDao1.updates1(board1);
	}

	@Override
	public void create1(Board1 board1) {
		boardDao1.create1(board1);

	}

	@Override
	public int countArticle1() {
		return boardDao1.countArticle1();
	}

	@Override
	public void deleted1(int no) {
		boardDao1.deleted1(no);
	}

}
