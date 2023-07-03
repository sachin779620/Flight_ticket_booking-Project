<%@page import="com.flight.flight_ticket_booking.dto.AdminAddFlight"%>
<%@page import="java.util.List"%>
<%@page import="com.flight.flight_ticket_booking.dao.AdminAddFlightDao"%>
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
			AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
		
		List<AdminAddFlight> addFlights = addFlightDao.getAllFlights();		%>
		<div>
			<table border="2px;">
				<tr>	
					<th>Logo</th>
					<th>FlightNumber</th>
					<th>FlightName</th>
					<th>Source</th>
					<th>Destination</th>
					<th>Departure</th>
					<th>Arrival</th>
					<th>EconomyPrice</th>
					<th>BusinessPrice</th>
					<th>Delete</th>
					<th>Update</th>
					
				</tr>
				<%
					for(AdminAddFlight addFlight:addFlights){
				%>
						<!-- this is for indigo -->
					<%if((addFlight.getFlightName().equalsIgnoreCase("indigo"))){%>
						<tr>
							<td><img src="https://travelbizmonitor.com/wp-content/uploads/2021/06/Indigo_logo-1.png" style="border-radius:50%;" width="80px" height="80px" alt="indigo"/></td>
							<td><%=addFlight.getFlightNumber()%></td>	
							<td><%=addFlight.getFlightName() %></td>	
							<td><%=addFlight.getFlightSource() %></td>	
							<td><%=addFlight.getFlightDestination() %></td>	
							<td><%=addFlight.getDepartureTime() %></td>	
							<td><%=addFlight.getArrivalTime() %></td>	
							<td><%=addFlight.getFlightEconomyPrice() %></td>	
							<td><%=addFlight.getFlightBusinessPrice() %></td>	
							<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>">DELETE</a></td>	
							<td><a href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>">EDIT</a></td>	
						</tr>
					<%}%>
					
					<!-- this is for airgo -->
					<%if((addFlight.getFlightName().equalsIgnoreCase("airgo"))){%>
						<tr>
							<td><img src="https://play-lh.googleusercontent.com/xAmAG_6wk6xeeratvMFGY4kETBaBrbV2oWk50dNHzqE67NTU8yUCAPBVHyYTgyloOqo" style="border-radius:50%;" width="80px" height="80px" alt="airgo"/></td>
							<td><%=addFlight.getFlightNumber()%></td>	
							<td><%=addFlight.getFlightName() %></td>	
							<td><%=addFlight.getFlightSource() %></td>	
							<td><%=addFlight.getFlightDestination() %></td>	
							<td><%=addFlight.getDepartureTime() %></td>	
							<td><%=addFlight.getArrivalTime() %></td>	
							<td><%=addFlight.getFlightEconomyPrice() %></td>	
							<td><%=addFlight.getFlightBusinessPrice() %></td>	
							<td><a href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>">DELETE</a></td>	
							<td><a href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>">EDIT</a></td>	
						</tr>
					<%}%>
					
				<%} %>
			</table>
		</div>
</body>
</html>