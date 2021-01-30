package service;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/serviceproviderloginServlet")
public class serviceproviderloginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		serviceproviderlogin spl = new serviceproviderlogin();
		
		String username = request.getParameter("username");
		String password =request.getParameter("password");
		
		String result=spl.validateServiceprovider(username, password);
		//int flag=0;
		int userid= spl.userIdSP(username, password);
		System.out.print(userid+"userid");
		
		if(result.equals("Sucess")){
			HttpSession se = request.getSession(true);
			se.setAttribute("userIdSp",userid);
			System.out.println("Done");
			RequestDispatcher rd = request.getRequestDispatcher("/serviceproviderLoginSucess.html");
			rd.forward(request,response);			
		}
		else{
			System.out.println("No");
			RequestDispatcher rd = request.getRequestDispatcher("/serviceproviderLoginUnsucess.html");
			rd.forward(request,response);
		}
		
	}
}

