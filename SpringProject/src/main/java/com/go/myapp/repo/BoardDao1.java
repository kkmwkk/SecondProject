package com.go.myapp.repo;

import java.sql.SQLException;
import java.util.List;

import com.go.myapp.dto.Board1;
import com.go.myapp.dto.MemberInfo;

public interface BoardDao1 {

	public List<Board1> searchAll1(Board1 board1) throws SQLException;

	public Board1 boardDeatil1(int no);

	public void updates1(Board1 board1);

	public void create1(Board1 board1);

	public int countArticle1();

	public void deleted1(int no);
	
	
	//아이디 확인
	 public MemberInfo idCheck1(String id) throws Exception;
	

}
