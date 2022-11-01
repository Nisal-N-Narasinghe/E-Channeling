<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
	%>
	
 	<form action="DeletePatient" method="post">
 	
 		ID <input type = "text" name = "id" value="<%= session.getAttribute("usId") %>" readonly><br>
		
		<input type= "submit" name = "submit" value ="Delete profile">
 	</form>
</body>
</html>