package com.j.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.j.dao.BoardDAO;
import com.j.dto.BoardVO;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardVO bVo = new BoardVO();
		
		bVo.setName(request.getParameter("name"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo);
		
		response.sendRedirect("BoardServlet?command=board_list");
//		new BoardListAction().execute(request, response);
		
	}
	
}
