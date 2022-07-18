package com.go.myapp.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.go.myapp.dto.Board1;
import com.go.myapp.service.BoardService1;

@Controller
public class BoardController1 {

	@Autowired
	private BoardService1 boardService1;

	// 게시글 조회
	@RequestMapping(value = "boardMain1", method = RequestMethod.GET)
	public String showAll(Model model1, Board1 board1) throws SQLException {
		model1.addAttribute("allArticle1", boardService1.searchAll1(board1));
		return "board/board1";
	}
	
	
	// 게시글 상세
	@RequestMapping(value = "/articledetail1/{no}")
	public String detail(@PathVariable int no, Model model1) throws SQLException {
		model1.addAttribute("detail1", boardService1.boardDetail1(no));
		return "board/boardDetail1";
	}
	
	  @RequestMapping(value = "/updated1", method = RequestMethod.POST)
	  public String update(@ModelAttribute Board1 board1) throws SQLException {
	     System.out.println(board1.getNo());
	     System.out.println(board1.getAge());
	     boardService1.updates1(board1);
	     return "redirect:/boardMain1";
	  }
	
	

	
	// 게시글 등록 페이지 
	@RequestMapping(value = "/goCreate1")
	public String goCreate() {
		return "board/boardCreate1";
	}

	// 게시글 등록
	@RequestMapping(value = "create1", method = RequestMethod.POST)
	public String created(@ModelAttribute Board1 board1) throws SQLException {
		int no = boardService1.countArticle1();
		board1.setNo(no + 1);
		System.out.println(no + 1);
		// 날짜 포맷팅 해야함.
		boardService1.create1(board1);
		return "redirect:/boardMain1";

	}
	
	// 게시글 삭제
	@RequestMapping(value="/deleted1", method = RequestMethod.GET)
	public String deleted1(int no) throws Exception{
		boardService1.deleted1(no);
		return "redirect:/boardMain1";
	}
}
