package com.go.myapp.service;

import java.sql.SQLException;
import java.util.List;

import com.go.myapp.dto.Board1;

public interface BoardService1 {

	List<Board1> searchAll1(Board1 board1) throws SQLException;

	Board1 boardDetail1(int no);

	void updates1(Board1 board1);

	void create1(Board1 board1);

	int countArticle1();

	void deleted1(int no);

}
