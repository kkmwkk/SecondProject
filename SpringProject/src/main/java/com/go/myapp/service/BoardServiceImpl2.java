package com.go.myapp.service;

import java.sql.SQLException;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.go.myapp.dto.Board2;
import com.go.myapp.repo.BoardDao2;

@Service
@Repository
public class BoardServiceImpl2 implements BoardService2 {

	@Autowired
	private BoardDao2 boardDao2;

	@Override
	@Transactional
	public List<Board2> searchAll2(Board2 board2) throws SQLException {
		return boardDao2.searchAll2(board2);

	}

	@Override
	public Board2 boardDetail2(int no) {
		return boardDao2.boardDeatil2(no);
	}

	@Override
	public void updates2(Board2 board2) {
		boardDao2.updates2(board2);
	}

	@Override
	public void create2(Board2 board2) {
		boardDao2.create2(board2);

	}

	@Override
	public int countArticle2() {
		return boardDao2.countArticle2();
	}

	@Override
	public void deleted2(int no) {
		boardDao2.deleted2(no);
	}

}
