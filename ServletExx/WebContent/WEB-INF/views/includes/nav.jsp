<%@page import="com.bit.servlet.dao.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    UserVo authUser = (UserVo)session.getAttribute("authUser");%>
 <ul> 
 	<% if(authUser == null){ %>
 		<li> <a href="<%= request.getContextPath() %>/users?a=loginform">로그인</a><li>
        <li> <a href="<%= request.getContextPath() %>/users?a=joinform"> 회원가입</a></li>
   <% } else{ %>
   <li>${sessionScope.authUser.name } 님 환영합니다 </li>
   <li><a href="<%= request.getContextPath() %>/users?a=logout">로그아웃</a>
   <% }%>
       </ul>