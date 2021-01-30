package service;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/UserTechIssue")
public class TechIssue extends HttpServlet
{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
      response.setContentType("text/html");
      PrintWriter out=response.getWriter();
      HttpSession sess=request.getSession(true);
      int userId;
      Object ob=sess.getAttribute("userIdClient");
      userId=(int)ob;
      System.out.print(userId);
      //int userId=Integer.parseInt(request.getParameter("userId"));
      String issue=request.getParameter("issue");
      ServiceDBProcess setissue=new ServiceDBProcess();
      int completed=setissue.issuetodb(userId, issue);
      if(completed==1)
      {
    	  response.sendRedirect("spallocatenotify.jsp");
      }
    }
}

