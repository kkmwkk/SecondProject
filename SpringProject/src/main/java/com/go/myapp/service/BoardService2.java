package com.go.myapp.service;

import java.sql.SQLException;

import java.util.List;

import org.springframework.stereotype.Service;

import com.go.myapp.dto.Board2;

@Service
public interface BoardService2 {

	List<Board2> searchAll2(Board2 board2) throws SQLException;

	Board2 boardDetail2(int no);

	void updates2(Board2 board1);

	void create2(Board2 board1);

	int countArticle2();

	void deleted2(int no);

}
