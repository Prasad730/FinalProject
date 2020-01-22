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
</html> 


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
-->
<!--  
<html lang="en">

<head>
    <title>Registration Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


    <style>
        
    
    
        
    .footer {
      background: #152F4F;
      color: white;
    width:1450px;
margin-left: -157px;
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
         <li class="nav-item">
          <a class="nav-link" href="login.jsp"><h3>Logout</h3></a>
        </li>
       </ul>
 
     </nav>
    

    <div class="container ">



        <h1 align="center" style="font-family:sans sherif">Registration Form</h1>

 <form action="./regsuccess" modelAttribute="consumer" method="get" >
        <table align="center" width="700" height="600" >
           
                <tr>
                    <td> <label for="Name"><h4>Name:</h4></label></td>
                    <td><input type="text" class="form-control" name="Name"></td>
                </tr>

                <tr>
                    <td> <label for="pwd"><h4>Password:</h4></label></td>
                    <td> <input type="text" class="form-control" name="Password"></td>
                </tr>


                <tr>
                    <td> <label for="pwd"><h4>Email Id</label></h4></td>
                    <td><input type="email" class="form-control" name="EmailId"></td>
                </tr>

                <tr>
                    <td> <label for="pwd"><h4>Contactno:</h4></label></td>
                    <td><input type="text" class="form-control" name="ContactNo"></td>
                </tr>


                <tr>
                    <td> <label for="pwd"><h4>Suburb:</h4></label></td>
                    <td><input type="text" class="form-control" name="Suburb"></td>
                </tr>


                <tr>
                    <td> <label for="pwd"><h4>City:</h4></label></td>
                    <td>
                        <input type="text" class="form-control" name="city"></td>
                </tr>


                <tr>
                    <td> <label for="pwd"><h4>Address:</h4></label></td>
                    <td> <input type="text" class="form-control" name="Address_String"> </td>
                </tr>



                <tr>
                    <td><label for="pwd"><h4>Pincode:</h4></label></td>
                    <td> <input type="text" class="form-control" name="pincode"></td>
                </tr>



                <tr>
                    <td></td>
                    <td><input type="submit" value="Register" class="btn btn-success btn-lg"></td>
                </tr>


        </table>

        </form>


        <br>



        <div class=" footer">
            <div class="container">
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
-->

<html lang="en">

<head>
  <title>Registration Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


  <style>
    .footer {
      background: #152F4F;
      color: white;
      width: 1386px;
      margin-left: -157px;

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
  </style>

  <script>

    function finals() {
      if (!check_username() || !check_email() || !check_number() || !check_password() || !check_validate_password() || !check_pincode() || !validatecap()) {
        alert("Some Error Occured! Please enter correct details");
        return false;
      }
      else {
        return true;
      }

    }

    function check_username() {
      errmsg = "";
      var a = document.getElementById("name").value;

      if (a == "" || a.length < 5) {
        errmsg = "Entered Value is less than 5 characters or Left Empty";
        document.getElementById("sname").innerHTML = errmsg;
        document.getElementById("sname").style.color = "Red"
        return false;
      }
      else {
        errmsg = "";
        document.getElementById("sname").innerHTML = errmsg;
        return true;
      }
    }

    function check_password() {
      errmsg = "";
      var a = document.getElementById("password").value;
      var pat = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()]).{8,16}$/g
      if (pat.test(a)) {
        errmsg = "";
        document.getElementById("spassword").innerHTML = errmsg;
        return true;
      }
      else {
        errmsg = "Incorrect Password! Make sure to use atleast 8 characters long password with combination of Ucase, Lcase, Numbers and Special Symbols";
        document.getElementById("spassword").innerHTML = errmsg;
        document.getElementById("spassword").style.color = "Red"
        return false;
      }
    }

    function check_validate_password() {
      errmsg = "";
      var cpass = document.getElementById("rPassword").value;
      var pass = document.getElementById("password").value;
      if (pass != cpass) {
        errmsg = "Password and Confirm Password mismatch";
        document.getElementById("errp").innerHTML = errmsg;
        document.getElementById("errp").style.color = "Red"
        return false;
      }
      else {
        document.getElementById("errp").innerHTML = errmsg;
        return true;
      }
    }

    function check_email() {
      errmsg = "";
      var a = document.getElementById("emailId").value;

      var pat = /^([a-z 0-9\.-]+)@([a-z0-9-]+)\.([a-z]{2,8})(.[a-z]{2,8})?$/;
      if (pat.test(a)) {
        errmsg = "";
        document.getElementById("semailId").innerHTML = errmsg;
        return true;
      }
      else {
        errmsg = "Incorrect Email ID";
        document.getElementById("semailId").innerHTML = errmsg;
        document.getElementById("semailId").style.color = "Red"
        return false;
      }
    }

    function check_number() {
      errmsg = "";
      var a = document.getElementById("contactNo").value;

      var pat = /^[7-9][0-9]{9}$/;

      if (pat.test(a)) {
        errmsg = "";
        document.getElementById("scontactNo").innerHTML = errmsg;
        return true;
      }
      else {
        errmsg = "Incorrect Number";
        document.getElementById("scontactNo").innerHTML = errmsg;
        document.getElementById("scontactNo").style.color = "Red"
        return false;
      }
    }


    function check_pincode() {
      errmsg = "";
      var a = document.getElementById("pincode").value;

      if (a == "" || a.length != 6) {
        errmsg = "Entered Pincode incorrect";
        document.getElementById("spincode").innerHTML = errmsg;
        document.getElementById("spincode").style.color = "Red"
        return false;
      }
      else {
        errmsg = "";
        document.getElementById("spincode").innerHTML = errmsg;
        return true;
      }
    }

    function validatecap() {
      errmsg = "";

      var string1 = removeSpaces(document.getElementById('gncap').value);
      var string2 = removeSpaces(document.getElementById('maincap').value);
      if (string1 != string2 || string2 == "") {
        Captcha();
        errmsg = "Please Enter correct Captcha";
        document.getElementById('scap').innerHTML += errmsg;
        document.getElementById("scap").style.color = "Red"
        return false;
      }
      else {
        errmsg = "";
        document.getElementById("scap").innerHTML = errmsg;
        return true;
      }
    }

    function Captcha() {

      var a = Math.floor(Math.random() * 10);
      var b = Math.floor(Math.random() * 10);
      var c = Math.floor(Math.random() * 10);
      var d = Math.floor(Math.random() * 10);
      var cap = a + ' ' + b + ' ' + c + ' ' + d;
      document.getElementById('gncap').value = cap;
    }

    function removeSpaces(string) {
      return string.split(' ').join('');
    }

  </script>
