package products;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/Modelname")
public class Modelname extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
      response.setContentType("text/html");
      PrintWriter out=response.getWriter();

      
      try
      {
    	  
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/miniproject\",\"root\",\"");
        Statement pst=con.createStatement();
        ResultSet rst=pst.executeQuery("SELECT model_name from sliding_gate where mid=1");
        
       
        while(rst.next())
        {
        	
            out.println(rst.getString("model_name"));
            out.println(rst.getString("model_name"));
           
        }
      } 
      catch(Exception e)
      {
           System.out.println("     "+e);
      }
      out.close();
    }
}
