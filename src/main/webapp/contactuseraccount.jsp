 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update or delete</title>
  <!--link css -->
    <style> <%@include file="/css/contactus.css"%></style>
     <style> <%@include file="/css/footer1.css"%></style>
     <style><%@include file="css/button.css"%></style>
      <style><%@include file="css/NavBar.css"%></style>
     

    
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <style>
  table {
    border-collapse: collapse;
    width: 100%;
    border: 1px solid #ddd;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:nth-child(even) {
    background-color: #f9f9f9;
  }
</style>
     

</head>
<body>
  <ul>
    <li><a href="home.jsp">Home</a></li>
    <li><a href="login.jsp">Dashbord</a></li>
    <li><a href="doctors.jsp">Doctors</a></li>
    <li><a href="appointmentinsert">Appointment</a></li>
    <li><a href="contactusinsert.jsp">Contact us</a></li>
    <li><a href="aboutus.jsp">About us</a></li>
    <li style="float:right"><a class="active" href="logindoc.jsp">Login</a></li>
    <li style="float:right"><a class="active" href="customerinsert.jsp">Register</a></li>
  </ul>


  
		
  <div class="container">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">New Kandy Road</div>
          <div class="text-two">kaduwela</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">0110390336</div>
          <div class="text-two">0112458899</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">channelfast@gmail.com</div>
          <div class="text-two">info.cfast@gmail.com</div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Contact info</div>
        <p>you can update or delete your informations.</p><br>
      


<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="suBject" value="${cus.subject}"/>
	<c:set var="message" value="${cus.message}"/>
	

	
	
	
	<tr>
		<td>Contact ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Contact Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Contact Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Contact number</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Subject</td>
		<td>${cus.subject}</td>
	</tr>
	<tr>
		<td>Message</td>
		<td>${cus.message}</td>
	</tr>
	
	</c:forEach>
	
	</table>
	<c:url value="updateContactus.jsp" var="cusUpdate">
	 	<c:param name="id" value="${id}" />
	 	<c:param name="name" value="${name}" />
	 	<c:param name="email" value="${email}" />
	 	<c:param name="phone" value="${phone}" />
	 	<c:param name="uname" value="${suBject}" />
	 	<c:param name="pass" value="${message}" />
	 </c:url>
	 
	 
	 <div class="button">
	 
	<a href="${cusUpdate}">
	
	 <div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="update" value="Update info"><span>Update</span></button>
	         </div>
	         </div>
	        
	</a>
	</div>
	
	<br>
	
	<c:url value="deletecontactus.jsp" var="cusDelete">
		<c:param name="id" value="${id}" />
	 	<c:param name="name" value="${name}" />
	 	<c:param name="email" value="${email}" />
	 	<c:param name="phone" value="${phone}" />
	 	<c:param name="uname" value="${suBject}" />
	 	<c:param name="pass" value="${message}" />
	</c:url>
	 <div class="button">
	 
	<a href="${cusDelete}">
	<div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="delete" value="Delete info"><span>Delete</span></button>
	         </div>
	         </div>
	
	</a>
	</div>
	
	 
  <hr>
  <hr>
  <hr>


<!--bottom bar-->
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
