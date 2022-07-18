package com.go.myapp.repo;

import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.go.myapp.dto.MemberInfo;

@Repository
public class MemberDaoImpl implements MemberDao {

	String ns = "login.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void potal2(MemberInfo member) throws SQLException {
		sqlSession.update(ns +"potal2", member);
	}


	@Override
	public void addMember(MemberInfo member) throws SQLException {
		sqlSession.insert(ns + "addMember", member);
	}

	@Override
	public MemberInfo checkMember(Map<String, String> map) {
		return sqlSession.selectOne(ns + "checkMember", map);
	}

	@Override
	public void updateMember(MemberInfo member) throws SQLException {
		sqlSession.update(ns + "updateMember", member);
	}
	
	@Override
	public void remove(MemberInfo member) throws SQLException {
		sqlSession.delete(ns + "remove", member);
	}
	
	@Override
	public void potal(MemberInfo member) throws Exception{
		sqlSession.insert(ns +"potal", member);
	}

	
	@Override
	public MemberInfo idCheck(String id) throws Exception{
		return sqlSession.selectOne(ns + "idCheck", id);
	}
	
	public MemberInfo findPassword(MemberInfo member) throws Exception {
		System.out.println("==> Mybatis로 findPassword() 기능 처리");
		return sqlSession.selectOne(ns + "findPassword", member);
	}


}
