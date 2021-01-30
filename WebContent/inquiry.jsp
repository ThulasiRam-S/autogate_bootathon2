<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="daobjects.DBProcess" %>
    <%@ page import="daobjects.DBConnect" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.servlet.*" %>
     <%@ page import="javax.servlet.annotation.WebServlet" %>
      <%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="inquiry.css" />
<script src=”https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js”></script>
<script src=”https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js”></script>
</head>

<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

<body>
<%
try{  
	  
response.setContentType("text/html");  
 
  
ServletContext context=getServletContext();  
String n=(String)context.getAttribute("Name");  
System.out.println(n);
%>  
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">INQUIRY FORM</h5>
            <form  method="post" action="Getinfo">
              <div class="form-label-group">
                <input  name="email" required placeholder="email" class="form-control" >
              </div>
              <div class="form-label-group">
                <input  name="password" type="password" required placeholder="password" class="form-control" >
              </div>
              <div class="form-label-group">
                <textarea style="font-weight: bold;" name="message" rows="5" cols="30" placeholder="model name">
                MODEL NAME:  <%out.println(n); %>
                </textarea>
              </div>
              
              <button ONCLICK="ShowAndHide()" class="btn btn-lg btn-google btn-block text-uppercase" type="submit" >Send</button> 
              
             <div id=”showMe” style="display:none;"> 
    Show me in 5 Seconds. 
</div>    
            </form>
            
          </div>
        </div>
      </div>
    </div>
  </div>
  
 <% 
    

  

    out.close();
}catch(Exception e){out.println(e);}  
 
%>
<SCRIPT>
$( document ).ready(function() {     
	   $('#showMe').delay(5000).show(0);  
	});

</SCRIPT>
</body>
</html>