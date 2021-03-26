<%@page import="com.bit.servlet.dao.EmailDao"%>
<%@page import="com.bit.servlet.dao.EmailDaoOrclImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    //파리미터 받아오기 , getParameter의 값은 항상 String
        Long no = Long.valueOf(request.getParameter("no")); // convert
        EmailDao dao = new EmailDaoOrclImpl();
        
        dao.Delete(no);
        
        //리스트페이지로 리다이렉트
        response.sendRedirect(request.getContextPath()+"/emaillist");
    %>