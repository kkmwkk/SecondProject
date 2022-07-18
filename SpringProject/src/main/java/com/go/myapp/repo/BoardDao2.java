package com.go.myapp.repo;

import java.sql.SQLException;

import java.util.List;

import com.go.myapp.dto.Board2;

public interface BoardDao2 {

	public List<Board2> searchAll2(Board2 board2) throws SQLException;

	public Board2 boardDeatil2(int no);

	public void updates2(Board2 board2);

	public void create2(Board2 board2);

	public int countArticle2();

	public void deleted2(int no);

}
