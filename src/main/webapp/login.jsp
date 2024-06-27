<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style><%@include file="css/button.css"%></style>
<style><%@include file="css/loginF.css"%></style>

</head>
<body>


        <header>
        <h1>Channel Fast</h1>
       
        </header>
        
    
        <main>

	        <form id="login_form" class="form_class" action="log" method="post">
	
	         <div class="form_div">
	         
	        <label>	User Name :</label>
	        <input type="text" class="field_class" name="uid" placeholder="Enter Your Username"required> <br>
	       
	       
	        <label>Password :</label>
	        <input id="pass" class="field_class"  type="password" name="pass" placeholder="Enter Your Password" required> <br>
	        
	        
	        <div class="button_container">
	        <button class="btn" type="submit" name="submit"><span>Login</span></button>
	        </div>
		
		
		      
		<br>
		   
            
               <div class="info_div">
                <p>you Have Account ?<a href="customerinsert.jsp">Create Account</a></p>
              </div>
		
		     </div>
        </form>
    </main>
    
    
    <footer>
        <p> Hospital <a href="#"> E Chanel</a></p>
    </footer>
		
	


</body>
</html>