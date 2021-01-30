package service;

import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
import java.sql.*;  
    
public class tableServlet extends HttpServlet  
{    
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
      {  
         PrintWriter out = res.getWriter();  
         res.setContentType("text/html");  
         out.println("<html><body>");  
         try 
         {  
        	 Class.forName("com.mysql.jdbc.Driver");
     		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
     		con.setAutoCommit(true);
     		Statement st=con.createStatement();
     		 
             ResultSet rs = st.executeQuery("select * from serviceprovider where spworkstatus=0");  
             out.println("<table border=1 width=50% height=50%>");  
             out.println("<tr><th>Username</th><th>Name</th><th>City</th>><th>PhoneNo.</th><tr>");  
             while (rs.next()) 
             {  
                 String sun = rs.getString("spusername");  
                 String sn = rs.getString("spname");  
                 String sc = rs.getString("spcity");
                 String sp = rs.getString("spphone");
                 out.println("<tr><td>" + sun + "</td><td>" + sn + "</td><td>" + sc + "</td><td>" + sp + "</td></tr>");   
             }  
             out.println("</table>");  
             out.println("</html></body>");  
             con.close();  
            }  
             catch (Exception e) 
            {  
             out.println("error"+e.getMessage());  
         }  
     }  
 } 