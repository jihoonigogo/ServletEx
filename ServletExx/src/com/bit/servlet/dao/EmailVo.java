package com.bit.servlet.dao;

import java.util.Date;

public class EmailVo {
	//필드생성
	private Long no; //pk
	private String lastName;
	private String firstName;
	private String email;
	private Date createAt;
	

	//생성자
	//VO에는 기본 생성자가 반드시 있어야함
	public EmailVo () {
		
	}
	public EmailVo (String lastName,String firstName,String email) {
		this.lastName=lastName;
		this.firstName=firstName;
		this.email = email;
		
	}
	
	public EmailVo (String lastName, String firstName,String email,Date createAt) {
		this(lastName,firstName,email);
		this.createAt=createAt;
	}
	
	public EmailVo (Long no,String lastName, String firstName,String email,Date createAt) {
		this(lastName,firstName,email,createAt);
		this.no=no;	
	}
	
	//getter setter
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	
	//toString
	@Override
	public String toString() {
		return "EmailVo [no=" + no + ", lastName=" + lastName + ", firstName=" + firstName + ", email=" + email
				+ ", createAt=" + createAt + "]";
	}
	
	
}
