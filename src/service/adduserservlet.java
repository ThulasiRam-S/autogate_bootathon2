package service;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/adduserservlet")
public class adduserservlet extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		 adduser au = new adduser();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	    String address = request.getParameter("address");
	    String phone = request.getParameter("phoneno");
	    String city = request.getParameter("city");
	    String email = request.getParameter("emailid");
	    
	    System.out.println(username);
	    System.out.println(password);
	    
	    
		String result1 = au.checkWheatherSameUser(username);
		if(result1.equals("Valid")){
			String result2 = au.spdatas(username,password,address, phone, city, email);
			
			if(result2.equals("Inserted Sucessfully")){
				System.out.println("Done");
				RequestDispatcher rd = request.getRequestDispatcher("/userSignUpSucessful.html");
				rd.forward(request,response);
			}
			else{
				System.out.println("No");
				RequestDispatcher rd = request.getRequestDispatcher("/userSignUpUnsucess.html");
				rd.forward(request,response);
			}
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("/userSignUpUnsucess.html");
			rd.forward(request, response);
		}
	}
		
}
