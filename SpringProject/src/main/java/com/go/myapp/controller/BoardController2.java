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

import com.go.myapp.dto.Board2;
import com.go.myapp.service.BoardService2;

@Controller
public class BoardController2 {

	@Autowired
	private BoardService2 boardService2;

	// 게시글 조회
	@RequestMapping(value = "boardMain2", method = RequestMethod.GET)
	public String showAll(Model model2, Board2 board2) throws SQLException {
		model2.addAttribute("allArticle2", boardService2.searchAll2(board2)); // 처음 하우스 리스트에 갔을 때, 모든 거래정보를 가져옴.
		return "board/board2";
	}

	@RequestMapping(value = "/articledetail2/{no}")
	public String detail(@PathVariable int no, Model model2) throws SQLException {
		model2.addAttribute("detail2", boardService2.boardDetail2(no));
		return "board/boardDetail2";
	}

	@RequestMapping(value = "/updated2", method = RequestMethod.POST)
	public String update(@ModelAttribute Board2 board2) throws SQLException {
		System.out.println(board2.getNo());
		System.out.println(board2.getAge());
		boardService2.updates2(board2);
		return "redirect:/boardMain2";
	}

	@RequestMapping(value = "/goCreate2")
	public String goCreate() {
		return "board/boardCreate2";
	}

	@RequestMapping(value = "/create2", method = RequestMethod.POST)
	public String created(@ModelAttribute Board2 board2) throws SQLException {
		int no = boardService2.countArticle2();
		board2.setNo(no + 1);
		System.out.println(no + 1);
		// 날짜 포맷팅 해야함.
		boardService2.create2(board2);
		return "redirect:/boardMain2";

	}
	
	@RequestMapping(value="deleted2", method = RequestMethod.GET)
	public String deleted1(int no) throws Exception{
		boardService2.deleted2(no);
		return "redirect:/boardMain2";
	}

}
