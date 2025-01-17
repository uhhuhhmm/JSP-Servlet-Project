package com.j.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.j.dao.MemberDAO;
import com.j.dto.MemberVO;

@WebServlet("/delete.do")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		
		MemberVO mVo = new MemberVO();
		
		mVo.setUserid(userid);
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		mDao.deleteMember(mVo);
		
		HttpSession session = request.getSession();
		session.invalidate();
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
//		dispatcher.forward(request, response);
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
