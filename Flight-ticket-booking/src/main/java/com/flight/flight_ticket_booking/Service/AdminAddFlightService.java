package com.flight.flight_ticket_booking.Service;

import com.flight.flight_ticket_booking.dao.AdminAddFlightDao;
import com.flight.flight_ticket_booking.dto.AdminAddFlight;

public class AdminAddFlightService {

	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	
	/*
	 * addFlight
	 */
	public AdminAddFlight addAdminFlight(AdminAddFlight addFlight) {
		return addFlightDao.addAdminFlights(addFlight);
	}
	
	/*
	 *delete flight 
	 */
	public int deleteFlight(int flightNumber ) {
		return addFlightDao.deleteFlight(flightNumber);
	}
}
