package com.go.myapp.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.go.myapp.dto.MemberInfo;

@Repository
public class AdminDaoImpl implements AdminDao{
   
   @Inject
   SqlSession sqlSession;
   
   @Override
   public List<MemberInfo> memberList(){
      return sqlSession.selectList("memberList");
   }

   @Override
   public MemberInfo viewMember(String id) {
      return sqlSession.selectOne("viewMember", id);
   }

   @Override
   public void delteMember(String id) {
      sqlSession.delete("deleteMember",id);
      
   }

   @Override
   public void updateMember1(MemberInfo vo) {
      sqlSession.update("updateMember1", vo);
      
   }

   @Override
   public boolean checkPw(String id, String password) {
      boolean result = false;
      Map<String, String> map = new HashMap<String, String>();
      map.put("id", id);
      map.put("password", password);
      int count = sqlSession.selectOne("checkPw", map);
      if(count == 1) result = true;
      return result;
   }

}