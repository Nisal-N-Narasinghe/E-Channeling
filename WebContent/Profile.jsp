<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    

    
 <%
	
	 if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");	/*if user not loged in redirect to login page*/
	}
	

%>   
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

	
	
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
	<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/index-styles.css" rel="stylesheet" />
	
<title>Profile</title> 

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->

<style>
		.profileBac{
     background-image: url("images/uppro.png");
   	 background-attachment:fixed;
     padding-bottom:5px;
     border-radius:20px; }
     
     .profileh {
  display: inline-block;
  background: #202A44;
  color: #fff;
  border-bottom: none;
  width: auto;
  padding: 15px 39px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  margin-top: 0px;
  cursor: pointer; }
  .profileh:hover {
    background: #1abc9c; }
    
    body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: black;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

.form-container .chechbooking {
  background-color: #6dabe4;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}

	</style>
	
<link rel="stylesheet" href="css/style.css">
</head>
<body class="f-body" id= "page-top">



	

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">



<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div>
			<a  style= "padding:50px" class="navbar-brand" href="#page-top">E-channeling</a>
			
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			
				
				
			
		</div>
		<p style="padding:15px"><a  style = "text-decoration:none" href = "home.jsp"
									class="profileh" >Home</a></p>
	</nav><br><br><br>

    <br>

	<div class="profileBac" >
	
	
		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
			
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">User Profile</h2>
					
						<form  action="#" class="register-form"
							id="register-form" enctype="multipart/form-data">
						
							<div class="form-group">
								Full Name:<label for="name" ><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" style="cursor:pointer" placeholder="<%=session.getAttribute("fName") %>" readonly />
							</div>
							<div class="form-group">
								Address:<label for="address"><i
									class="zmdi zmdi-home"></i></label> <input 
									type="text" name="address" id="address" style="cursor:pointer" placeholder="<%=session.getAttribute("address") %>"readonly />
							</div>
							<div class="form-group">
								Age:<label for="age"><i
									class="zmdi zmdi-calendar-check"></i></label> <input
									type="text" name="age" id="age" style="cursor:pointer" placeholder="<%=session.getAttribute("age") %>"readonly />
							</div>
							<div class="form-group">
								Gender:<label for="gender"><i
									class="zmdi zmdi-male-female"></i></label> <input
									type="text" name="gender" id="gender" style="cursor:pointer" placeholder="<%=session.getAttribute("gender") %>"readonly />
							</div>
							<div class="form-group">
								Contact Number:<label for="contact"><i class="zmdi zmdi-phone"></i></label>
								<input type="text" name="contact" id="contact"
									style="cursor:pointer" placeholder="<%=session.getAttribute("phone") %>"readonly  />
							</div>
							<div class="form-group">
								Email:<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" style="cursor:pointer" placeholder="<%=session.getAttribute("email") %>"readonly />
							</div>
							
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img name="proimg" style ="clip-path:circle()" src="pimages/<%=session.getAttribute("img") %>" alt="sing up image">
						</figure>
						
						 <button class="open-button" onclick="openForm()" >Bookings</button> 

								<div class="form-popup" id="myForm">
								  <form action="/action_page.php" class="form-container">
								  
								  <b>Your Name</b>
   									 <input type="text" placeholder="<%=session.getAttribute("ptname") %>" readonly>
   								<b>Selected Doctor</b>
									 <input type="text" placeholder="<%=session.getAttribute("ptdoctor") %>" readonly>
								<b>Channeling Center</b>
									  <input type="text" placeholder="<%=session.getAttribute("pthospital") %>" readonly>
									  
									  
									  <p align="center"><a  style = "text-decoration:none" href = "PatientBooking"
									class="btn chechbooking" >Click to check bookings</a></p>
								    	
										
										
								    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
								  </form>
								</div>
								
								<script>
								function openForm() {
								  document.getElementById("myForm").style.display = "block";
								}
								
								function closeForm() {
								  document.getElementById("myForm").style.display = "none";
								}
								</script>
					
						<div class="form-group form-button">
						
								<p align="center"><a  style = "text-decoration:none" href = "UpdateProfile.jsp"
									class="form-submit" >Edit Profile</a></p>
									
								<br>
							
								<p align="center"><a  style = "text-decoration:none; background-color:red" href = "DeletePatient"
									class="form-submit"  onclick="return confirm('Are you sure you want to Delete Your Profile?');">Delete Profile</a></p>
									
						</div>	
					</div>
				</div>
			</div>
			
		</section>


	</div>
	
	
	
	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript"> 
	var status = document.getElementById("status").value;
	
	if(status == "bookingDetailsLoaded"){
		
		swal("You have Bookings!!","Please Click on Bookings","success");
	}
	if(status == "nobookingsAvailable"){
		swal({
            title: "No Bookings Available!!",
            text: "Click 'OK' to Book your Doctor Now..",
            icon: "error",
            closeOnConfirm: false
    }).then(
            function () {
                    window.location.href = 'booking.jsp';
            }
    );
	}
	
	</script>
	


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>