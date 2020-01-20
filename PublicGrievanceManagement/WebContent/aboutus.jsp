<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">

<title>About Us</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 25%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1>About Us</h1>
  <p>We are a Dedicated And Enthusiastic Team Working Tirelesly for a Better and Advanced Tomorrow!!</p>
  <p></p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
    <img src="${pageContext.request.contextPath}/resources/images/prasad.jpg" style="width:100%">
     
      <div class="container">
        <h2>Prasad Shinde</h2>
        <p class="title">Java Developer</p>
        <p>Lead Developer and Public Speaker</p>
        <p>prasadshinde1998@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
         <img src="${pageContext.request.contextPath}/resources/images/swarup.jpg" style="width:100%">
      <div class="container">
        <h2>Swarup Waghmare</h2>
        <p class="title">Database Admin</p>
        <p>Sr. Database Admin</p>
        <p>iswarupwaghmare@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
            <img src="${pageContext.request.contextPath}/resources/images/pratik.jpg" style="width:100%">
      <div class="container">
        <h2>Pratik Mergal</h2>
        <p class="title">Java Developer</p>
        <p>Sr. Developer and Cordinator of Affairs</p>
        <p>pratikmergal23@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>


<div class="column">
          <img src="${pageContext.request.contextPath}/resources/images/prasad.jpg" style="width:100%">
   
      <div class="container">
        <h2>Anil Kumawat</h2>
        <p class="title">Front End Designer</p>
        <p>Jr. Design Engineer</p>
        <p>anilk4337@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>
</div>

</body>
</html>
