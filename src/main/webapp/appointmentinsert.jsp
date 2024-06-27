<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	
<head>
<meta charset="ISO-8859-1">
<title>update or delete</title>
  <style> <%@include file="/css/contactus.css"%></style>
     <style> <%@include file="/css/footer1.css"%></style>
       <style><%@include file="css/button.css"%></style>
     <style><%@include file="css/NavBar.css"%></style>
     <style><%@include file="css/my.css"%></style>
     
    
    
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
      

<form action="insertka" method="post">

	Doctor Name<br><hr><br>
	<input type="text" name="doctor"required><br><br>
	Patient Name<br><hr><br>
	<input type="text" name="pNmae"required><br><br>
	Gender<br><hr><br>
	<input type="text" name="gender"required><br><br>
	Age<br><hr><br>
	<input type="text" name="age"required><br><br>
	Address<br><hr><br>
	<input type="text" name="address"required><br><br>
	Contact Number<br><hr><br>
	<input type="text" name="contact" pattern="[076][0-9]{9}" maxlength="10" required><br><br>
	Email<br><hr><br>
	<input type="email" name="email"required><br><br>
	Date<br><hr><br>
	<input type="text" name="date"required><br><br>
	Center<br><hr><br>
	<input type="text" name="center"required><br><br>
	
	
	
	
	<div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="submit" value="Submit Appointment"><span>Submit</span></button>
	         </div>
	         </div>

</form>
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