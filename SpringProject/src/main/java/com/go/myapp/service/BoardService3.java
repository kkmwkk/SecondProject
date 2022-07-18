package com.go.myapp.service;

import java.sql.SQLException;

import java.util.List;

import org.springframework.stereotype.Service;

import com.go.myapp.dto.Board3;

@Service
public interface BoardService3 {

	List<Board3> searchAll3(Board3 board3) throws SQLException;

	Board3 boardDetail3(int no);

	void updates3(Board3 board3);

	void create3(Board3 board3);

	int countArticle3();

	void deleted3(int no);

}
