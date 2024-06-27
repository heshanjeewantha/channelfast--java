<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>patient</title>


<!--link css -->

<link rel="stylesheet" href="css/button.css">
<style><%@include file="css/button.css"%></style>

<link rel="stylesheet" href="css/loginF.css">
<style><%@include file="css/loginF.css"%></style>


</head>
<body>
  <ul>


        <header>
        <h1>Channel Fast</h1>
       
        </header>


<main>
     <form  id="login_form" class="form_class" action="insert1" method="post">
     <div class="form_div">

	    <label>Name : </label>
	     <input  class="field_class" type="text" name="name"required> <br>
	     
	    <label>Email : </label>
	     <input  class="field_class"  type="text" name="email" required> <br>
	     
	    <label>Phone : </label>
	     <input  class="field_class"  type="text" name="phone"pattern="[076][0-9]{9}" maxlength="10" required> <br>
	     
	     
	    <label>User Name : </label>
	     <input  class="field_class"  type="text" name="uid"required> <br>
	     
	     
	    <label>Password : </label>
	     <input  class="field_class"  type="password" name="psw"required> <br>
	
	
	<br>
	
	         <div class="button_container">
	          <button class="btn" type="submit" name="submit"><span>SUBMIT</span></button>
	         </div>
	         
	         

   </div>
</form>
</main>


     <footer>
        <p> Hospital <a href="#"> E Chanel</a></p>
    </footer>
		

</body>
</html>