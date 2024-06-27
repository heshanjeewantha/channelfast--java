<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact Us</title>
    <style> <%@include file="/css/contactus.css"%></style>
     <style> <%@include file="/css/footer1.css"%></style>
     <style><%@include file="css/button.css"%></style>
     <style><%@include file="css/NavBar.css"%></style>
     
    
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     
     <script>
	function validateForm() {
 	var x = document.forms["myForm"]["uid"].value;
  	if (x == "" || x == null) {
    alert("Subject must be filled out");
    return false;
    }
    }
</script>
</head>  <!--end of head -->
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
        <div class="topic-text">Contact With Us</div>
        <p>If you have any questions please fell free to contact with us.</p>

<form name="myForm" action="insertc" method="post" onsubmit="return validateForm()" >
 <div class="input-box">
          name<input type="text" name="name"placeholder="Enter your name" required>
        </div>
        <div class="input-box">
          Email <input type="email"name="email" placeholder="Enter your email"required>
        </div>
        <div class="input-box">
          phone number  <input type="text"name="phone" placeholder="Enter your phone number" pattern="[076][0-9]{9}" maxlength="10" required>
        </div>
        <div class="input-box">
          subject<input type="text" name="uid"placeholder="Enter your subject"required>
        </div>
        <div class="input-box message-box">
            Message <textarea  name="psw" required> </textarea><br>
        </div>
    
        
         <div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="submit"><span>Submit</span></button>
	         </div>
	         </div>
        
      </form>
    </div>
    </div>
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
</body> <!--end of body -->
</html>