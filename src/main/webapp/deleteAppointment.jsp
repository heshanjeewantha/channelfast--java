<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update or delete</title>


      <style><%@include file="css\contactus.css"%></style>
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
      
	
	<%
		String aNo  = request.getParameter("aNo");
		String doctor  = request.getParameter("doctor");
		String pNmae  = request.getParameter("pNmae");
		String gender  = request.getParameter("gender");
		String age  = request.getParameter("age");
		String address  = request.getParameter("address");
		String contact  = request.getParameter("contact");
		String email  = request.getParameter("email");
		String date  = request.getParameter("date");
		String center  = request.getParameter("center");
		
	%>
	
    <form action="deleteka" method="post">
    
    Appointment No<br>
    	<input type="text" name="aNo" value="<%=aNo%>"readonly><br>
    Doctor Name<br>
    	<input type="text" name="doctor" value="<%=doctor%>"readonly><br>
	Patient Name<br>
		<input type="text" name="pNmae" value="<%=pNmae%>"readonly><br>
	Gender<br>
		<input type="text" name="gender" value="<%=gender%>"readonly><br>
	Age<br>
		<input type="text" name="age" value="<%=age%>"readonly><br>
	Address<br>
		<input type="text" name="address" value="<%=address%>"readonly><br>
	Contact Number<br>
		<input type="text" name="contact" value="<%=contact%>"readonly><br>
	Email<br>
		<input type="text" name="email" value="<%=email%>"readonly><br>
	Date<br>
		<input type="text" name="date" value="<%=date%>"readonly><br>
	Center<br>
		<input type="text" name="center" value="<%=center%>"readonly><br>
    
    	
    	
    	<div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="submit" value="delete Appointment"><span>Delete</span></button>
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