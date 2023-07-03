<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

	body{
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		widows: 100wh;
	}
	.myLogin{
		border: 2px solid pink;
		display: flex;
		justify-content: center;
		align-items: center;
		width: 50vw;
		height: 50vh;
	}
	
	.common{
		height: 30px;
		width: 350px;
	}

</style>

</head>
<body>
		<%
			String email =(String)request.getAttribute("invalidEmail");
		
			String password =(String)request.getAttribute("invalidPassword");
		%>
		<div class="myLogin">
			<h6 style="margin-top: -150px;">ADMIN-LOGIN</h6>
			<form action="myLogin" method="post">
			
			<%if(email!=null){%>
			
				<h6 style="color: red"><%=email%></h6>
			
			<%}%>	
			<label id="myEmail">Email</label><br>
			<input type="email" placeholder="enter your email" name="email" class="common"><br>
			
			<%if(password!=null) {%>
			
				<h6 style="color: red"><%=password%></h6>
			
			<%}%>	
			
			<label id="myPassword">Password</label><br>
			<input type="password" placeholder="enter your password" name="password" class="common"><br>
		
			<input type="submit" value="Login" style="width: 80px; height:30px; margin-top: 10px;">
		
			</form>
		</div>
		
</body>
</html>