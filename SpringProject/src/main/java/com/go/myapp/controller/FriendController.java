package com.go.myapp.controller;


import java.util.ArrayList;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.go.myapp.repo.FriendRepository;
import com.go.myapp.service.BoardService1;


@Controller
public class FriendController {

   private static final Logger logger = LoggerFactory.getLogger(FriendController.class);
   
   @Autowired
   private BoardService1 boardService1;

   @Inject
   FriendRepository fRepository;

   @Inject
   HttpSession session;

   // 친구 신청
   @RequestMapping(value = "/friendRequest/{no}", method = {RequestMethod.GET, RequestMethod.POST })
   public String friendRequest(String friend, String kakaoid,String friend_kakaoid, Model model, HttpServletRequest req) {
      String id = req.getParameter("id");
      String checkRelationship = fRepository.getStatus(id, friend);
      if (checkRelationship == null) {
         int result = fRepository.friendRequest(id, friend,  kakaoid, friend_kakaoid);
         System.out.println("친구 추가: " + result);
      } else if (checkRelationship.equals("request")) {
         model.addAttribute("requestResult", "You already sended a request to " + friend);
      } else if (checkRelationship.equals("friend")) {
         model.addAttribute("requestResult", "You and " + friend + " are already friend");
      }
      return "redirect:/boardMain1";
   }
   
   // 수락 신청 목록
   @RequestMapping(value = "/management", method = {RequestMethod.GET, RequestMethod.POST})
   public String management(Model model, HttpServletRequest req) {
      String id = req.getParameter("id");
      ArrayList<String> friends = fRepository.getList(id);
      model.addAttribute("friends", friends);
      ArrayList<String> request = fRepository.getRequestList(id);
      model.addAttribute("request", request);
      logger.info("friends: " + friends.size() + " , request: " + request.size());
      return "board/management";
   }
   
   // 받은 신청 목록
   @RequestMapping(value = "/myfriend", method = {RequestMethod.GET, RequestMethod.POST})
   public String myfriend(Model model, HttpServletRequest req) {
      String id = req.getParameter("id");
      ArrayList<String> friends = fRepository.getList(id);
      model.addAttribute("friends", friends);
      ArrayList<String> request = fRepository.getRequestList(id);
      model.addAttribute("request", request);
      String friend_kakaoid = fRepository.getfriend_kakaoid(id);
      model.addAttribute("friend_kakaoid", friend_kakaoid);
      logger.info("friends: " + friends.size() + " , request: " + request.size());
      return "board/myfriend";
   }

   // 수락하기
   @RequestMapping(value = "/accept", method = {RequestMethod.GET, RequestMethod.POST })
   public String accept(String friend, HttpServletRequest req) {
      String id = req.getParameter("id");
      int result = fRepository.accept(id, friend);
      int numofFriendRequest = fRepository.numofFriendRequest(id);
      session.setAttribute("numofFriendRequest", numofFriendRequest);
      
      logger.info("친구 수락 결과: " + numofFriendRequest);
      return "board/management";
   }
   
   // 제거하기
   @RequestMapping(value = "/remove", method = {RequestMethod.GET, RequestMethod.POST })
   public String remove(String friend, HttpServletRequest req) {
      String id = req.getParameter("id");
      int result = fRepository.remove(id, friend);
      
      logger.info("친삭 결과: " + result);
      int numofFriendRequest = fRepository.numofFriendRequest(id);
      session.setAttribute("numofFriendRequest", numofFriendRequest);
      return "board/management";
   }
}