<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="./register" modelAttribute="consumer" method="get">
Name<input type="text" name="Name"><br>
Password<input type="text" name="Password"><br>
EmailId<input type="email" name="EmailId"><br>
Contactno<input type="text" name="ContactNo"><br>
Suburb<input type="text" name="Suburb"><br>
City<input type="text" name="City"><br>
Address<input type="text" name="Address_String"><br>
Pincode<input type="text" name="Pincode"><br>
<input type="submit" value="Register">
</form>

</body>
</html> -->

<html lang="en">
<head>
  <title>Registration Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  

</head>
<body>

<div class="jumbotron">
  <h2 style="font-family: Roboto";><b>Public Grievance Portal</b></h2>      
<a href="newrule.jsp">New Rules</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contactus.jsp">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="aboutus.jsp">About Us</a>&nbsp;&nbsp;&nbsp;
</div>

<div class="container">

<form action="./regsuccess" modelAttribute="consumer" method="get">

  <h2 style="font-family:sans sherif">Registration Form</h2>

          
	
<div class="form-group">
  <label for="usr">Name:</label>
  <input type="text" class="form-control" name="Name">
</div>


<div class="form-group">
  <label for="pwd">Password:</label>

  <input type="password"  class="form-control" name="Password"><br>
</div>


<div class="form-group">
  <label for="pwd">EmailId:</label>
	<input type="email" class="form-control"  name="EmailId">

</div>


<div class="form-group">
  <label for="pwd">Contactno:</label>
	<input type="text" class="form-control" name="ContactNo">
 
</div>


<div class="form-group">
  <label for="pwd">Suburb:</label>
	<input type="text" class="form-control" name="Suburb">
  
</div>


<div class="form-group">
  <label for="pwd">City:</label>
	<input type="text" class="form-control"  name="City">
 
</div>

<div class="form-group">
  <label for="pwd">Address:</label>
	<input type="text" class="form-control" name="Address_String">
 
</div>

<div class="form-group">
	<label for="pwd">Pincode:</label>
	<input type="text"  class="form-control"  name="Pincode">
 
</div>

<input type="submit" value="Register" class="btn btn-success">



</form>


<br>





</body>
</html>
