package service;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		adminValidate adminValidation = new adminValidate();
		
		String username = request.getParameter("username");
		String password =request.getParameter("password");
		
		String result=adminValidation.validate(username, password);
		
		if(result.equals("Sucess")){
			RequestDispatcher rd = request.getRequestDispatcher("/adminLoginSucess.html");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("/adminLoginUnsucess.html");
			rd.forward(request, response);
		}
		
	}
}
