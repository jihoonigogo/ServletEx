package com.bit.servlet.dao;

public interface UserDao {

	//구현할 메서드 
	public int insert(UserVo vo); // 사용자 가입처리
	public UserVo getUserByEmailAndPassword(String email,String password);
}
