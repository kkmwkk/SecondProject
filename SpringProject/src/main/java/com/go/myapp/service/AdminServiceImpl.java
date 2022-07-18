package com.go.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.go.myapp.dto.MemberInfo;
import com.go.myapp.repo.AdminDaoImpl;

@Service
public class AdminServiceImpl implements AdminService {
   
   @Inject
   AdminDaoImpl admindao;
   
   @Override
   public List<MemberInfo> memberList(){
      return admindao.memberList();
   }

   @Override
   public MemberInfo viewMember(String id) {
      return admindao.viewMember(id);
   }

   @Override
   public void deleteMember(String id) {
      admindao.delteMember(id);
      
   }

   @Override
   public void updateMember1(MemberInfo member) {
      admindao.updateMember1(member);
      
   }

   @Override
   public boolean checkPw(String id, String password) {
      
      return admindao.checkPw(id, password);
   }


}