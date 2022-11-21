<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" href="css/form-styles.css">
	<title>Booking Form</title>
	
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
	
	<style>
		body {
		  background-image: url('images/booking-image3.jpg');
		  background-repeat: no-repeat;
		  background-attachment: fixed;
		  background-size: cover;
		}
	</style>
	
	
</head>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<body  id= "page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">E-channeling</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="home.jsp">Services</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#home.jsp">About Us</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Profile.jsp"><%=session.getAttribute("name") %></a></li>
					
				</ul>
			</div>
		</div>
	</nav><br><br><br>

    <br>
	<div class="style-5">
	<form action="booking" method="post">
		<h1 class="f-h1" align= "center"><b>Book Your Doctor</b></h1>
		<fieldset>
		<legend><span class="number">1</span> Candidate Info</legend>
		
		<label for="name">Name:</label>
		<input type="text" name="name" placeholder="Your Name... ">
		
		<label for="age">Age:</label>
		<input type="text" name="age" placeholder="Your Age... ">
		
		<label for="address">Address:</label>
		<input type="text" name="address" placeholder="Your Address... ">
		
		<label for="gender">Gender:</label>
		<select id="gender" name="gender">
		  <option value="defualt" selected>Your Gender... </option>
		  <option value="Male">Male</option>
		  <option value="Female">Female</option>
		  <option value="Other">Other</option>
		</select>
		
		<label for="phone">Contact Number:</label>
		<input type="text" name="phone" placeholder="Your Contact Number... ">
		
		
		<label for="email">Email:</label>
		<input type="email" name="email" value="<%=session.getAttribute("email") %> " readonly>
		
		
	</fieldset>
	
	<fieldset>
	<legend><span class="number">2</span>Booking Info</legend>
		<label for="doctor">Doctor's Name:</label>
		<select id="doctor" name="doctor">
		  <option value="default" selected>Select Your Doctor... </option>
		  <option value="Prof. Anoja Abeyjeewa">Prof. Anoja Abeyjeewa</option>
		  <option value="Dr.T.C.P.Hapuarachchi">Dr.T.C.P.Hapuarachchi</option>
		  <option value="Prof. Ranjani Gamge">Prof. Ranjani Gamge</option>
		  <option value="Dr. Darshana Sirisena">Dr. Darshana Sirisena</option>
		  <option value="Dr.G.C.A.U.Patabedige">Dr.G.C.A.U.Patabedige</option>
		  <option value="Dr Mervin Fernando">Dr Mervin Fernando</option>
		</select>   
		
		<label for="hospital">Hospital Name:</label>
		<select id="hospital" name="hospital">
		  <option value="defualt" selected>Select Hospital... </option>
		  <option value="Nawaloka Hospitals PLC">Nawaloka Hospitals PLC</option>
		  <option value="Asiri Central Hospital">Asiri Central Hospital</option>
		  <option value="Durdans Hospital">Durdans Hospital</option>
		  <option value="Ninewells Hospital (Pvt) Ltd">Ninewells Hospital (Pvt) Ltd</option>
		  <option value="Hemas Hospital Wattala">Hemas Hospital Wattala</option>
		  <option value="Kings Hospital Colombo">Kings Hospital Colombo</option>
		</select>   
	</fieldset>
	
	<input type="submit" value="Book" />
	
	</form>
	
	</div>
	
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						New Kandy Road,<br /> Malabe
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">Our Vision</h4>
					<p class="lead mb-0">
						Your health is our happiness
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2022</small>
		</div>
	</div>
	
						
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	
	<script type="text/javascript"> 
	var status = document.getElementById("status").value;
	if(status == "success"){
		
		swal("Congrats!!Booking is Created Successfully","Please check your email after a few minutes","success");
	}
	if(status == "invalidName"){
		
		swal("Empty Input!!","Enter Full Name","error");
	}
	if(status == "invalidAge"){
		
		swal("Empty Input!!","Enter Your  Age","error");
	}
	if(status == "invalidAddress"){
		
		swal("Empty Input!!","Enter Your Address","error");
	}
	if(status == "invalidGender"){
		
		swal("Empty Input!!","Select Your Geneder(Male/Female/other)","error");
	}
	if(status == "invalidContact"){
	
		swal("Empty Input!!","Enter Your contact number","error");
	}
	if(status == "invalidEmail"){
	
		swal("Empty Input!!","Enter Your Valid Email","error");
	}
	if(status == "invalidDoctor"){
		
		swal("Empty Input!!","Select Doctor's name","error");
	}
	if(status == "invalidHospital"){
		
		swal("Empty Input!!","Select a Hospital","error");
	}
	
	</script>	
	
</body>
</html>