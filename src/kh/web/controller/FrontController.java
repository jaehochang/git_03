package kh.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FrontController() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();

		System.out.println("RequestURI : " + requestURI);
		System.out.println("ContextPath : " + contextPath);

		String command = requestURI.substring(contextPath.length()); // output.bo를 얻어옴

		System.out.println(command); // 실제 커맨드를 얻어옴

		MessagesDAO dao = new MessagesDAO();
		boolean isRedirect = true;
		String dst = null; 
		if (command.equals("/output.do")) {
			List<MessagesDTO> result = dao.getAllData();
			request.setAttribute("result", result);
			isRedirect = false;
			dst = "outputView.jsp";
			
		} else if (command.equals("/input.do")) {
			String name = request.getParameter("name");
			String msg = request.getParameter("msg");
			System.out.println(name);
			System.out.println(msg);
			int result = dao.insertInfo(name, msg);
			request.setAttribute("result", result);
			isRedirect = false;
			dst = "inputView.jsp";
		}

		if (isRedirect == false) {
			RequestDispatcher rd = request.getRequestDispatcher(dst);
			rd.forward(request, response);
		} else {
			response.sendRedirect(dst);
		}
		// redirect를 해야할때 request를 하면 참사가 난다.

	} catch(Exception e) {
		e.printStackTrace();
		response.sendRedirect("error.html");
	}
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
