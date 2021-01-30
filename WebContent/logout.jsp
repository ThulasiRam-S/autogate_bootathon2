<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
</head>
<body>
<%
HttpSession ses=request.getSession(true);
int logout=0;
if((ses.getAttribute("userIdClient"))!=null)
{
ses.invalidate();
logout=1;
}
%>
<%
if(logout==1)
{
%>
<script>
setTimeout(function () { 
	swal({
	  title: "Logout success!",
	  text: "",
	  type: "success",
	  confirmButtonText: "OK"
	},
	function(isConfirm){
	  if (isConfirm) {
	    window.location.href = "home.html";
	  }
	}); }, 200);
</script>
<% 	
}
%>
<%
if(logout==0)
{
%>
<script>
setTimeout(function () { 
	swal({
	  title: "Not logged in!",
	  text: "Please Login",
	  type: "info",
	  confirmButtonText: "OK"
	},
	function(isConfirm){
	  if (isConfirm) {
	    window.location.href = "userlogin.html";
	  }
	}); }, 200);
</script>
<%
}
%>
</body>
</html>