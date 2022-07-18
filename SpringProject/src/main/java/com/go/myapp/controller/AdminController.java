package com.go.myapp.controller;

import java.sql.SQLException;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.go.myapp.dto.MemberInfo;
import com.go.myapp.service.AdminService;

// 관리자 
@Controller
public class AdminController {
   
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   
   @Inject
   AdminService adminService;
   
   // 회원목록
   // ur1 pattern mapping
   @RequestMapping(value = "memberList", method = RequestMethod.GET)
   public String memberList(Model model) {
      //controller => service => dao
      List<MemberInfo> list = adminService.memberList();
      model.addAttribute("list", list);
      return "user/memberList";
   }
   
   // 회원 상세정보 조회
   @RequestMapping(value = "viewMember/{id}")
   public String viewMember(@PathVariable String id, Model model) {
      // 회원정보를 model에 저장
      model.addAttribute("dto", adminService.viewMember(id));
      System.out.println("클릭한 아이디 확인 : " + id);
      logger.info("클릭한 아이디 : " + id);
      return "user/AdminDetail";
   }
   
   // 회원 정보 수정 처리
   @RequestMapping("updateMember")
   public String updateMember1(@ModelAttribute MemberInfo member, Model model) {
      // 비밀번호 체크
      boolean result = adminService.checkPw(member.getId(), member.getPassword());
      if(result) { // 비밀번호가 일치하면 수정 처리후, 전체 회원 목록으로 리다이렉트
         adminService.updateMember1(member);
         return "redirect:/memberList";
      } else { // 비밀번호가 일치하지 않는다변 ,div에 불일치 문구 출력, AdminDetail.jsp 포워드
    	 MemberInfo vo2 = adminService.viewMember(member.getId());
         model.addAttribute("dto", member);
         model.addAttribute("message", "비밀번호 불일치");
         return "user/AdminDetail";
      }
   }
   
   // 회원정보삭제
   @RequestMapping("deleteMember")
   public String deleteMember(@RequestParam String id, @RequestParam String password, Model model) {
      // 비밀번호 체크
      boolean result = adminService.checkPw(id, password);
      if(result) {
         adminService.deleteMember(id);
         return "redirect:/memberList";
         } else {
            model.addAttribute("message", "비밀번호 불일치");
            model.addAttribute("dto", adminService.viewMember(id));
            return "user/AdminDetail";
         }
      
   }   
}