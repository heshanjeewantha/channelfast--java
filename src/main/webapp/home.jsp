<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">


	
<title>Home</title>


<style><%@include file="css/NavBar.css"%></style>


<style><%@include file="css/footer.css"%></style>


<style><%@include file="css/button.css"%></style> 

<style><%@include file="css/my.css"%></style>


<style><%@include file="css/slideshow.css"%></style>


<style><%@include file="css/homebt.css"%></style>


<style>



h1 {
  font-size: 120px;
  left: 1000px;
  text-transform: uppercase;
  font-family: 'Gambetta', serif;
  letter-spacing: -3px;
  transition: 700ms ease;
  font-variation-settings: "wght" 311;
  margin-bottom: 0.8rem;
  color: PaleGoldenRod;
  outline: none;
  text-align: center;
}

h1:hover {
  font-variation-settings: "wght" 582; 
  letter-spacing: 2.5px;
}

p {
  font-size: 1.2em;
  line-height: 150%;
  text-align: center;
  color: MintCream;
  letter-spacing: .5px;
}


        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }


</style>


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
        
        
        
        
        
  <center style='font-size:350px;'><span  style="color: red;">&#128935;</span></center>

        
           
  
        
 
  <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="image/pt1.jpg" style="width:100%">
  
</div>

<div class="mySlides fade" id="ss">
  <div class="numbertext">2 / 3</div>
  
 
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="image/ado2.jpg" style="width:100%">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>




<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>


 <center>
 <div class="container">
  <h1 contenteditable>Channel Fast</h1>
  <p></p>
  <p>Welcome to Channelfast the largest Doctor Channeling Network in Sri Lanka. Our platform helps you find the right doctor for your medical needs. You can easily book appointments with doctors and specialists online, saving you time and hassle. If you are new to eChannelling, sign up today to get started. We look forward to helping you find the best healthcare services in Sri Lanka! .</p>
</div>

</center>

<br>
<br>
           
   <center> <a href="appointmentinsert.jsp"><button class='glowing-btn'><span class='glowing-txt'>A<span class='faulty-letter'>P</span>POINTMENT</span></button> </a></center>
  
   
      <!--   <div class="container">
		 <div class="btn"><a href="#">Lab</a></div> 
		<div class="btn"><a href="#" >Appointment</a></div>
		 <div class="btn"><a href="#" >Doctors</a></div>

	</div>	--> 
	  
 
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
  <br>
 <br>
 <br>
 <br>
  <br>
 <br>
 <br>
 <br>
 
  


  
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