<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--  
<html>
<head>
    <title>Complain Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form modelAttribute="complain" action="./insertComplain" method="get">
   <div align="center"><b>Welcome </b><label>${Name}</label></div>
<nav class="alert alert-danger">
<a href="newrule.jsp">New Rules</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contactus.jsp">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="aboutus.jsp">About Us</a>&nbsp;&nbsp;&nbsp;</nav>

<div class="jumbotron">
    <h2 style="font-family: Roboto";><b>Public Grievance Portal</b></h2>      
  
  </div>
<div class="container" >
           
    <table height="500" width="700" align="center" >
      <thead>
        <tr>
          <td>Consumer Name</td>
          <td><input type="text" name="ConsumerName" value="${Name}" class="form-control" id="pwd" >
          </div></td>
        
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Complaint Category</td>
          <td><select class="form-control" name="complain_Category">
            <option value="volvo"></option>
            <option value="saab">Saab</option>
            <option value="fiat">Fiat</option>
            <option value="audi">Audi</option>
          </select></td>
        
        </tr>
        <tr>
          <td>Complaint Heading</td>
          <td><input type="text"class="form-control" name="Complain_Heading" id="pwd">
          </div> </td>
          
        </tr>
      

        <tr>
            <td>Description</td>
            
            <td><textarea class="form-control" rows="7" cols="50" name="Description"></textarea></td>
          </tr>

          <tr>
            <td>Upload Image</td>
            <td><input type="file" name="Upload_Image" accept="image/*"> </td>
           
          </tr>

          <tr>
              <td></td>
            <td><input type="submit" value="File complaint" class="btn btn-Danger"></td>
  
          </tr>
          
      </tbody>
    </table>
  </div>

</form>

</body>
</html>
-->

<!--  
<select id="area">
	<option >${AreaName}</option>
	<option >${AreaName1}</option>
</select>
<script>
function hidd()
{
document.getElementById("area").value=document.getElementsById("hid").value;

}
</script>
<input type="text" id="hid" >

<input type="submit" value="View complaints from this area">
-->




<html>
<head>
    <title>Complain Page</title>
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
function getimage()
{
	var i=document.getElementById("im").value;
	document.getElementById("hid").value=i;
	return i;
}

    </script>




</head>
<body style= "background-image: linear-gradient(to top, skyblue 20% ,lavender 80%)">
<form  action="./insertComplain" modelAttribute="complain" method="post">
   <div class="text-white" align="right"><b>Welcome </b><label>${Name}</label></div>
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
 		<p class="text-white" align="right"><b>Welcome </b><label>${Name}</label></p>
     </nav>
     

  
<div class="container" >
           <h1 align="center" style="font-family:sans sherif"> Register Complaint </h1><br/><br/>
         
    <table height="500" width="700" align="center" >
      <thead>
        <tr>
          <td>Consumer Name</td>
          <td><input type="text" name="ConsumerName" value="${Name}" class="form-control" id="pwd">
          </div></td>
        
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Complaint Category</td>
          <td><select class="form-control" name="complain_Category">
            <option value="Electricity">Electricity</option>
            <option value="Domestic waste">Domestic waste/Swacchh Bharat/Sewage</option>
            <option value="Pest Control">Pest Control</option>
            <option value="Drinking water supply">Drinking water supply</option>
            <option value="Road/potholes">Road/potholes</option>
            <option value="Fallen Trees/Poles">Fallen Trees/Poles</option>
            <option value="Street livestock">Street livestock</option>
            <option value="Hospital Bio-Hazard">Hospital Bio-Hazard</option>
          </select></td>
        
        </tr>
        <tr>
          <td>Complaint Heading</td>
          <td><input type="text" name="Complain_Heading" class="form-control" id="pwd">
          </div> </td>
          
        </tr>
      

        <tr>
            <td>Description</td>
            
            <td><textarea class="form-control" rows="7" cols="50" name="Description"></textarea></td>
          </tr>
          
           <tr>
            <td>Affected address</td>
            
            <td><textarea class="form-control" rows="7" cols="80" name="Affected_Address"></textarea></td>
          </tr>

          <tr>
            <td>Upload Image</td>
            <td><input type="file"  id="im" name="Image" accept="image/*" > </td>
           
          </tr>
          
             

          <tr>
              <td></td>
            <td><input type="submit" value="File complaint" class="btn btn-Danger btn-lg" ></td>
  
          </tr>
          
      </tbody>
    </table>
  </div>

</form>



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