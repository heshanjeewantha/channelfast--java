<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<!--link css -->
<title>Insert title here</title>

<link rel="stylesheet" href="css/NavBar.css">
<style><%@include file="css/NavBar.css"%></style>

<link rel="stylesheet" href="css/table.css">
<style><%@include file="css/table.css"%></style>

<link rel="stylesheet" href="css/button.css">
<style><%@include file="css/button.css"%></style>


<link rel="stylesheet" href="css/sidebar.css">
<style><%@include file="css/sidebar.css"%></style>

<link rel="stylesheet" href="css/footer.css">
<style><%@include file="css/footer.css"%></style>


<link rel="stylesheet" href="css/my.css">
<style><%@include file="css/my.css"%></style>










</head>
<body>

 <ul>
    <li><a href="home.jsp">Home</a></li>
    <li><a href="login.jsp">Dashbord</a></li>
    <li><a href="doctors.jsp">Doctors</a></li>
    <li><a href="appointmentinsert.jsp">Appointment</a></li>
    <li><a href="contactusinsert.jsp">Contact us</a></li>
    <li><a href="aboutus.jsp">About us</a></li>
    <li style="float:right"><a class="active" href="logindoc.jsp">Login</a></li>
    <li style="float:right"><a class="active" href="customerinsert.jsp">Register</a></li>
  </ul>
  
  

  <br>
  <div class="table-title">
   <h3>User Details</h3>
  </div> 
  <br>
  
  
  
  
  <table class="table-fill">
  
  <tbody class="table-hover">
  

	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="userName" value="${cus.username}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
	<td class="text-left"> ID </td>
	<td class="text-left">${cus.id} </td>
	</tr>
	
	<tr>
	<td class="text-left"> Name </td>
	<td class="text-left">${cus.name}</td>
	</tr>
	
	<tr>
	<td class="text-left"> Email </td>
	<td class="text-left">${cus.email}</td>
	</tr>
	
	<tr>
	<td class="text-left"> Phone </td>
	<td class="text-left">${cus.phone}</td>
	</tr>
	
	<tr>
	<td class="text-left"> User Name </td>
	<td class="text-left">${cus.username}</td>
	</tr>
	
	<tr>
	<td class="text-left"> Password </td>
	<td class="text-left">${cus.password}</td>
	</tr>
	
	 </c:forEach>
	
	</tbody>
	
</table><br><br>




	
	
	<c:url value="updateCustomer.jsp" var="cusUpdate">
	 	<c:param name="id" value="${id}" />
	 	<c:param name="name" value="${name}" />
	 	<c:param name="email" value="${email}" />
	 	<c:param name="phone" value="${phone}" />
	 	<c:param name="uname" value="${userName}" />
	 	<c:param name="pass" value="${password}" />
	 </c:url>
	 
	
     
	      <a href="${cusUpdate}">
	        <div class="button_container">
	            
	        <button class="btn" name="update" value="Update MY Data"><span> Update </span></button>
	        
	        </div>
	      </a>
		
	
	<br>
	
	<c:url value="deletecustomer.jsp" var="cusDelete">
		<c:param name="id" value="${id}" />
	 	<c:param name="name" value="${name}" />
	 	<c:param name="email" value="${email}" />
	 	<c:param name="phone" value="${phone}" />
	 	<c:param name="uname" value="${userName}" />
	 	<c:param name="pass" value="${password}" />
	</c:url>
	
	
	 <br>
      <div class="table-title">
      <h3> Do You want to Delete Your Account ?</h3>
     </div> 
      <br>
	

	    <a href="${cusDelete}">
	    
	         <div class="button_container">

	        <button class="btn" name="delete" value="Delete my Account"><span> Delete </span></button>
	        </div>
	       
	      </a>
	      
	      
	      
	      
	      
	      
	
<footer>
<div class="topnav">
  <a href="#home">User Agreement</a>
  <a href="#news">Brand Policy</a>
  <a href="#contact">Copyright policy</a>
  <a href="#contact">Privacy policy</a>
</div>
</footer>
	      
	   
	      
  
	      
	     
	  
	
</body>
</html>