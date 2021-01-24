<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="service.ServiceDBProcess" %>
    <%@ page import="service.ServiceDBConnect" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Issue Display</title>
<link rel="stylesheet" href="issuetabledisplay.css">
</head>
<body>
<div id="content">
    <img src="logo1.png" />
</div>
<%
response.setContentType("text/html");
try {
    ServiceDBConnect connect=new ServiceDBConnect();
    Connection con=connect.getcon();
    Statement pst=con.createStatement();
    ResultSet rst=pst.executeQuery("SELECT issueId,issue from issue where issuestatus=1");
%>
<div class="filter">
</div>
    <table>
    <tr>
    <th>ISSUE ID</th>
    <th>ISSUE DETAILS</th>
    </tr>
    <%
    while(rst.next())
    {
    	%>
        <tr>
        <%
        out.println("<td align='center'>"+"<a href='spallotment.jsp?id="+rst.getInt("issueId")+"'>"+rst.getInt("issueId")+"</a>"+"</td>");
        out.println("<td>"+rst.getString("issue")+"</td>");
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
    	System.out.println("Cannot display issue from issue table!");
    }
    out.close();
%>
</body>
</html>