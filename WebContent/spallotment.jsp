<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="service.ServiceDBProcess" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Service Provider Allotment</title>
</head>
<body> 

<script>
function myFunction() {
  location.replace("IssueDisplaytoAdmin.jsp");
}
</script>

<%!  int issueid;String issuedetails;ResultSet rs;String spname;int spid; %>  
<h1>Issue Details</h1>
<%
int issueid=Integer.parseInt(request.getParameter("id"));
ServletContext context=getServletContext();  
context.setAttribute("issueid",issueid); 
ServiceDBProcess serv=new ServiceDBProcess();
String issuedetails=serv.displayissue(issueid);
out.println(issuedetails);
%>
<br>
<%
ResultSet rs=serv.dropdownsp();
%>
<h1>Service Providers</h1>
<form action="SPAllocationButton" method="post">
<select name="spdropdown">
<%
while(rs.next())
{
spname = rs.getString("spname"); 
spid=rs.getInt("spId");
%>
<option value="<%=spid%>"><%=spname%></option>
<%
}
%>
</select>
<input a href="SPAllocationButton.java" type="submit" name="button1" value="Allocate" />
<br>
</form>
<button onclick="myFunction()">Back</button>
</body>
</html>
