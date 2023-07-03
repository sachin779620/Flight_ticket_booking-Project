<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User-Home</h1>
	
	<div>
		<form>
			<input type="text" placeholder="Enter Your Source" name="source"><br>
			<input type="text" placeholder="Enter Your Destination" name="destination"><br>
			<input type="date" name="date" value="<%=LocalDate.now().plusDays(1)%>"><br>
			<input type="submit" value="Search-Flights">
		</form>
	</div>
</body>
</html>