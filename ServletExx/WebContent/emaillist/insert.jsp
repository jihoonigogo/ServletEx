<%@page import="com.bit.servlet.dao.EmailDao"%>
<%@page import="com.bit.servlet.dao.EmailDaoOrclImpl"%>
<%@page import="com.bit.servlet.dao.EmailVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 요청 파라미터 받기 
String lastName = request.getParameter("last_name");
String firstName = request.getParameter("first_name");
String email = request.getParameter("email");

// VO 객체 만들기 ?
		
	EmailVo  vo = new EmailVo(lastName,firstName,email);
	EmailDao dao = new EmailDaoOrclImpl();
	
	dao.Insert(vo);

	//리스트페이지로 돌려보내기 : 302에서 리다이렉트
	response.sendRedirect(request.getContextPath() + "/emaillist/");
	//우리가 요청하는 페이지의 context path는 서버환경 ,서버 설정에 따라서 유동적으로 변화할수있음.
	//동적으로 context path를 확인해야한다 ?
%>