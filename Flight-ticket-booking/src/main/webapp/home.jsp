<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,100&display=swap"
	rel="stylesheet">
<style type="text/css">
.flight {
	background-image:
		url("https://c.ndtvimg.com/2019-04/ec4fnt5o_indigo-a320neo-ndtv_625x300_17_April_19.jpg?im=Resize=(1230,900)");
	background-repeat: no-repeat;
	background-size: cover;
}

.sectionTag {

	width: 800px;
	height: 300px;
	margin-left: 10px;
	text-align: center;
	padding: 50px;
}
</style>
</head>
<body class="flight">
	<jsp:include page="home-navbar.jsp" />
	<section class="sectionTag">
		<article>
			<h1 style="color: white; text-decoration: blink;font-family: 'Roboto', sans-serif;">
				Starts Your Journey<br> With Sachin
			</h1>
			<button class="">Book-Your-Flight</button>
		</article>
	</section>
</body>
</html>