</head>

<body onload="Captcha()">

  <div class="jumbotron text-white " style="background-color:rgb(24, 53, 100)">
    <h1 align="center" style="font-family: Roboto">Public Grievance Portal</h1 align="center">

  </div>


  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <img src="img/emb.png" alt="image here" width="100" height="120">

    <ul class="navbar-nav">
      <li class="nav-item ">
        <a class="nav-link" href="newrule.jsp">
          <h3>New Rules</h3>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contactus.jsp">
          <h3>Contact Us</h3>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="aboutus.jsp">
          <h3>About Us</h3>
        </a>
      </li>
    </ul>

  </nav>


  <div class="container ">

    <h1 align="center" style="font-family:sans sherif">Registration Form</h1>
    <table align="center" width="650" height="600">
      <form action="./regsuccess" onsubmit="return finals()" modelAttribute="consumer" method="get">
        <tr>
          <td> <label for="usr">
              <h4>Name:</h4>
            </label></td>
          <td><input size="35" type="text" class="form-control"  id="name" name="Name" autofocus placeholder="Enter Name" required
              onblur="check_username()"><span id="sname"></span></td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>Password:</h4>
            </label></td>
          <td> <input type="password" class="form-control" id="password" name="Password" placeholder="Enter Password"
              required onblur="check_password()">
            <span id="spassword"></span>
          </td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>Confirm Password:</h4>
            </label></td>
          <td> <input type="password" class="form-control" id="rPassword" name="rPassword"
              placeholder="Re-Enter Password" required onblur="check_validate_password()"><div id="errp"></div><span id="srPassword"></span>
          </td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>Email Id
            </label></h4>
          </td>
          <td><input type="email" class="form-control" id="emailId" name="EmailId" placeholder="Enter Email Id" required
              onblur="check_email()"><span id="semailId"></span></td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>Contact No:</h4>
            </label></td>
          <td><input type="text" class="form-control" id="contactNo" name="ContactNo" placeholder="Enter Contact Number"
              required onblur="check_number()"><span id="scontactNo"></span></td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>Aadhar No:</h4>
            </label></td>
          <td><input type="text" class="form-control" maxlength="12" minlength="12" id="aadharNo" name="aadharNo" placeholder="Enter Aadhar Number"
              required ></td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>City:</h4>
            </label></td>
          <td>
            <input type="text" class="form-control" id="city" name="City" placeholder="Enter City" required
              onblur="check_city()"><span id="scity"></span></td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>Suburb:</h4>
            </label></td>
          <td><input type="text" class="form-control" id="suburb" name="Suburb" placeholder="Enter Suburb" required
              onblur="check_suburb()"><span id="ssuburb"></span></td>
        </tr>

        <tr>
          <td> <label for="pwd">
              <h4>Address:</h4>
            </label></td>
          <td>
            <textarea class="form-control" id="address_String" name="Address_String" placeholder="Enter Address"
              required> </textarea><span id="saddress_String"></span></td>
        </tr>

        <tr>
          <td><label for="pwd">
              <h4>Pincode:</h4>
            </label></td>
          <td> <input type="text" class="form-control" id="pincode" name="Pincode" placeholder="Enter Pincode" required
              onblur="check_pincode()"><span id="spincode"></span></td>
        </tr>



        <tr>
          <td>
            <label for="pwd">
              <h4>Captcha</h4>
            </label></td>

          <td> <input type="text" id="maincap" name="maincap" placeholder="Enter Captcha" required
              onblur="validatecap()">
            <span id="scap"></span>

            <input type="button" class=" btn btn-dark btn-lg" id="gncap" name="gncap" value="" disabled>
          </td>
        <tr>


        <tr>
          <td></td>
          <td><input type="submit" value="Register" class="btn btn-success btn-lg">
            <input type="reset" value="Reset" class="btn btn-info btn-lg"></td>
        </tr>
    </table>

    </form>
    <br>

    <div class=" footer">
      <div class="container">
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



  </div>
</body>

</html>

