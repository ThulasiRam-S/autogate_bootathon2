<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Serviceprovider Display</title>
<link rel="stylesheet" href="serviceproviderTable.css">
</head>
<body>
<div id="content">
    <img src="logo.png" />
</div>
<%
response.setContentType("text/html");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
	con.setAutoCommit(true);

	Statement st=con.createStatement();
	
	String query="SELECT * FROM serviceprovider";
	
	ResultSet resultOne=st.executeQuery(query);
   %>
<div class="filter">
</div>
    <table>
    <tr>
    <th>ID</th>
    <th>USERNAME</th>
    <th>NAME</th>
    <th>ADDRESS</th>
    <th>PHONE NO</th>
    <th>CITY</th>
    <th>EMAIL</th>
    <!-- <th>#</th> -->
    </tr>
    <%
    while(resultOne.next())
    {
    %>
        <tr>
        <%
        out.println("<td>"+resultOne.getInt("spId")+"</td>");
        out.println("<td>"+resultOne.getString("spusername")+"</td>");
        out.println("<td>"+resultOne.getString("spname")+"</td>");
        out.println("<td>"+resultOne.getString("spaddress")+"</td>");
        out.println("<td>"+resultOne.getString("spphone")+"</td>");
        out.println("<td>"+resultOne.getString("spcity")+"</td>");
        out.println("<td>"+resultOne.getString("spemail")+"</td>");
        //out.println("<td>"+resultOne.getInt("spId")+"</td>");
        
        %>
        </tr>
        <%
    }
    %>
    </table>
    <%
    con.close();
    }
    catch(Exception e)
    {
    	System.out.println(e.getMessage());
    }
    out.close();
%>
</body>
</html>