package com.go.myapp.repo;

import java.sql.SQLException;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.go.myapp.dto.Board2;

@Repository
public class BoardDaoImpl2 implements BoardDao2 {
	String ns = "board2.";

	@Autowired
	private SqlSession sqlSession2;

	@Override
	public List<Board2> searchAll2(Board2 board2) throws SQLException {
		return sqlSession2.selectList(ns + "SearchallArticle2", board2);
	}

	@Override
	public Board2 boardDeatil2(int no) {
		return sqlSession2.selectOne(ns + "detail2", no);
	}

	@Override
	public void updates2(Board2 board2) {
		sqlSession2.selectOne(ns + "updateArticle2", board2);
	}

	@Override
	public void create2(Board2 board2) {
		sqlSession2.selectOne(ns + "createArticle2", board2);

	}

	@Override
	public int countArticle2() {
		return sqlSession2.selectOne(ns + "count2");
	}

	@Override
	public void deleted2(int no) {
		sqlSession2.selectOne(ns + "deleteArticle2", no);
	}

}