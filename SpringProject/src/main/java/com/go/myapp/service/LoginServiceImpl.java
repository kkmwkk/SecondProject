package com.go.myapp.service;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.go.myapp.dto.MemberInfo;
import com.go.myapp.repo.MemberDao;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private MemberDao memberDAO;

	@Override
	@Transactional
	public void addMember(MemberInfo member) throws SQLException {
		memberDAO.addMember(member);
	}

	@Override
	public MemberInfo checkMember(Map<String, String> map) throws SQLException {
		return memberDAO.checkMember(map);
	}
	
	@Override
	@Transactional
	public void potal2(MemberInfo member) throws SQLException {
		memberDAO.potal2(member);
	}


	@Override
	public void updateMember(MemberInfo member) throws SQLException {
		memberDAO.updateMember(member);
		
	}
	
	@Override
	public void potal(MemberInfo member) throws Exception{
		memberDAO.potal(member);
	}

	
	@Override
	public void remove(MemberInfo member) throws SQLException {
		memberDAO.remove(member);
		
	}
	
	//아이디 확인
		@Override
		public MemberInfo idCheck(String id) throws Exception{
			return memberDAO.idCheck(id);
		}
		
		@Override
		public MemberInfo findPassword(MemberInfo member) throws Exception {
			return memberDAO.findPassword(member);
		}

}
