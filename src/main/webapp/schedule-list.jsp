<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Schedule Detail</title>
            <style><%@include file="css/scheli.css"%></style>
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
              
                    <h3><center>Schedule Details</center></h3>
                    
                    <hr>
                  
                    <div>
                    <br>
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Date</th>
                                <th>Start time</th>
                                <th>End time</th>
                                <th>Venue</th>
                                <th>Appointment No</th>
                                <th>Doctor ID</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                          
                            <c:forEach var="schedule" items="${listSchedule}">

                                <tr>
                                    <td>
                                        ${schedule.sid}
                                    </td>
                                    <td>
                                        ${schedule.sdate}
                                    </td>
                                    <td>
                                        ${schedule.stime}
                                    </td>
                                    <td>
                                        ${schedule.etime}
                                    </td>
									<td>
                                        ${schedule.venue}
                                    </td>
                                    <td>
                                        ${schedule.appno}
                                    </td>
                                    <td>
                                        ${schedule.did}
                                    </td>
                                    <td><a href="edit?sid=${schedule.sid}"><input type = "submit" id = "edit" value ="Edit"></a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?sid=${schedule.sid}"><input type = "submit" id = "del" value ="Delete"></a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                    <br><br>
                    
                    
                    <a href="<%=request.getContextPath()%>/new">
                    <div class="submit">
                  
	                 <button class="btn" type="submit" name = "submit"  id = "submit" value ="Add new details"><span>Add New</span></button>
	       
	                 </div>
	                 </a>
                    
                   <!--   <a href="<%=request.getContextPath()%>/new">
                    <input type = "submit" id = "submit" value ="Add new details"></a>
                </div> -->
                
         
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