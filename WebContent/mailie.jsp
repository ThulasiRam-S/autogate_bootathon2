<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="products.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.servlet.*" %>
     <%@ page import="javax.servlet.annotation.WebServlet" %>
      <%@ page import="javax.servlet.http.*" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="inquiry.css" />
<script src=”https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js”></script>
<script src=”https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js”></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="spinner-border" role="status">
  <span class="sr-only">Loading...</span>
</div>
<%


        response.setContentType("text/html;charset=UTF-8");
       
      
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
    
		




%>
</body>
</html>