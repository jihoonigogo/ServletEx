<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  다른 페이지의 파일을 포함하기 , 별도의 서블릿이 아닌 함께 컴파일 -->
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
       <h1>Hello Web World</h1>
      
       <h3>Static HTML Page</h3>
         
       <h5>와이파이</h5>
       
       <!--  jsp 인클루드는 jsp에 포함하여 컴파일 하는 것이 아닌 별도의 서블릿or jsp에 요청 전달 -->
     <jsp:include page="/WEB-INF/views/includes/nav.jsp" />

       
       
       
       <p> 이것은 정적 HTML로 작성된 페이지입니다</p>
      <!-- img 태그 : 그림 삽입 -->
      <!-- stylesheet기능을 이용해서 꾸민다 
       <img src="images/2017428-13042069.jpg" 
       width =320
       height= 240
       alt="여행" />
       -->
      <!-- a태그 : 페이지 링크  -->
      
      <p>
      <h3> GET 전송 연습</h3>
      <a href="hello.jsp?name=Servlet">JSP 호출(GET 방식)</a>
	
	<p>
		<a href="hs?name=Servlet">Servlet 호출(GET 방식)</a>
	</p>
  
      <h3> post 전송연습</h3>
      <!--  
      action : 이 요청을 처리할 url
      method : 요청의 전송 방식 (get or post) -->
      <form action= "hs"
      method = "post">
      <label for="last_name">성(Family Name)</label>
      <input type = "text" id = "last_name" name = "last_name">
      <br/>
      
      <label for="first_name"> 이름(First Name)</label>
      <input type = "text" id ="first_name" name="first_name">
      <br/>
      <!--  input태그에 있는 name속성으로 데이터가 전송된다. -->
      <input type = "submit" value ="전송"/>
      </form>
      
      <h3> 테이블 연습</h3>
      <p>
      <a href="table.html">테이블 연습</a>
      </p>
      
      <h3> 라이프사이클확인</h3>
      <P>
      <a href="life">라이프사이클 로그 확인</a>
      </P>
      
      <h3> 웹 어플리케이션 모델 1 연습</h3>
      <p> 
      <a href="emaillist/index.jsp"> 이메일리스트</a>
      </p>
      
      <h3> 웹어플리케이션 모델2 연습(MVC)	</h3>
      <p>
     			 <a href="el">이메일리스트(MVC)</a> </p>
     			 
     			 <h3> Cookie test</h3>
     			 <p>
		<a href="<%= request.getContextPath() %>/cookies">쿠키 테스트</a>	</p>
     			 <%@ include file="/WEB-INF/views/includes/footer.jsp" %>