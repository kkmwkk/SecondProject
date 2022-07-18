package com.go.myapp.repo;

import java.sql.SQLException;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.go.myapp.dto.Board3;

@Repository
public class BoardDaoImpl3 implements BoardDao3 {
	String ns = "board3.";

	@Autowired
	private SqlSession sqlSession3;

	@Override
	public List<Board3> searchAll3(Board3 board3) throws SQLException {
		return sqlSession3.selectList(ns + "SearchallArticle3", board3);
	}

	@Override
	public Board3 boardDeatil3(int no) {
		return sqlSession3.selectOne(ns + "detail3", no);
	}

	@Override
	public void updates3(Board3 board3) {
		sqlSession3.selectOne(ns + "updateArticle3", board3);
	}

	@Override
	public void create3(Board3 board3) {
		sqlSession3.selectOne(ns + "createArticle3", board3);

	}

	@Override
	public int countArticle3() {
		return sqlSession3.selectOne(ns + "count3");
	}

	@Override
	public void deleted3(int no) {
		sqlSession3.selectOne(ns + "deleteArticle3", no);
	}

}