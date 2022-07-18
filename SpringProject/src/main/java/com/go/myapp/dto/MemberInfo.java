package com.go.myapp.dto;

public class MemberInfo {

	/** 아이디 */
	private String id;
	/** 비번 */
	private String password;
	/** 이름 */
	private String name;
	/** 내 상태 */
	private String id_status;
	/** 상대방 */
	private String friend;
	/** 상대방상태 */
	private String friend_status;
	/** 성별 */
	private String sex;
	/** 카카오아이디 */
	private String kakaoid;
	
	private int verify;
	
	
	
	public int getVerify() {
		return verify;
	}

	public void setVerify(int verify) {
		this.verify = verify;
	}

	public String getKakaoid() {
		return kakaoid;
	}

	public void setKakaoid(String kakaoid) {
		this.kakaoid = kakaoid;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	/** 기존에 있던거 */
	
	public String getCus_status() {
		return id_status;
	}

	public void setCus_status(String id_status) {
		this.id_status = id_status;
	}

	public String getFriend_id() {
		return friend;
	}

	public void setFriend_id(String friend) {
		this.friend = friend;
	}

	public String getFriend_status() {
		return friend_status;
	}

	public void setFriend_status(String friend_status) {
		this.friend_status = friend_status;
	}

	

	

	@Override
	public String toString() {
		return "MemberInfo [id=" + id + ", password=" + password + ", name=" + name + ", id_status=" + id_status + ", friend=" + friend + ", friend_status=" + friend_status + "]";
	}

}
