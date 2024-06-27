<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update or delete</title>
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
    <li><a href="appointmentinsert.jsp">Appointment</a></li>
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
        <div class="topic-text">Make Your Appointment</div>
        <p>Please Don't change your contact number.</p><br>
      
	
	<table>
	<c:forEach var="app" items="${appDetails}">
	
	<c:set var="aNo" value="${app.id}"/>
	<c:set var="doctor" value="${app.doctor}"/>
	<c:set var="pNmae" value="${app.pNmae}"/>
	<c:set var="gender" value="${app.gender}"/>
	<c:set var="age" value="${app.age}"/>
	<c:set var="address" value="${app.address}"/>
	<c:set var="contact" value="${app.contact}"/>
	<c:set var="email" value="${app.email}"/>
	<c:set var="date" value="${app.date}"/>
	<c:set var="center" value="${app.center}"/>
	<tr>
		<td>Appointment No</td>
		<td>${app.id}</td>
	</tr>
	<tr>
		<td>Doctor Name</td>
		<td>${app.doctor}</td>
	</tr>
	<tr>
		<td>Patient Name</td>
		<td>${app.pNmae}</td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>${app.gender}</td>
	</tr>
	<tr>
		<td>Age</td>
		<td>${app.age}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${app.address}</td>
	</tr>
		<td>Contact</td>
		<td>${app.contact}</td>
	<tr>	
	</tr>
		<td>Email</td>
		<td>${app.email}</td>
	<tr>	
	</tr>
		<td>Date</td>
		<td>${app.date}</td>
	<tr>	
	</tr>
		<td>Center</td>
		<td>${app.center}</td>
	<tr>	
	
	</c:forEach>
	</table>
	
	<c:url value="updateAppointment.jsp" var="appupdate">
		<c:param name="aNo" value="${aNo}"/>
		<c:param name="doctor" value="${doctor}"/>
		<c:param name="pNmae" value="${pNmae}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="contact" value="${contact}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="center" value="${center}"/>
	
	</c:url>

	
	
	<a href="${appupdate}">
	<div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="update" value="Update My Data"><span>Update</span></button>
	         </div>
	         </div>
	         </a>
	
	<c:url value="deleteAppointment.jsp" var="appdelete">
		<c:param name="aNo" value="${aNo}"/>
		<c:param name="doctor" value="${doctor}"/>
		<c:param name="pNmae" value="${pNmae}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="contact" value="${contact}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="center" value="${center}"/>
	
	</c:url>
	
	
	<a href="${appdelete}">
	<div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="delete" value="delete My Data"><span>Delete</span></button>
	         </div>
	         </div>
	         </a>
	
	 
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
	         