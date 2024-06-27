<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css\contactus.css">
    <style><%@include file="css\contactus.css"%></style>
 
    <link rel="stylesheet" href="css\footer.css">
    <style><%@include file="css\footer.css"%></style>
    
    
    <style><%@include file="css/NavBar.css"%></style>
    <style><%@include file="css/button.css"%></style>
    
    
    
<style><%@include file="css/footer.css"%></style>
    
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor List - eChanneling</title>
    <style>
        body {
/*font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;*/
            background-size:cover ;
            background-repeat: no-repeat;
            background-attachment:fixed ;
           
        }

        table {
            border-collapse: collapse;
            width: 100%;
            background-color:  #78c7d2;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #14b0cc;
        }

        @media screen and (max-width: 600px) {
            table {
                border: 1;
            }

            table thead {
                display: none;
            }

            table tr {
                margin-bottom: 10px;
                display: block;
                border: 1px solid #ccc;
            }

            table td {
                border-bottom: 1px solid #ddd;
                display: block;
                text-align: right;
            }

            table td:before {
                content: attr(data-label);
                float: left;
                font-weight: bold;
            }
        }
    </style>
</head>
<body >
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
    
   <h1>Doctor Information</h1>
    <table>
        <tr>
            <th>Doctor Name</th>
            <th>Specialization</th>
            <th>Hospital</th>
            <th>Available Slots</th>
        </tr>
        <tr>
            <td>Dr. John kalugalla</td>
            <td>Cardiologist</td>
            <td>City General Hospital</td>
            <td>Monday, Wednesday: 10am-12pm</td>
        </tr>
        <tr>
            <td>Dr. Jane perera</td>
            <td>Pediatrician</td>
            <td>Children's Clinic</td>
            <td>Tuesday, Thursday: 2pm-4pm</td>
        </tr>

     <tr>
        <td>Dr. S. K. Perera</td>
        <td>Cardiologist</td>
        <td>Colombo Heart Center</td>
        <td>Monday, Wednesday: 9am-11am</td>
    </tr>
    <tr>
        <td>Dr. M. P. Jayawardena</td>
        <td>Orthopedic Surgeon</td>
        <td>National Orthopedic Hospital</td>
        <td>Tuesday, Thursday: 1pm-3pm</td>
    </tr>
    <tr>
        <td>Dr. K. A. Silva</td>
        <td>Pediatrician</td>
        <td>Childcare Clinic</td>
        <td>Monday, Friday: 10am-12pm</td>
    </tr>
    <tr>
        <td>Dr. R. L. Fernando</td>
        <td>Gynecologist</td>
        <td>Women's Hospital</td>
        <td>Wednesday, Thursday: 2pm-4pm</td>
    </tr>
    <tr>
        <td>Dr. N. P. Rajapakse</td>
        <td>Ophthalmologist</td>
        <td>Eye Care Center</td>
        <td>Tuesday, Friday: 3pm-5pm</td>
    </tr>
    <tr>
        <td>Dr. G. R. Senanayake</td>
        <td>Dermatologist</td>
        <td>Skincare Clinic</td>
        <td>Wednesday, Saturday: 11am-1pm</td>
    </tr>
    <tr>
        <td>Dr. P. K. Bandara</td>
        <td>ENT Specialist</td>
        <td>Ear Nose Throat Hospital</td>
        <td>Thursday, Saturday: 9am-11am</td>
    </tr>
    <tr>
        <td>Dr. T. M. Karunaratne</td>
        <td>Psychiatrist</td>
        <td>Mental Health Center</td>
        <td>Monday, Wednesday: 2pm-4pm</td>
    </tr>
    <tr>
        <td>Dr. H. A. Gunaratne</td>
        <td>Neurologist</td>
        <td>Neurology Institute</td>
        <td>Tuesday, Thursday: 10am-12pm</td>
    </tr>
    <tr>
        <td>Dr. A. R. Wickramasinghe</td>
        <td>Urologist</td>
        <td>Urology Clinic</td>
        <td>Friday, Saturday: 1pm-3pm</td>
    </tr>
    
    <tr>
        <td>Dr. Nimal Perera</td>
        <td>Cardiologist</td>
        <td>Colombo Heart Center</td>
        <td>Monday, Wednesday: 9am-11am</td>
    </tr>
    <tr>
        <td>Dr. S. L. Jayasuriya</td>
        <td>Orthopedic Surgeon</td>
        <td>National Orthopedic Hospital</td>
        <td>Tuesday, Thursday: 1pm-3pm</td>
    </tr>
    <tr>
        <td>Dr. K. A. Ranasinghe</td>
        <td>Pediatrician</td>
        <td>Childcare Clinic</td>
        <td>Monday, Friday: 10am-12pm</td>
    </tr>
    <tr>
        <td>Dr. H. M. Wickramaratne</td>
        <td>Gynecologist</td>
        <td>Women's Hospital</td>
        <td>Wednesday, Thursday: 2pm-4pm</td>
    </tr>
    <tr>
        <td>Dr. P. D. Karunaratne</td>
        <td>Ophthalmologist</td>
        <td>Eye Care Center</td>
        <td>Tuesday, Friday: 3pm-5pm</td>
    </tr>
    <tr>
        <td>Dr. S. A. Wijewardena</td>
        <td>Dermatologist</td>
        <td>Skincare Clinic</td>
        <td>Wednesday, Saturday: 11am-1pm</td>
    </tr>
    <tr>
        <td>Dr. U. P. Senanayake</td>
        <td>ENT Specialist</td>
        <td>Ear Nose Throat Hospital</td>
        <td>Thursday, Saturday: 9am-11am</td>
    </tr>
    <tr>
        <td>Dr. M. D. Karunathilaka</td>
        <td>Psychiatrist</td>
        <td>Mental Health Center</td>
        <td>Monday, Wednesday: 2pm-4pm</td>
    </tr>
    <tr>
        <td>Dr. H. A. Wijayasinghe</td>
        <td>Neurologist</td>
        <td>Neurology Institute</td>
        <td>Tuesday, Thursday: 10am-12pm</td>
    </tr>
    <tr>
        <td>Dr. A. P. Perumal</td>
        <td>Urologist</td>
        <td>Urology Clinic</td>
        <td>Friday, Saturday: 1pm-3pm</td>
    </tr>
    
</table>
    
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