<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete contact us </title>
  <style> <%@include file="/css/contactus.css"%></style>
     <style> <%@include file="/css/footer1.css"%></style>
      <style><%@include file="css/button.css"%></style>
     <style><%@include file="css/NavBar.css"%></style>
    
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
     <style>
  form {
    max-width: 400px;
    margin: auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
  }

  input[type="text"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  input[type="submit"] {
    background-color: #044caa;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #4caf50;
  }
</style>
 <script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete your data?");
    }
</script> 

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
        <div class="topic-text">Delete Information</div>
        <p>you can delete your Information .</p> <br>
		<%--get from useraccount.jsp--%>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String subject = request.getParameter("uname");
		String message = request.getParameter("pass");
	%>
	
	

	<form action="deletec" method ="post"><br>
	Customer ID <input type="text" name="cusid" value="<%= id %>" readonly><br>
	Name <input type="text" name="name" value="<%= name %>" readonly><br>
	Email <input type="text" name="email" value="<%= email %>" readonly><br>
	Phone No <input type="text" name="phone" value="<%= phone %>" readonly><br>
	subject <input type="text" name="uname" value="<%= subject %>" readonly><br>
	

	
	
	<div class="submit">
         <div class="button_container">
	          <button class="btn" type="submit" name="submit" value="Delete My Data"onclick="return confirmDelete()"><span>Delete My Data</span></button>
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
</body>
</html>