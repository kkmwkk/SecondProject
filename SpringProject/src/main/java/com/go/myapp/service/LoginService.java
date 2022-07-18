package com.go.myapp.service;

import java.sql.SQLException;
import java.util.Map;

import com.go.myapp.dto.MemberInfo;
public interface LoginService {
	
	void potal2(MemberInfo member) throws SQLException;

	void addMember(MemberInfo member) throws SQLException;

	public MemberInfo checkMember(Map<String, String> map) throws SQLException;

	void updateMember(MemberInfo member) throws SQLException;

    void remove(MemberInfo member) throws SQLException;
    
    public void potal(MemberInfo member) throws Exception;
    
  //아이디 확인
    public MemberInfo idCheck(String id) throws Exception;
    
    public MemberInfo findPassword(MemberInfo member) throws Exception;
}
