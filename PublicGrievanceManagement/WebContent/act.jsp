<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#hide").click(function(){
    $("#showf").hide();
  });
  $("#show").click(function(){
    $("#entermore").show();
  });
});
</script>
<title>Insert title here</title>
</head>
<body>
<form>
<input type="text" id="showf">
<input type="submit" id="show">
<input type="text" id="entermore">
</form>
</body>
</html>