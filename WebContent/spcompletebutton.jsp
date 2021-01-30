<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="service.SPAccountDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
</head>
<body>
<%
HttpSession spsession=request.getSession(true);
int spid=0;
if(session.getAttribute("userIdSp")!=null)
{
	Object ob=spsession.getAttribute("userIdSp");
    spid=(int)ob;
}
System.out.println("spsession"+spid);
SPAccountDB spaccs=new SPAccountDB();
int success=spaccs.spcomplete(spid);
if(success==1)
{
%>
<script>
setTimeout(function () { 
	swal({
	  title: "Updated successfully!",
	  text: "",
	  type: "success",
	  confirmButtonText: "OK"
	},
	function(isConfirm){
	  if (isConfirm) {
	    window.location.href = "serviceprovideraccount.jsp";
	  }
	}); }, 200);
</script>
<%
}
%>
</body>
</html>