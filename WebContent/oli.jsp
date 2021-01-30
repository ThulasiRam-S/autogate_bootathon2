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
    ResultSet rst=pst.executeQuery("SELECT model_name from swing_gate where mid=3");
   
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
	                <li><a href="swing_gate.jsp">Back</a></li>
	           </ul>
	    	</div>
	    </div>
   
    	<div class="container">
    		<div class="row">
    			<div class="col-md-5">
    				<img class="image" src="bootathon2/swing_motor/OLI-N.jpg" width="370" height="400">
    				<h3>OLI/N SWING GATE OPENER</h3>
    				
    			</div>
    			<div class="col-md-4">
    				 <table class="table table-striped table table-bordered" style="border: 1px solid; color: black;">
                <tr >
                    <td>MODEL</td><td>OLI/N hydraulic automation swing gates</td>
                   
                </tr>
                <tr>
                    
                    <td>RATED VOLTAGE</td><td>AV230V 50/60Hz</td>
                   
                </tr>
                <tr>
                   
                    <td>MOTOR RATED VOLTAGE</td><td>24v</td>
                    
                </tr>
                <tr>
                  
                    <td>INPUT POWER(W)</td><td>120</td>
                   
                </tr>
                <tr>
                   
                    <td>AMBIENT TEMPERATURE RANGE</td><td>-20 ~ +50</td>
                   
                </tr>
                <tr>
                   
                    <td>Max.GATE WEIGHT</td><td>500KG</td>
                   
                </tr>
                 <tr>
                   
                    <td>LENGTH</td><td>4.5 METERS</td>
                   
                </tr>
                <tr>
                   
                    <td>MOVING SPEED(m/min)</td><td>>11</td>
                   
                </tr>
                <tr>
                  
                    <td>rpm</td><td>3000±200</td>
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