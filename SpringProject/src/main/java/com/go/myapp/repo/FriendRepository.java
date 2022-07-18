package com.go.myapp.repo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.go.myapp.dto.MemberInfo;
import com.go.myapp.repo.FriendDAO;


@Repository
public class FriendRepository {
	@Inject
	private SqlSession sqlSession;

	FriendDAO fdao;



	public int friendRequest(String id, String friend, String kakaoid, String friend_kakaoid) {
		Map<String, String> request = new HashMap();
		request.put("id", id);
		request.put("friend", friend);
		request.put("kakaoid", kakaoid);
		request.put("friend_kakaoid", friend_kakaoid);
		
		fdao = sqlSession.getMapper(FriendDAO.class);
		int result = 0;
		try {
			result = fdao.friendRequest(request);
			fdao.friendRequestFriend(request);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String getStatus(String id, String friend) {
		fdao = sqlSession.getMapper(FriendDAO.class);
		String result = "";
		Map<String, String> search = new HashMap();
		search.put("id", id);
		search.put("friend", friend);
		try {
			result = fdao.getStatus(search);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<String> getList(String id) {
		fdao = sqlSession.getMapper(FriendDAO.class);
		ArrayList<String> result = new ArrayList();
		try {
			result = fdao.getList(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<String> getRequestList(String id) {
		fdao = sqlSession.getMapper(FriendDAO.class);
		ArrayList<String> result = new ArrayList();
		try {
			result = fdao.getRequestList(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public String getfriend_kakaoid(String friend_kakaoid) {
		fdao = sqlSession.getMapper(FriendDAO.class);
		String result = "";
		try {
			result = fdao.getfriend_kakaoid(friend_kakaoid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public int accept(String id, String friend) {
		fdao = sqlSession.getMapper(FriendDAO.class);
		int result = 0;
		Map<String, String> accept = new HashMap();
		accept.put("id",id);
		accept.put("friend", friend);
		try {
			result = fdao.accept(accept);
			fdao.acceptFriend(accept);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public int remove(String id, String friend) {
		fdao = sqlSession.getMapper(FriendDAO.class);
		int result = 0;
		Map<String, String> remove = new HashMap();
		remove.put("id", id);
		remove.put("friend", friend);
		try {
			result = fdao.remove(remove);
			fdao.removeFriend(remove);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public int numofFriendRequest(String id) {
		fdao = sqlSession.getMapper(FriendDAO.class);
		int result = 0;
		try {
			result = fdao.numofFriendRequest(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	





}
