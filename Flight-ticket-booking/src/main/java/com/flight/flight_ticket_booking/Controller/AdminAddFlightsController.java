package com.flight.flight_ticket_booking.Controller;

import java.io.IOException;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flight.flight_ticket_booking.dto.AdminAddFlight;
import com.flight.flight_ticket_booking.Service.AdminAddFlightService;


@SuppressWarnings("serial")
@WebServlet(value="/flightAdd")
public class AdminAddFlightsController extends HttpServlet{

	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AdminAddFlight addFlight = new AdminAddFlight();
		
		AdminAddFlightService addFlightService = new AdminAddFlightService();
		
		int flightNumber = Integer.parseInt(req.getParameter("flightNumber"));
		String flightName = req.getParameter("flightName");
		String flightSource = req.getParameter("flightSource");
		String flightDestination = req.getParameter("flightDestination");
		String departureTime = req.getParameter("flightDeparture");
		String arrivalTime = req.getParameter("flightArrival");
		double flightEconomyPrice =Double.parseDouble(req.getParameter("flightEconomyPrice"));
		double flightBusinessPrice =Double.parseDouble(req.getParameter("flightBusinessPrice"));
		
		
		DateFormat dateFormat = new SimpleDateFormat("HH:mm");
		Time atime=null;
		Time dtime=null;
		try {
			atime = new Time(dateFormat.parse(arrivalTime).getTime());
			dtime = new Time(dateFormat.parse(departureTime).getTime());
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		
		addFlight.setFlightNumber(flightNumber);
		addFlight.setFlightName(flightName);
		addFlight.setFlightSource(flightSource);
		addFlight.setFlightDestination(flightDestination);
		addFlight.setArrivalTime(atime);
		addFlight.setDepartureTime(dtime);
		addFlight.setFlightEconomyPrice(flightEconomyPrice);
		addFlight.setFlightBusinessPrice(flightBusinessPrice);
		
		
		addFlightService.addAdminFlight(addFlight);
		
		
		
		
		
	}
}
