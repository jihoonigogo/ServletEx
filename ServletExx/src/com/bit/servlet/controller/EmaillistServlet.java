package com.bit.servlet.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.servlet.dao.EmailDao;
import com.bit.servlet.dao.EmailDaoOrclImpl;
import com.bit.servlet.dao.EmailVo;

@WebServlet("/el")//현재 클래스를 /el url에 패턴에 반응하는 서블릿으로 등록한다
//@WebServlet(name="Emaillist", urlpatterns="/el")
// web.xml의 <servlet> , <servlet-mapping>을 등록한 것과 동일 . 편리하다.
public class EmaillistServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			//viewㅓ리를 위한 리퀘스트디스패쳐 확인
		//자신이 처리하는 요청응답을 다른 서블릿으로 이관
		//리스트 
		//등록 폼 : 파라미터에서 a를 확인 분기 ?
		
		String action = req.getParameter("a"); //a파라미터 확인
		
		if("form".equals(action)) {
			//등록폼 파라미터에서 a확인, form이면 분기
			RequestDispatcher rd = 
					getServletContext().getRequestDispatcher("/WEB-INF/views/emaillist/form.jsp");
			rd.forward(req,resp);
		}else if("delete".equals(action)) {
			//파라미터 no를 이용해서 삭제해야함 
			Long no = Long.valueOf(req.getParameter("no"));
			
			EmailDao dao = new EmailDaoOrclImpl();
			dao.Delete(no);
			
			//완료되면 리스트로 리다이렉트
			resp.sendRedirect(req.getContextPath()+ "/el");
		}else { 
			//리스트를 불러와 req에 attribute로추가
			EmailDao dao = new EmailDaoOrclImpl();
			//전달받을 객체  생성
			List<EmailVo> list = dao.getList();
			
			//요청객체에 속성으로 추가
			req.setAttribute("list", list); //전달받은 서블릿은 요청으로부터 이 속성을 꺼내 쓸 수 있다.
			
			//디스패쳐 확보 
		
		RequestDispatcher rd =getServletContext().getRequestDispatcher("/WEB-INF/views/emaillist/index.jsp");
		rd.forward(req, resp);
		}
		 
	
		
		
		
		
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String action = req.getParameter("action"); // 히든 필드 
		
		if("insert".equals(action)) { //액션이 인서트면 삽임해야함;;
			String lastName = req.getParameter("last_name");
			String firstName = req.getParameter("first_name");			
			String email = req.getParameter("email");
			
			EmailVo vo = new EmailVo();
			vo.setLastName(lastName);
			vo.setFirstName(firstName);
			vo.setEmail(email);
			
			EmailDao dao = new EmailDaoOrclImpl();
			dao.Insert(vo);
			
			
			//리스트 페이지로 리다이렉트
			resp.sendRedirect(req.getContextPath()+"/el");
		}else {
			doGet(req,resp);
		}
		
		
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
