<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Profile</title> 

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
						<h2 class="form-title">User Profile</h2>
					
						<form  action="#" class="register-form"
							id="register-form" enctype="multipart/form-data">
							
							<div class="form-group">
								Full Name:<label for="name" ><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" style="cursor:pointer" placeholder="<%=session.getAttribute("fName") %> " readonly />
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
								Contact Number:<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
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
						
					
						<div class="form-group form-button">
								<p align="center"><a  style = "text-decoration:none" href = "UpdateProfile.jsp"
									class="form-submit" >Edit Profile</a></p>
							
								<p align="center"><a  style = "text-decoration:none; background-color:red" href = "DeletePatient"
									class="form-submit" onclick="return confirm('Are you sure you want to Delete Your Profile?');">Delete Profile</a></p>
						</div>	
					</div>
				</div>
			</div>
			
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>