<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Hello JSP</title>
</head>
<body>
	<h1>Hello JSP</h1>
	<%
	String name = request.getParameter("name"); // 파라미터를 받아올수있다. 
	if (name == null){
		name = "Anonymous";
	} 
	//자바코드를 통해 동적 html을 구성할 수 있고
	//이를 정적 html 상태로 브라우저에 전달하여 해석, 객체화 
	%>
	<p>Welcome, <%= name %>! <p/>
</body>
</html>

