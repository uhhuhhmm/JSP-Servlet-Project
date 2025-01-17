package com.j.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload2.do")
public class UploadServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter();
			
			HashMap<String, String> map = new HashMap<String, String>();
			
			String savePath = "upload";
			int uploadFileSizeLimit = 5 * 1024 * 1024;
			String encType = "UTF-8";
			
			ServletContext context = getServletContext();
			String uploadFilePath = context.getRealPath(savePath);
			
			try {
				MultipartRequest multi = new MultipartRequest(
						request,
						uploadFilePath,
						uploadFileSizeLimit,
						encType,
						new DefaultFileRenamePolicy());
				Enumeration files = multi.getFileNames();
				while (files.hasMoreElements()) {
					String file = (String) files.nextElement();
					String file_name = multi.getFilesystemName(file);
					// 중복된 파일을 업로드할 경우 파일명이 바뀐다.
					String ori_file_name = multi.getOriginalFileName(file);
//					out.print("<br> 업로드된 파일명 : " + file_name);
//					out.print("<br> 원본 파일명 : " + ori_file_name);
//					out.print("<hr>");
					
					map.put(file_name, ori_file_name);
				}	
				request.setAttribute("map", map);
			}catch (Exception e) {
				System.out.println("예외 발생 : " + e);
			} // catch
			
			RequestDispatcher rd = request.getRequestDispatcher("fileList.jsp");
			rd.forward(request, response);
			
			
	}

}
