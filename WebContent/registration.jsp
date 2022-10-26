<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Enter Full Name" />
							</div>
							<div class="form-group">
								<label for="address"><i
									class="zmdi zmdi-home"></i></label> <input
									type="text" name="address" id="address" placeholder="Enter Your Address" />
							</div>
							<div class="form-group">
								<label for="age"><i
									class="zmdi zmdi-calendar-check"></i></label> <input
									type="text" name="age" id="age" placeholder="Enter Your age" />
							</div>
							<div class="form-group">
								<label for="gender"><i
									class="zmdi zmdi-male-female"></i></label> <input
									type="text" name="gender" id="gender" placeholder="Gender (male/female/other)" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username" placeholder="Simple user name" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image2.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
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
	if(status == "success"){
		
		swal("Congrats!!","Account Created Successfully","success");
	}
	if(status == "invalidName"){
		
		swal("Empty Input!!","Enter Full Name","error");
	}
	if(status == "invalidAddress"){
		
		swal("Empty Input!!","Enter Your Addres","error");
	}
	if(status == "invalidAge"){
		
		swal("Empty Input!!","Enter Your Age","error");
	}
	if(status == "invalidGender"){
		
		swal("Empty Input!!","Enter Your Geneder(Male/Female/other)","error");
	}
	if(status == "invalidContact"){
	
		swal("Empty Input!!","Enter Your contact number","error");
	}
	if(status == "invalidContactnum"){
		
		swal("Empty Input!!","Enter Your contact1 number","error");
	}
	if(status == "invalidEmail"){
	
		swal("Empty Input!!","Enter Your Valid Email","error");
	}
	if(status == "invalidUserName"){
		
		swal("Empty Input!!","Enter user Name","error");
	}
	if(status == "invalidPassword"){
		
		swal("Empty Input!!","Enter a Password","error");
	}
	if(status == "passwordMissMatch"){
		
		swal("Invalid re-password!!","Password miss match","error");
	}

	
	</script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>