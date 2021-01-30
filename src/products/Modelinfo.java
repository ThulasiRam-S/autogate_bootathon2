package products;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Modelinfo")
public class Modelinfo extends HttpServlet {
	 public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
	    {
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        ServletContext context=getServletContext();  
	        context.setAttribute("id","1");  
	        
	        RequestDispatcher rd = request.getRequestDispatcher("/Modelname");
	          rd.forward(request, response);
	        out.close();
	    }
}