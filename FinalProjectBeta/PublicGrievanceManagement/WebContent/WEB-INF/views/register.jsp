<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
City<input type="text" name="city"><br>
Address<input type="text" name="Address_String"><br>
Pincode<input type="text" name="pincode"><br>
<input type="submit" value="Register">
</form>
</body>
</html>