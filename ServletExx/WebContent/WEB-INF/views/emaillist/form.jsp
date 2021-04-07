<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 리스트 : 가입 폼</title>
</head>
<script>
function validateForm(){
	//폼 객체 받아오기 
	//var frm = document.form['resistForm'];
	var frm = document.registForm;
	if(frm.last_name.value.trim().length ==0){
		//입력된 값 없음
		alert("성이 입력되지 않았습니다");
		frm.last_name.focus();
		return false;
	}
	if(frm.first_name.value.trim().length ==0){
		alert("이름을 입력해주세요");
		frm.first_name.focus();
		return false;
	}
	if(frm.email.value.trim().length ==0){
		alert("이메일을 입력해주세요");
		frm.email.focus();
		return false;
	}
	return false;
}
</script>
<body>
	
	<h1> 메일링 리스트 가입(모델2)</h1>
	<p> 메일링 리스트에 가입하려면 아래 항목을 기입하고<br/>
	등록 버튼을 눌러 주세요 </p>
	
	<form name="registForm" action=<c:url value="/el"/>
	method= "POST" onsubmit="return validateForm()">
	<input type="hidden" name="action" value="insert" /> <!--  숨은데이터 -->
		<label for="last_name"> 성</label>
		<input type ="text" name="last_name" id="last_name"/>
		<br/>
		<label for= "first_name">이름</label>
		<input type="text" name="first-name" id = "first_name"/>
		<br/>
		<label for= "email">이메일</label>
		<Input type="text" name= "email" id="email"/>
		
		<input type = "submit" value ="등록"/>
		
	</form>
	<p>
	<a href ="index.jsp">목록	</a>	
	</p>



</body>
</html>