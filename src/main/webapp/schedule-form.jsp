<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Schedule Form</title>
          <style> <%@include file="css/schein.css"%></style>
           <style><%@include file="css/button.css"%></style>
           <style><%@include file="css/NavBar.css"%></style>
        </head>

        <body>
      
                  <header>
		             <ul>
					    <li><a href="home.jsp">Home</a></li>
					   
					    <li><a href="contactusinsert.jsp">Contact us</a></li>
					    <li><a href="aboutus.jsp">About us</a></li>
					    <li><a href="<%=request.getContextPath()%>/list">Schedule</a></li>
					    <li style="float:right"><a class="active" href="logindoc.jsp ">Sign out</a></li>
					    
		  			</ul>
		          </header>
		                   
                        <div class = "sform">
                        <c:if test="${schedule != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${schedule == null}">
                            <form action="insert" method="post">
                        </c:if>

                       <caption>
                            <h2>
                                <c:if test="${schedule != null}">
                                    Edit Schedule
                                </c:if>
                                <c:if test="${schedule == null}">
                                    Add New Detail
                                </c:if>
                            </h2>
                        </caption>
                      

                        <c:if test="${schedule != null}">
                            <input type="hidden" name="sid" value="${schedule.sid}" id = "sid" /><br><br>
                        </c:if>
                      <label>Date</label><br> <input type="text" value="${schedule.sdate}" id = "sdate" name="sdate" placeholder= "01/01/2023" pattern= "(((0[1-9])|([12][0-9])|(3[01]))\/((0[0-9])|(1[012]))\/((20[012]\d|19\d\d)|(1\d|2[0123])))" required="required"><br><br>
                        <label>Start time</label><br> <input type="text" value="${schedule.stime}" id = "stime" name="stime" placeholder= "06:00 PM" pattern="^(0[1-9]|1[0-2]):[0-5][0-9] (AM|PM)$" required="required"><br><br>
                        <label>End time</label><br> <input type="text" value="${schedule.etime}" id = "etime" name="etime" placeholder= "06:15 PM" pattern="^(0[1-9]|1[0-2]):[0-5][0-9] (AM|PM)$" required="required"><br><br>
                        <label>Venue</label><br> <input type="text" value="${schedule.venue}" id = "venue" name="venue" placeholder= "Hemas Hospital" required="required"><br><br>
                        <label>Appointment No</label> <br><input type="text" value="${schedule.appno}" id = "appno" name="appno" placeholder= "A0001" pattern="^A\d{4}$" required="required"><br><br>
                        <label>Doctor ID</label><br> <input type="text" value="${schedule.did}" id = "did" name="did" placeholder= "1" required="required"><br><br>
                      

                      <!--   <input type="submit" name = "submit" id = "submit" value ="Save"> -->
                        
                        
                   	<div class="submit">
                  
	                 <button class="btn" type="submit" name = "submit" id = "submit" value ="Save"><span>Submit</span></button>
	       
	                 </div>
	                 
	          
	                 
    
                        </form>
                        </div>
                       
             </body>

        </html>