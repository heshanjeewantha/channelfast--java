<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
	
	
	
	<br>
	<br>

	
<main>

<form  id="login_form" class="form_class" action="update2" method ="post"><br>

 <div class="form_div">
	         
	         <label>	Customer ID :</label>
	         <input  class="field_class"  type="text" name="cusid" value="<%= id %>" readonly><br>
	        
	         <label>	Name </label>
	         <input  class="field_class"  type="text" name="name" value="<%= name %>"required><br>
	      
	         <label>Email : </label>
	         <input  class="field_class"  type="text" name="email" value="<%= email %>"required><br>
	     
	         <label>Phone No :</label>
	         <input class="field_class"   type="text" name="phone" pattern="[076][0-9]{9}" maxlength="10" required value="<%= phone %>"><br>
	
	         <label>User Name :</label>
	         <input  class="field_class"  type="text" name="uname" value="<%= username %>"required><br>
	           
	          <label>Password :</label>
	          <input  class="field_class"  type="password" name="pass" value="<%= password %>"required><br><br>
	
	           
	           <br>
	       
	       
	       
	           <div class="button_container">
	          <button class="btn" type="submit" name="submit"><span>Update</span></button>
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