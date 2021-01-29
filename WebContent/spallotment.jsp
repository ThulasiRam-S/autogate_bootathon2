<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="service.ServiceDBProcess" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="spallotment.css" />
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
<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Issue Allotment</h5>
<%
issueid=Integer.parseInt(request.getParameter("id"));
ServletContext context=getServletContext();  
context.setAttribute("issueid",issueid); 
ServiceDBProcess serv=new ServiceDBProcess();
String issuedetails=serv.displayissue(issueid);
//out.println(issuedetails);
%>
<div class="form-label-group">
Issue details
<%
out.println(issuedetails);
%>
</div>
<%
ResultSet rs=serv.dropdownsp();
%>
<div class="form-label-group">
Service Providers
<form action="SPAllocationButton" method="post">
<select name="spdropdown">
<%
if (!rs.isBeforeFirst() ) {   
%>
<script>
setTimeout(function () { 
	swal({
	  title: "Dropdown empty!",
	  text: "Our serviceproviders are currently engaged.",
	  type: "info",
	  confirmButtonText: "OK"
	},
	function(isConfirm){
	  if (isConfirm) {
	    window.location.href = "IssueDisplaytoAdmin.jsp";
	  }
	}); }, 200);
</script>
<%
    System.out.println("No service providers");
}
else
{
while(rs.next())
{
spname = rs.getString("spname"); 
spid=rs.getInt("spId");
%>
<option value="<%=spid%>"><%=spname%></option>
<%
}
}
%>
</select>
</div>
<input class="btn btn-lg btn-google btn-block text-uppercase" a href="SPAllocationButton.java" type="submit" name="button1" value="Allocate" />
</form>
<button class="btn btn-lg btn-google btn-block text-uppercase" onclick="myFunction()">Back</button>
</div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
