package products;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Getinfo")
public class Getinfo extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
      
        String to = "18euit136@skcet.ac.in";
        String subject = "Secure Gate Automation";
        String user = request.getParameter("email");
        String pass = request.getParameter("password");
        String message =  request.getParameter("message");
       
        SendMail.send(to,subject, message, user, pass);
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
	    out.println("text: \"Mail sent successfully.\",");
	    out.println("type: \"success\",");
	    out.println("confirmButtonText: \"OK\"");
	    out.println("},");
	    out.println("function(isConfirm){");
	    out.println("if (isConfirm) {");
	    out.println("window.location.href = \"products.jsp\";");
	    out.println("}");
	    out.println("}); }, 200);");
	    out.println("</script>");
	    out.println("</body>");
	    out.println("</html>");
    }   
}