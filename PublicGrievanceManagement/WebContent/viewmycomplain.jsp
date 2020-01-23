<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<form onload="./mycomplaints">
		<table class="table table-hover" border="2px">
  <thead>
    <tr>
      
      <th >Consumer Name</th>
      <th>Complain Category</th>
      <th >Complain Heading</th>
      <th >Consumer Description</th>
       <th>Affected Address</th>
        <th >Image</th>
       <th>Status</th>
      
     
    </tr>
  </thead>




  <c:forEach var="l" items="${a}">
 
    <tr class="table-primary">
      
      <td>${l.getConsumerName()}</td>
      <td>${l.getComplain_Category()}</td>
      <td>${l.getComplain_Heading()}</td>
      <td>${l.getComplainId()}</td>
      <td>${l.getAffected_Address()}</td>
      <td><img src="${pageContext.request.contextPath}/resources/images/${l.getImage()}" style="width:20%"></td>
      <td>${l.getStatus()}</td>
      
      
      
       
    </tr>
    
</c:forEach>

</table> 
	</form>
</body>
</html>