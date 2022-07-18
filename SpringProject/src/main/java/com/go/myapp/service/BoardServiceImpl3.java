package com.go.myapp.service;

import java.sql.SQLException;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.go.myapp.dto.Board3;
import com.go.myapp.repo.BoardDao3;

@Service
@Repository
public class BoardServiceImpl3 implements BoardService3 {

	@Autowired
	private BoardDao3 boardDao3;

	@Override
	@Transactional
	public List<Board3> searchAll3(Board3 board3) throws SQLException {
		return boardDao3.searchAll3(board3);

	}

	@Override
	public Board3 boardDetail3(int no) {
		return boardDao3.boardDeatil3(no);
	}

	@Override
	public void updates3(Board3 board3) {
		boardDao3.updates3(board3);
	}

	@Override
	public void create3(Board3 board3) {
		boardDao3.create3(board3);

	}

	@Override
	public int countArticle3() {
		return boardDao3.countArticle3();
	}

	@Override
	public void deleted3(int no) {
		boardDao3.deleted3(no);
	}

}
