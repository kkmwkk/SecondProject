package com.go.myapp.repo;

import java.util.List;

import com.go.myapp.dto.MemberInfo;

public interface AdminDao {
   
   // 회원목록
   public List<MemberInfo> memberList();
   
   // 회원 정보 상세보기
   public MemberInfo viewMember(String id);
   
   //회원 삭제
   public void delteMember(String id);
   
   // 회원 수정
   public void updateMember1(MemberInfo vo);
   
   public boolean checkPw(String id, String password);

}