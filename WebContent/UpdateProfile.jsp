<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- <c:forEach var="pat" items="${patDetails}">
	
	create jar variables to assign values for update profile 
	 c:set var = "name" value="${pat.name}"/>
	<c:set var = "address" value="${pat.address}"/>
	<c:set var = "age" value="${pat.age}"/>
	<c:set var = "gender" value="${pat.gender}"/>
	<c:set var = "phone" value="${pat.phone}"/>
	<c:set var = "email" value="${pat.email}"/>
	<c:set var = "proimg" value="${pat.imageName}"/>
	
	${pat.id}
	${pat.fullname}
	${pat.address}
	${pat.age}
	${pat.gender}
	${pat.phone}
	${pat.email}
	${pat.userName}
	${pat.password}
	${pat.imageName}

	</c:forEach> -->

<form action="UpdatePatient" method="post">
 	
 		ID <input type = "text" name = "id" value="<%= session.getAttribute("usId") %>" readonly><br>
 		Full Name <input type = "text" name = "name" value="<%= session.getAttribute("fName") %>"><br>
 		Address <input type = "text" name = "address" value="<%= session.getAttribute("address") %>"><br>
 		Age<input type = "text" name = "age" value="<%= session.getAttribute("age") %>"><br>
 		Gender <input type = "text" name = "gender" value="<%= session.getAttribute("gender") %>"><br>
 		Phone <input type = "text" name = "phone" value="<%= session.getAttribute("phone") %>"><br>
 		Email <input type = "text" name = "email" value="<%= session.getAttribute("email") %>"><br>
 		
		
		
		<input type= "submit" name = "submit" value ="Update profile">
 	</form>
</body>
</html>