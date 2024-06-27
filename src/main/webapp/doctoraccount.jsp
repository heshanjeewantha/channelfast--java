<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Profile</title>
                                               <style><%@include file="css/docpro.css"%></style>
                                               <style><%@include file="css/button.css"%></style>
                                                <style><%@include file="css/NavBar.css"%></style>
                                             
     

</head>
<body>

         
            <header>
             <ul>
			    <li><a href="home.jsp">Home</a></li>
			    
			    <li><a href="contactusinsert.jsp">Contact us</a></li>
			    <li><a href="aboutus.jsp">About us</a></li>
			    <li style="float:right"><a class="active" href="logindoc.jsp">Sign out</a></li>
			   
  			</ul>
            </header>
               
  
  
  			<h3>My Profile</h3>
                    
               
                  
  
	<table>
	
   <c:forEach var="doc" items = "${docDetails}">
   
    <c:set var="did" value="${doc.doc_id}"/>
	<c:set var="duname" value="${doc.d_uname}"/>
	<c:set var="dname" value="${doc.d_name}"/>
	<c:set var="dhos" value="${doc.d_hos}"/>
	<c:set var="dspec" value="${doc.d_spec}"/>
	<c:set var="dmob" value="${doc.d_mob}"/>
	<c:set var="dmail" value="${doc.d_mail}"/>
	<c:set var="dpass" value="${doc.d_pw}"/>
   
   <tr height ="40px">
   		<td>Doctor ID</td>
   		<td>${doc.doc_id}</td>
   </tr>
   <tr height ="40px">
   		<td>Username</td>
   		<td>${doc.d_uname}</td>
   </tr>
   <tr height ="40px">
   		<td>Name</td>
   		<td>${doc.d_name}</td>
   </tr>
   <tr height ="40px">
   		<td>Hospital</td>
   		<td>${doc.d_hos}</td>
   </tr>
   <tr height ="40px">
   		<td>Specialization</td>
   		<td>${doc.d_spec}</td>
   </tr>
   <tr height ="40px">
   		<td>Mobile Number</td>
   		<td>${doc.d_mob}</td>
   </tr>
   <tr height ="40px">
   		<td>E-mail</td>
   		<td>${doc.d_mail}</td>
   </tr>
   <tr height ="40px">
   		<td>Password</td>
   		<td>${doc.d_pw}</td>
   </tr>
   <tr height ="40px">
   		<td>Schedule</td>
   		<td><a href="<%=request.getContextPath()%>/list"><input type = "button" id = "del" value ="Schedule"></a></td>
   </tr>
   </c:forEach>
   </table>
   <br><br>
   
   <c:url value="doctorUpdate.jsp" var="docUpdate">
	 	<c:param name="did" value="${did}" />
	 	<c:param name="duname" value="${duname}" />
	 	<c:param name="dname" value="${dname}" />
	 	<c:param name="dhos" value="${dhos}" />
	 	<c:param name="dspec" value="${dspec}" />
	 	<c:param name="dmob" value="${dmob}" />
	 	<c:param name="dmail" value="${dmail}" />
	 	<c:param name="dpass" value="${dpass}" />
	 </c:url>
   
  <!--   <a href = "${docUpdate}">
   <input type="submit" name="update" id = "submit"  value="Update Profile">
   </a>-->
   
   
   <a href = "${docUpdate}">
       <div class="submit">
                  
	    <button class="btn" type="submit" name="update" id = "submit"  value="Update Profile"><span>Update Profile</span></button>
	       
	  </div>
	   </a>
   
   
   
   
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