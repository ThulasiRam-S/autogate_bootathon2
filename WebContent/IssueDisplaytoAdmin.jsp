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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
	</link>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<link rel="stylesheet" href="issuetabledisplay.css">
</head>
<body>
<div id="content">
    <img src="logo_transparent_final.png" />
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
<a href="adminpage.html"><button class="py-3">Back</button></a>
</div>
	<%
if (!rst.isBeforeFirst() ) {  
	System.out.println("No issues in the table.");
%>
<script>
setTimeout(function () { 
	swal({
	  title: "No issues!",
	  text: "No issues to be displayed.",
	  type: "info",
	  confirmButtonText: "OK"
	},
	function(isConfirm){
	  if (isConfirm) {
	    window.location.href = "adminpage.html";
	  }
	}); }, 200);
</script>
<%
}
else
{
%>
	
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
} 
    catch(Exception e)
    {
    	System.out.println("Cannot display issue from issue table!");
    }
    out.close();
%>
</body>
</html>