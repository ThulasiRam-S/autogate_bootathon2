<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="service.SPAccountDB" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.spaccountcard {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 50%;
  height:600px;
  border-radius: 25px;
  background: rgb(255,214,68);
  background: linear-gradient(184deg, rgba(255,214,68,1) 30%, rgba(255,255,255,1) 100%);
	margin: 0 auto; 
	margin-top:70px;
        float: none;
        margin-bottom: 10px;
}

.spaccountcard:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
}
.myaccount
{
font-family: "Lucida Console", "Courier New", monospace;
font-size:30px;
text-align: center;
margin-top:10px;
font-weight: bold;
}
.spvalues
{
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
font-size: 18px;
padding: 7px;
padding-left: 20px;
}
.logoutbutt
{
padding-left: 44%;
}
.issueheading
{
font-family: "Lucida Console", "Courier New", monospace;
font-size:30px;
text-align: center;
margin-top:10px;
font-weight: bold;
}
table, tr, td ,th{
  border: 1px solid black;
  border-collapse: collapse;
}
.workdonebutt
{
padding-left: 44%;
}
</style>
</head>
<body style="background-color:rgb(0,172,230);">

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
%>
<div class="spaccountcard">
<div class="container">
<div class="myaccount">
My Account
</div>
<div class="spvalues">
Username :
<% out.println(spusername);%>
</div>
<div class="spvalues">
Name     :
<% out.println(spname);%>
</div>
<div class="spvalues">
Phone    :
<% out.println(spphone);%>
</div>
<div class="spvalues">
Email    :
<% out.println(spemail);%>
</div>
<div class="logoutbutt">
<a href="splogout.jsp"><button type="button" class="btn btn-outline-danger">Logout</button></a>
</div>
<div class="issueheading">Issue</div>
<% 
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
	    window.location.href = "#";
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
%>
<table class="table table-sm" style="border: 1px solid black; color: black;">
                <tr >
                    <td>NAME</td><td><%out.println(username);%></td>
                   
                </tr>
                <tr >
                    <td>ISSUE</td><td><%out.println(issue);%></td>
                   
                </tr>
                <tr>
                    
                    <td>PHONE</td><td><%out.println(phoneno);%></td>
                   
                </tr>
                <tr>
                   
                    <td>ADDRESS</td><td><%out.println(address);%></td>
                    
                </tr>
                <tr>
                  
                    <td>CITY</td><td><%out.println(city);%></td>
                   
                </tr>
                <tr>
                   
                    <td>MAIL</td><td><%out.println(email);%></td>
                   
                </tr>
            </table>
<div class="workdonebutt">
<a href="spcompletebutton.jsp"><button type="button" class="btn btn-outline-success">Workdone</button></a>
</div>
<% 
}
%>
</div>
</div>
</body>
</html>