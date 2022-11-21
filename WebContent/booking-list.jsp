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
	<!-- Navigation bar -->
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
	<div class="row">
	<div class="container">
			<h3 class="text-center"><b>List of Bookings</b></h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-outline-success">Add New Booking</a>
				
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>bID</th>
						<th>Patient name</th>
						<th>Age</th>
						<th>Address</th>
						<th>Gender</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Doctor's name</th>
						<th>Hospital</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="booking" items="${listBooking}">

						<tr>
							<td><c:out value="${booking.id}" /></td>
							<td><c:out value="${booking.name}" /></td>
							<td><c:out value="${booking.age}" /></td>
							<td><c:out value="${booking.address}" /></td>
							<td><c:out value="${booking.gender}" /></td>
							<td><c:out value="${booking.phone}" /></td>
							<td><c:out value="${booking.email}" /></td>
							<td><c:out value="${booking.doctor}" /></td>
							<td><c:out value="${booking.hospital}" /></td>
							<td><a href="edit?id=<c:out value='${booking.id}' />" class="btn btn-outline-warning">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="bookingDelete?id=<c:out value='${booking.id}' />" class="btn btn-outline-danger">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>