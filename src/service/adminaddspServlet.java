package service;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/adminaddspServlet")
public class adminaddspServlet extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		 adminaddsp adminadd = new adminaddsp();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
	    String address = request.getParameter("address");
	    String phone = request.getParameter("phoneno");
	    String city = request.getParameter("city");
	    String email = request.getParameter("emailid");
	    
	    
	
		String result2 = adminadd.spdatas(username,password,name, address, phone, city, email);
		
		if(result2.equals("Inserted Sucessfully")){
			String result1 = adminadd.addspdetails(username, password);
			
			if(result1.equals("Inserted Sucessfully")){
				System.out.println("Done");
				RequestDispatcher rd = request.getRequestDispatcher("/serviceproviderSignupSucess.html");
				rd.forward(request,response);
			}
			else{
				System.out.println("No");
				RequestDispatcher rd = request.getRequestDispatcher("/serviceproviderSignupUnsucess.html");
				rd.forward(request,response);
			}
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("/adminaddsp.html");
			rd.forward(request,response); 
		}
	}
}
