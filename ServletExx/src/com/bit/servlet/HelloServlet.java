package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//가장 기본적인 형태의 servlet
//url-pattern = "/hs" 에 반응함
public class HelloServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//클라이언트에서 name 파라미터 전송 받아서 환영 메세지를 출력 
		//jsp에서는 사용자 요청을 자동으로 .request라는 이름의 객체로 전달해줌 
		//서블릿에서는 인수로 전달된 req값이다.
		String name =req.getParameter("name");
		if(name==null) {
			name = "Anonymous";
		}
		//출력
		//응답 객체에서 Writer를 얻어온다 .
		PrintWriter out = resp.getWriter();
		out.println("<h1> Hello,Servlet</h1>");
		out.println("<p>hello, "+ name +"</p>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//POST 방식 요청을 처리하기 위한 메서드 
		//폼으로부터 전송된 파라미터 받아오기 
		//req.setCharacterEncoding("UTF-8"); // 필터에서 처리하고있음
		String firstName = req.getParameter("first_name"); // req는 요청객체임
		String lastName = req.getParameter("last_name"); 
		
		//응답객체에서 writer 얻어오기
		//resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<h1>Form Date </h1>");
		out.println("<p>성:"+lastName + "</p>");
		out.println("<p>이름:"+firstName + "</p>");
		
		
		
		}

}
