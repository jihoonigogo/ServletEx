<%@page import="com.bit.servlet.dao.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
    <%
   // UserVo authUser = (UserVo)session.getAttribute("authUser");
    %>
  
 <ul> 
 	<%--
 	if(authUser == null){ --%>
 	
 	<c:choose>
 	<c:when test="${empty authUser}">
 	<!--  c:url은 명시적으로 contextpath를 찾지 않아도 자동으로 붙여준다. -->
 		<li> <a href="<c:url value="/user?a=loginform"/>로그인</a><li>
        <li> <a href="<c:url value="/user?a=joinform"/>회원가입</a></li>
   </c:when>
   <%-- } else{ --%>
   <c:otherwise>
   <li>${sessionScope.authUser.name } 님 환영합니다 </li>
   <li><a href="<c:url value="/user?a=logout"/>로그아웃</a>   </li>
</c:otherwise>
</c:choose>
   <%-- }--%>
   
       </ul>