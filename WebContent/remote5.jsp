<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="daobjects.DBProcess" %>
    <%@ page import="daobjects.DBConnect" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.servlet.*" %>
     <%@ page import="javax.servlet.annotation.WebServlet" %>
      <%@ page import="javax.servlet.http.*" %>

<html>
    <head> 
        <link href="singleproduct.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"	>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body >
		<%
response.setContentType("text/html");
		 String s="";
try {
	 Connection con=DBConnect.getCon();
    Statement pst=con.createStatement();
    ResultSet rst=pst.executeQuery("SELECT model_name from remotes where mid=5");
   
%>
<%
    while(rst.next())
    {
    	
       s=rst.getString("model_name");
        
        
       
    }
ServletContext context=getServletContext();  
context.setAttribute("Name",s);  
%>  
	    <div class="menu-bar">
	    	<div class="row">
	    		<div class="logo">
	                <a href="home.html" class="logo" style="text-decoration: none;">Secure Gate Automation</a>
	            </div>
	            <ul class="nav" >
	                <li><a href="accessories.jsp">Back</a></li>
	           </ul>
	    	</div>
	    </div>
   
    	<div class="container">
    		<div class="row">
    			<div class="col-md-5">
    				<img class="image" src="bootathon2/accessories/remote5.jpg" width="370" height="400">
    				<h3 style="font-size: 23px;">WIRELESS GATE CONTROLLER</h3>
    			</div>
    			<div class="col-md-4">
    				<table class="table table-striped table table-bordered" style="border: 1px solid; color: black;">
                <tr >
                    <td>MODEL NAME</td><td>WIRELESS GATE CONTROLLER</td>
                   
                </tr>
                <tr >
                    <td>MODEL NUMBER</td><td>YET2114</td>
                   
                </tr>
                <tr>
                    
                    <td>USAGE</td><td>AUTO DOORS</td>
                   
                </tr>
                <tr>
                   
                    <td>ENCODING TYPE</td><td>FIXED CODE/LEARNING CODE/ ROLLING CODE</td>
                    
                </tr>
                <tr>
                  
                    <td>CERTIFICATION</td><td>CE</td>
                   
                </tr>
                <tr>
                   
                    <td>BRAND NAME</td><td>YET</td>
                   
                </tr>
                <tr>
                   
                    <td>BUTTONS</td><td>5</td>
                   
                </tr>
                <tr>
                   
                    <td>SIZE</td><td>6X4X2 cm</td>
                   
                </tr>
                <tr>
                  
                    <td>MATERIAL</td><td>PLASTIC,ABS</td>
                </tr>
            </table>
            	<a href="inquiry.jsp"><button type="submit" class="btn btn-outline-primary btn-lg">
            	make an inquiry
            	
            	</button></a>
           <% 
    

    con.close();
    
} 
    catch(Exception e)
    {
    	System.out.println("Cannot display issue from issue table!");
    }
    out.close();
%>
           	 
    			</div>
    		</div>
    	</div>

    </body>
</html>