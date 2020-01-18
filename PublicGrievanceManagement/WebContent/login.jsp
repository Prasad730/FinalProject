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
</html>

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
-->


<html lang="en">

<head>
  <title>Login Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>




  <style>
    .carousel-inner img {
      width: 100%;
      height: 100%;
    }



    .footer {
      background: #152F4F;
      color: white;

      .links {
        ul {
          list-style-type: none;
        }

        li a {
          color: white;
          transition: color .2s;

          &:hover {
            text-decoration: none;
            color: #4180CB;
          }
        }
      }

      .about-company {
        i {
          font-size: 25px;
        }

        a {
          color: white;
          transition: color .2s;

          &:hover {
            color: #4180CB
          }
        }
      }

      .location {
        i {
          font-size: 18px;
        }
      }

      .copyright p {
        border-top: 1px solid rgba(255, 255, 255, .1);
      }
    }
  </style>
</head>



<body style= "background-image: linear-gradient(to top, skyblue 20% ,lavender 80%)">
 

  <div class="jumbotron text-white " style="background-color:rgb(24, 53, 100)">
    <h1 align="center" style="font-family: Roboto" ;>Public Grievance Portal</h1 align="center">
  
  </div>
  

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
       <img src="img/emb.png" alt="image here" width="100" height="120">

      <ul class="navbar-nav">
        <li class="nav-item ">
          <a class="nav-link" href="newrule.jsp"><h3>New Rules</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contactus.jsp"><h3>Contact Us</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="aboutus.jsp"><h3>About Us</h3></a>
        </li>
        
      </ul>

    </nav>
    

  


    <div class="container">

      <div class="row">


        <div class="col-sm-7">


          <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/one.jpg" alt="Los Angeles" width="400" height="500">
              </div>
              <div class="carousel-item">
                <img src="img/two.jpg" alt="Chicago" width="400" height="500">
              </div>
              <div class="carousel-item">
                <img src="img/three.jpeg" alt="New York" width="400" height="500">
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>
          </div>



        </div>


        <div class="col-sm-5">

          <form class="form-horizontal" modelAttribute="login" action="./loginSuccess" method="post">
            <fieldset>
              <legend>
                <h1 style="font-family:sans sherif">Login Form</h1>
              </legend>
              <div class="form-group">
                <label style="font-family: Ariel black" ; class="control-label col-sm-2" for="email"><h3>
                    Name</h3></label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="email" placeholder="Enter Name" name="Name">
                </div>
              </div>

              <div class="form-group">
                <label style="font-family: Ariel black" ; class="control-label col-sm-2"
                  for="pwd"><h3>Password</h3></label>
                <div class="col-sm-7">
                  <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="Password">
                </div>
              </div>

              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <div class="checkbox">
                    <label><input type="checkbox" name="remember"> <h5>Remember me</h5></label>
                  </div>
                </div>
              </div>
              <br/>

              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-success btn-lg">Submit</button> <a
                    href="register"><br/><br/><br/><h3>If not a member
                    ,click here to Register.</h3></a>
                </div>
              </div>
            </fieldset>
          </form>

        </div>
      </div>
    </div>

    <div class="footer fixed-bottom " >
      <div class="container ">
        <div class="row">
          <div class="col-lg-5 col-xs-12 about-company">
            <h2>Heading</h2>
            <p class="pr-5 text-white-50">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac ante mollis
              quam tristique convallis </p>
            <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i
                  class="fa fa-linkedin-square"></i></a></p>
          </div>
          <div class="col-lg-3 col-xs-12 links">
            <h4 class="mt-lg-0 mt-sm-3">Links</h4>
            <ul class="m-0 p-0">
              <li>- <a href="#">Lorem ipsum</a></li>
              <li>- <a href="#">Nam mauris velit</a></li>
            
            </ul>
          </div>
          <div class="col-lg-4 col-xs-12 location">
            <h4 class="mt-lg-0 mt-sm-4">Location</h4>
            <p>22, Lorem ipsum dolor, consectetur adipiscing</p>
            <p class="mb-0"><i class="fa fa-phone mr-3"></i>(541) 754-3010</p>
            <p><i class="fa fa-envelope-o mr-3"></i>info@hsdf.com</p>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col copyright">
            <p class=""><small class="text-white-50">© 2019. All Rights Reserved.</small></p>
          </div>
        </div>
      </div>
    </div>



</body>

</html>