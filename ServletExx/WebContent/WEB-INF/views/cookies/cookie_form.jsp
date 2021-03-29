<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //서블릿에서 넘어온 example cookieVal 객체 확인 
    String cookieValue = (String)request.getAttribute("example");
    System.out.println("Cookie value" + cookieValue); // 쿠키가 없다면 null이 올것.
    if(cookieValue == null){
    	cookieValue ="";
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie test</title>
</head>
<body>

	<h1> Cookie Test Form</h1>
	<h3> add/Edit Cookie</h3>
	<form method="POST"
	action = " <%= request.getContextPath()  %>/cookies">
	<label for = "example"> Cookie Value	</label>
	<Input type ="text" name="example" id = "example" value ="<%= cookieValue %>">
	<input type="submit" value ="쿠기 설정"/>
	
	
	<h4> delete cookie</h4>
	<p>
	<a href="<%= request.getContextPath() %>/cookies?a=delete">쿠키삭제</a>
	</form>
</body>
</html>