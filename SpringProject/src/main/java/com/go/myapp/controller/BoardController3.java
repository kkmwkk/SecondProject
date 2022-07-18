package com.go.myapp.controller;

import java.sql.SQLException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.go.myapp.dto.Board3;
import com.go.myapp.service.BoardService3;

@Controller
public class BoardController3 {

	@Autowired
	private BoardService3 boardService3;

	// 게시글 조회
	@RequestMapping(value = "boardMain3", method = RequestMethod.GET)
	public String showAll(Model model3, Board3 board3) throws SQLException {
		model3.addAttribute("allArticle3", boardService3.searchAll3(board3));
		return "board/board3";
	}

	@RequestMapping(value = "/articledetail3/{no}")
	public String detail(@PathVariable int no, Model model2) throws SQLException {
		model2.addAttribute("detail3", boardService3.boardDetail3(no));
		return "board/boardDetail3";
	}

	@RequestMapping(value = "/updated3", method = RequestMethod.POST)
	public String update(@ModelAttribute Board3 board3) throws SQLException {
		System.out.println(board3.getNo());
		System.out.println(board3.getAge());
		boardService3.updates3(board3);
		return "redirect:/boardMain3";
	}

	@RequestMapping(value = "/goCreate3")
	public String goCreate() {
		return "board/boardCreate3";
	}

	@RequestMapping(value = "/create3", method = RequestMethod.POST)
	public String created(@ModelAttribute Board3 board3) throws SQLException {
		int no = boardService3.countArticle3();
		board3.setNo(no + 1);
		System.out.println(no + 1);
		// 날짜 포맷팅 해야함.
		boardService3.create3(board3);
		return "redirect:/boardMain3";

	}
	
	@RequestMapping(value="deleted3", method = RequestMethod.GET)
	public String deleted1(int no) throws Exception{
		boardService3.deleted3(no);
		return "redirect:/boardMain3";
	}

}
