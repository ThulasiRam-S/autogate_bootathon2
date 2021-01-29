<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<title>ServiceProvider Allotted</title>
</head>
<body>
<script>
setTimeout(function () { 
	swal({
	  title: "Sent Successfully!",
	  text: "Our serviceprovider will contact you soon.",
	  type: "success",
	  confirmButtonText: "OK"
	},
	function(isConfirm){
	  if (isConfirm) {
	    window.location.href = "home.html";
	  }
	}); }, 500);
</script>
</body>
</html>