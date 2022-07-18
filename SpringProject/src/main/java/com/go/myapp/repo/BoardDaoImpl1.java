package com.go.myapp.repo;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.go.myapp.dto.Board1;
import com.go.myapp.dto.MemberInfo;

@Repository
public class BoardDaoImpl1 implements BoardDao1 {
	String ns = "board1.";

	@Autowired
	private SqlSession sqlSession1;

	@Override
	public List<Board1> searchAll1(Board1 board1) throws SQLException {
		return sqlSession1.selectList(ns + "SearchallArticle1", board1);
	}

	@Override
	public Board1 boardDeatil1(int no) {
		return sqlSession1.selectOne(ns + "detail1", no);
	}

	@Override
	public void updates1(Board1 board1) {
		sqlSession1.selectOne(ns + "updateArticle1", board1);
	}

	@Override
	public void create1(Board1 board1) {
		sqlSession1.selectOne(ns + "createArticle1", board1);

	}

	@Override
	public int countArticle1() {
		return sqlSession1.selectOne(ns + "count1");
	}

	@Override
	public void deleted1(int no) {
		sqlSession1.selectOne(ns + "deleteArticle1", no);
	}
	
	@Override
	public MemberInfo idCheck1(String id) throws Exception{
		return sqlSession1.selectOne(ns + "idCheck1", id);
	}
	

}