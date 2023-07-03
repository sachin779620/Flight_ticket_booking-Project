<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

	

</style>
</head>
<body>
	<div class="">
		<form action="userRegister" method="post">
			
			<label id="userName">UserName</label><br>
			<input type="text" placeholder="enter user name" name="userName"><br>
			
			<label id="userEmail">UserEmail</label><br>
			<input type="email" placeholder="enter user email" name="userEmail"><br>
			
			
			<label id="userPassword">UserPassword</label><br>
			<input type="password" placeholder="enter user password" name="userPassword"><br>
			
			<label id="ConfirmPassword">UserPassword</label><br>
			<input type="password" placeholder="repeat password" name="confirmPassword"><br>
			
			<input type="submit" value="register">
		</form>
	
	</div>
</body>
</html>