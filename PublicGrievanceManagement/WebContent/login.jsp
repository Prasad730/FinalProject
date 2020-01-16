<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form modelAttribute="login" action="./loginSuccess" method="post">
Name<input type="text" name="name"><br>
Password<input type="password" name="password"><br>
<input type="submit" value="Login">
<label>${message}</label>
</form>
</body>
</html>-->

<html lang="en">
<head>
  <title>Login Page</title>
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
  
  <div class="row">

   <div class="col-sm-6" >

	
	<img src="img/helphand.jpg" width="400px">

	</div>
   

  <div class="col-sm-6" >

  <form class="form-horizontal" modelAttribute="login" action="./loginSuccess" method="post">
   <fieldset>
   <legend><h2 style="font-family:sans sherif">Login Form</h2></legend>
   <div class="form-group">
      <label style="font-family: Ariel black"; class="control-label col-sm-2" >Name:</label>
      <div class="col-sm-7">
        <input type="text" class="form-control"   name="Name">
      </div>
    </div>
   
   <div class="form-group">
      <label  style="font-family: Ariel black"; class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-7">           
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="Password">
      </div>
    </div>
    
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
   
   <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button> <a href="register">Register</a>
Not a member yet?</a>

      </div>
    </div>
	</fieldset>
	
 </form>
		
    </div>
  </div>
</div>






</body>
</html>
