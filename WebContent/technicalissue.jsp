<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Technical Issue</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="techissue.css" />
<script type="text/javascript">
function validateissue() {
	  var x = document.forms["techissue"]["issue"].value;
	  if (x =="") {
	    alert("Issue not mentioned");
	    return false;
	  }
	}
</script>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Technical Issue</h5>
            <form  name="techissue"  action="UserTechIssue" onsubmit="return validateissue()">
              <!--  <div class="form-label-group pt-3">
                <input type="int" name="userId" placeholder="userid" class="form-control" >
              </div> -->
              <div class="form-label-group py-3">
                <textarea name="issue" rows="5" cols="30" placeholder="issue"></textarea>
              </div>
              <button class="btn btn-lg btn-google btn-block btn-success text-uppercase" type="submit" >Send</button>              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>