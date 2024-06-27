<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>patient delete</title>


<link rel="stylesheet" href="css/NavBar.css">
<style><%@include file="css/NavBar.css"%></style>

<link rel="stylesheet" href="css/footer.css">
<style><%@include file="css/footer.css"%></style>

<link rel="stylesheet" href="css/button.css">
<style><%@include file="css/button.css"%></style>

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
  

		<%--get from useraccount.jsp--%>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
  <main>
  
  
     
	<form id="login_form" class="form_class"  action="delete1" method ="post"><br>
	
	
	     <div class="form_div">
	     
	<label>	Customer ID :</label>
	<input class="field_class"  type="text" name="cusid" value="<%= id %>" readonly><br>
	
	<label>	Name :</label>
	Name <input class="field_class" type="text" name="name" value="<%= name %>" readonly><br>
	
	<label>	Email  :</label>
	Email <input  class="field_class" type="text" name="email" value="<%= email %>" readonly><br>
	
	<label>	Phone No :</label>
	Phone No <input class="field_class"  type="text" name="phone" value="<%= phone %>" readonly><br>
	
	<label>	User Name :</label>
	User Name <input  class="field_class"  type="text" name="uname" value="<%= username %>" readonly><br>
	
	
	           <div class="button_container">
	          <button class="btn" type="submit" name="submit"><span>DELETE</span></button>
	         </div>
	 </div>
	</form>
	</main>
	
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