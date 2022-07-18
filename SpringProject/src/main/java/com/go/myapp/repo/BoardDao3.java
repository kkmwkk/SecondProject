package com.go.myapp.repo;

import java.sql.SQLException;

import java.util.List;

import com.go.myapp.dto.Board3;

public interface BoardDao3 {

	public List<Board3> searchAll3(Board3 board3) throws SQLException;

	public Board3 boardDeatil3(int no);

	public void updates3(Board3 board3);

	public void create3(Board3 board3);

	public int countArticle3();

	public void deleted3(int no);

}
