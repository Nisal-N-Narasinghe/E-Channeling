<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<html>
<head>
<title>Booking Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-dark bg-primary">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand">Booking Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Bookings</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${Booking != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${Booking == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${Booking != null}">
            			Edit Booking
            			</c:if>
						<c:if test="${Booking == null}">
            			Add New Booking
            			</c:if>
					</h2>
				</caption>

				<c:if test="${Booking != null}">
					<input type="hidden" name="id" value="<c:out value='${Booking.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Patient Name</label> <input type="text"
						value="<c:out value='${Booking.name}' />" class="form-control"
						name="name">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Age</label> <input type="text"
						value="<c:out value='${Booking.age}' />" class="form-control"
						name="age">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${Booking.address}' />" class="form-control"
						name="address">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Gender</label><br>
					<!--  <input type="radio" id="male" value="<c:out value='${booking.male}' />" 
					 name="gender"><label for="gender">Male</label>
      				<input type="radio" id="female" value="<c:out value='${booking.female}' />" 
      				 name="gender"><label for="gender">Female</label>-->
      				 <input type="text"
						value="<c:out value='${Booking.gender}' />" class="form-control"
						name="gender">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Phone</label> <input type="text"
						value="<c:out value='${Booking.phone}' />" class="form-control"
						name="phone">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${Booking.email}' />" class="form-control"
						name="email">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Doctor's Name</label> 
					<input type="text" value="<c:out value='${Booking.doctor}' />" class="form-control"
						name="doctor">
				</fieldset>

				<fieldset class="form-group">
					<label>Hospital</label> <input type="text"
						value="<c:out value='${Booking.hospital}' />" class="form-control"
						name="hospital">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>