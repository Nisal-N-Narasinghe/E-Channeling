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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Update Profile</title> 

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<style>
		.updateBac{
		background-attachment:fixed;
     	background-image: url("images/uppro.png");
     	padding-bottom:5px;
     	border-radius:20px; }
     
     .updateprofbtn {
  display: inline-block;
  background: #1abc9c;
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
  .updateprofbtn:hover {
    background: #004B00; }

	</style>

<link rel="stylesheet" href="css/style.css">
</head>
<body>






	<div class="updateBac" >
	
	<p style="padding:15px"><a  style = "text-decoration:none" href = "Profile.jsp"
									class="updateprofbtn" >Back to Profile</a></p>

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Update Profile</h2>
						
					
					
						<form action="UpdatePatient" method="post" class="register-form"  id="register-form" >
							
							
							<div class="form-group">
								ID:<label for="name" ><i
									class="zmdi zmdi-shield-check"></i></label> <input
									type="text" name="id" id="id" style="cursor:pointer" value="<%= session.getAttribute("usId") %>" readonly />
							</div>
							<div class="form-group">
								Full Name:<label for="name" ><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name"  value="<%=session.getAttribute("fName") %> " />
							</div>
							<div class="form-group">
								Address:<label for="address"><i
									class="zmdi zmdi-home"></i></label> <input 
									type="text" name="address" id="address" value="<%=session.getAttribute("address") %>"/>
							</div>
							<div class="form-group">
								Age:<label for="age"><i
									class="zmdi zmdi-calendar-check"></i></label> <input
									type="text" name="age" id="age"  value="<%=session.getAttribute("age") %>" />
							</div>
							
							
							<div class="form-group">
								<h4><i class="zmdi zmdi-male-female"></i> Gender : <select name="gender" id="gender">
								<option value="<%=session.getAttribute("gender") %>" selected><%=session.getAttribute("gender") %></option>
								<option value="male">male</option>
								<option value="female">female</option>
								<option value="other">other</option>
								</select></h4>
							</div>	
							
							
							<div class="form-group">
								Contact Number:<label for="contact"><i class="zmdi zmdi-phone"></i></label>
								<input type="text" name="phone" id="phone"
									 value="<%=session.getAttribute("phone") %>" />
							</div>
							<div class="form-group">
								Profile Name:<label for="imageName"><i class="zmdi zmdi-face"></i></label> <input
									type="text" name="uname" id="uname" value="<%=session.getAttribute("name") %>" />
							</div>
							<div class="form-group form-button">
								<input type= "submit" name = "submit"  class="form-submit" value ="Update profile">
							</div>	
							
						</form>
					</div>
						<figure>
							<img src="images/updateimg.jpg" alt="sing up image"> <br><br><br>
							
							
						</figure>
						
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