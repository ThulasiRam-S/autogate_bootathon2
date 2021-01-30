<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="service.SPAccountDB" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!  String spusername;String spname;String spphone;String spemail;String issue,username,phoneno,address,city,email;int userId; %>  
<%
HttpSession spsession=request.getSession(true);
int spid;
Object ob=spsession.getAttribute("userIdSp");
spid=(int)ob;
//System.out.println(spid+"spid");
SPAccountDB spacc=new SPAccountDB();
ArrayList<String> spdetails=spacc.spdetails(spid);
spusername=spdetails.get(0).toString();
spname=spdetails.get(1).toString();
spphone=spdetails.get(2).toString();
spemail=spdetails.get(3).toString();
out.println("<h1>My account</h1>");
out.println(spusername+"<br>");
out.println(spname+"<br>");
out.println(spphone+"<br>");
out.println(spemail+"<br>");
%>
<a href="splogout.jsp"><button>Logout</button></a>
<% 
out.println("<h1>Issue</h1>");
int issueId=spacc.getissueid(spid);
if(issueId==0)
{
%>
<script>
setTimeout(function () { 
	swal({
	  title: "No issues!",
	  text: "No issues currently now.",
	  type: "info",
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
else
{
ArrayList<String> getissueuserid=spacc.getissue_userId(issueId);
userId=Integer.parseInt(getissueuserid.get(0));
issue=getissueuserid.get(1);
System.out.println("issueid"+issueId);
System.out.println("userid"+userId);
System.out.println("issue"+issue);
ArrayList<String> getuserdetails=spacc.getuserdetails(userId);
username=getuserdetails.get(0);
phoneno=getuserdetails.get(1);
address=getuserdetails.get(2);
city=getuserdetails.get(3);
email=getuserdetails.get(4);
out.println(username+"<br>");
out.println(issue+"<br>");
out.println(phoneno+"<br>");
out.println(address+"<br>");
out.println(city+"<br>");
out.println(email+"<br>");
}
%>
<a href="spcompletebutton.jsp"><button>Work done</button></a>
</body>
</html>