<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession spsession=request.getSession(true);
if(spsession.getAttribute("userIdSp")!=null){
    spsession.invalidate();
  }
RequestDispatcher rd=request.getRequestDispatcher("home.html");
rd.forward(request,response);
%>
</body>
</html>