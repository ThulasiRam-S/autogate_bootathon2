package service;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/changepasswordServlet")
public class changepasswordServlet extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		changepassword cp = new changepassword();
		
		String username = request.getParameter("username");
		String newpassword =request.getParameter("newpassword");
		
		String result=cp.cngPass(username, newpassword);
		
		if(result.equals("Inserted Sucessfully")){
			System.out.println("Done");
			RequestDispatcher rd = request.getRequestDispatcher("/changePasswordSucess.html");
			rd.forward(request,response);
		}
		else{
			System.out.println("No");
			RequestDispatcher rd = request.getRequestDispatcher("/changePasswordUnsucess.html");
			rd.forward(request,response);
		}
	}
}

