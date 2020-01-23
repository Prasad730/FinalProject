<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
function alertt()
{
	
alert("Status updated successfully");
	}
</script>
 <form action="./showstat" modelAttribute="showstatus" method="post" onsubmit="alertt();">
 
<table class="table table-hover" border="2px">
  <thead>
    <tr>
      
      <th >Complain Id</th>
      <th >Consumer Name</th>
      <th>Complain Category</th>
      <th >Complain Heading</th>
      <th >Consumer Description</th>
       <th>Affected Address</th>
        <th >Image</th>
       
      
     
    </tr>
  </thead>




  <c:forEach var="l" items="${a}" varStatus="loop">
 
    <tr class="table-primary">
      
      <td>${l.getComplainId()}</td>
      <td>${l.getConsumerName()}</td>
      <td>${l.getComplain_Category()}</td>
      <td>${l.getComplain_Heading()}</td>
      <td>${l.getComplainId()}</td>
      <td>${l.getAffected_Address()}</td>
      <td><img src="${pageContext.request.contextPath}/resources/images/${l.getImage()}" style="width:20%"></td>
      <td><input type="text" name="Status" >
      <c:forEach var="lv" items="${ac}" varStatus="loop">
      <td><input type="hidden" name="ComplainId" value="${lv.getComplainId()}"></td>
      </c:forEach>
      
       
    </tr>
    <input type="text" name="Status" value="${l.getComplainId()}">
</c:forEach>

</table> 
<div align="center"><input type="submit" value="Act on complaints"></div>
</form>
<!-- <c:forEach var="window" items="${a}">
    <c:out value="${window}"/> 
</c:forEach> -->


</body>
</html>