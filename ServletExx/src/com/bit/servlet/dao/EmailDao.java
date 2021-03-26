package com.bit.servlet.dao;

import java.util.List;

public interface EmailDao {

	public List<EmailVo> getList(); // select값 받을 거
	public int Insert(EmailVo vo); // 매개변수로 받을거임
	public int Delete(Long no); //pk값하나로 지울거니깐
}
