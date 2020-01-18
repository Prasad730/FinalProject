<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
</head>
<body>
<form>

<h2>${name },</h2><h3>your registered complaint looks like: </h3>
<br/><br/><br/><br/><br/>
<div align="center">
     <h3> Consumer Name: <label>${name }</label><br/><br/>
      Complain Category: <label>${compcat }</label><br/><br/>
      Complain Category: <label>${compheading }</label><br/><br/>
      Complain Description: <label>${desc}</label></h3>
  </div>
  
  <button type="button"><a href="login.jsp">Logout</a></button>
</form>
</body>
</html>