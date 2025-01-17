package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트에게 응답할 페이지 정보를 셋팅한다.
		response.setContentType("text/html; charset=UTF-8");
		// [Ctrl+Shift+오우(알파벳)] : 자동 import
		PrintWriter out=response.getWriter();
		out.print("<html><body><h1>");
		out.print("Hello Servlet");
		out.print(" 헬로우 서블릿");
		out.print("</h1></body></html>");
		out.close();
	}

}
