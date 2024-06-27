<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
 <style><%@include file="css/login1.css"%></style>
 <style><%@include file="css/button.css"%></style>
 <style><%@include file="css/NavBar.css"%></style>


</head>
<body>


 <br><br><br><br>
	<h1 class="main-title">CHANNELFAST</h1>
	
	<h2><center>Doctor Login Portal</center></h2>
 
 <div class = "sform">

 <center>  <h2>Login</h2> </center>
 
 <form action="log1" method= "POST">
   <center> <label>Username </label><br><br>
    <input type="text" name="uid" id="uid" placeholder="Username"  required> <br><br>
	<label>Password </label><br><br>
	<input type="password" name="pass" id="upw" placeholder="Password"  required> <br><br>
 </center>
 	
 	
 	
	           <div class="button_container">
	          <button class="btn" type="submit" name = "submit" id = "submit" value ="Login"><span>Login</span></button>
	         </div>
 </form>
 </div>
 
</body>
</html>