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
	String name = request.getParameter("name");
	if (name == null){
		name = "Anonymous";
	}
	%>
	<p>Welcome, <%= name %>! <p/>
</body>
</html>