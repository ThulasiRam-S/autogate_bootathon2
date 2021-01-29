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
	    serv.updatespstatus(issueid, spid);
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<script src=\"https://code.jquery.com/jquery-2.1.3.min.js\"></script>");
	    out.println("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js\"></script>");
	    out.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css\">");
	    out.println("</head>");
	    out.println("<body> ");
	    out.println("<script>");
	    out.println("setTimeout(function () { ");
	    out.println("swal({");
	    out.println("title: \"Success!\",");
	    out.println("text: \"Service Provider allocated successfully.\",");
	    out.println("type: \"success\",");
	    out.println("confirmButtonText: \"OK\"");
	    out.println("},");
	    out.println("function(isConfirm){");
	    out.println("if (isConfirm) {");
	    out.println("window.location.href = \"IssueDisplaytoAdmin.jsp\";");
	    out.println("}");
	    out.println("}); }, 200);");
	    out.println("</script>");
	    out.println("</body>");
	    out.println("</html>");
	    out.close();
	}
}
