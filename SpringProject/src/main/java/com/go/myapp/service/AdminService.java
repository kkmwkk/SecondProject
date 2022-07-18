package com.go.myapp.service;

import java.util.List;

import com.go.myapp.dto.MemberInfo;

public interface AdminService {
   
   // 회원 목록
   public List<MemberInfo> memberList();
   
   // 회원 정보 상세보기
   public MemberInfo viewMember(String id);
   
   // 회원삭제
   public void deleteMember(String id);
   
   //회원정보 수정
   public void updateMember1(MemberInfo member);
   
   public boolean checkPw(String id, String password);

}