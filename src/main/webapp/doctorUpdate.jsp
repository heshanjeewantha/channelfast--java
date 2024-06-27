<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>

<style><%@include file="css/NavBar.css"%></style>
<style> <%@include file="/css/docupd.css"%></style>

<style><%@include file="css/button.css"%></style>

                                             

 <script>
    function confirmDelete() {
        return confirm("Are you sure you want to update your data?");
    }
</script> 
</head>
<body>

    <% 
      String did = request.getParameter("did");
      String duname = request.getParameter("duname");
      String dname = request.getParameter("dname");
      String dhos = request.getParameter("dhos");
      String dspec = request.getParameter("dspec");
      String dmob = request.getParameter("dmob");
      String dmail = request.getParameter("dmail");
      String dpass = request.getParameter("dpass");
      
    %>
   <div class = "sform">
    
    <h2>Update Profile</h2>
	<form action="update1" method ="post"><br>
	<label>Doctor ID</label><br><br>
	<input type="text" name="did"  id ="did" value="<%= did%>" placeholder="Doctor ID" required readonly><br><br>
	<label>Username</label><br><br>
	<input type="text" name="duname" id ="duname" value="<%= duname %>" placeholder="Username" required><br><br>
	<label>Name</label><br><br>
	<input type="text" name="dname" id ="dname" value="<%= dname %>" placeholder="Name" required><br><br>
	<label>Hospital</label><br><br>
	<input type="text" name="dhos" id ="dhos" value="<%= dhos%>" placeholder="Hospital" required><br><br>
	<label>Specialization</label><br><br>
	<input type="text" name="dspec" id ="dspec" value="<%= dspec%>" placeholder="Specialization" required><br><br>
    <label>Mobile Number</label><br><br>
	<input type="text" name="dmob" id ="dmob" value="<%= dmob%>" placeholder="Mobile Number" pattern="[0-9]{10}" required><br><br>
    <label>E-mail</label><br><br>
	<input type="text" name="dmail" id ="dmail" value="<%= dmail%>" placeholder="E-mail" pattern="[^@\s]+@[^@\s]+" required><br><br>
    <label>Password</label><br><br>
	<input type="password" name="dpass" id ="dpass" value="<%= dpass %>" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,}" required><br><br>
    


	<!--  <input type="submit" name = "submit" id = "submit" > -->
	
	 <div class="submit">
                  
	    <button class="btn" type="submit"name = "submit" id = "submit"><span> Submit </span></button>
	       
	  </div>
	</form>
    </div> 
</body>
</html>