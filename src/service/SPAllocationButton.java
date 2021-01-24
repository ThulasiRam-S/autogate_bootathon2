package service;
import service.ServiceDBConnect;
import service.ServiceDBProcess;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/SPAllocationButton")
public class SPAllocationButton extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
	{
		response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    int issueid=0;
	    ServletContext context=getServletContext();  
	    if((context.getAttribute("issueid"))!=null)
	    {
	    	Object ob=context.getAttribute("issueid");
	    	issueid=(int)ob;
	    }
	    int spid=Integer.parseInt(request.getParameter("spdropdown"));
	    ServiceDBProcess serv=new ServiceDBProcess();
	    serv.updatesptoissue(issueid, spid);
	    out.println("Update successfully");
	    serv.updatespstatus(issueid, spid);
	    out.close();
	}
}
