package com.flight.flight_ticket_booking.Service;

import java.util.List;

import com.flight.flight_ticket_booking.dao.AdminDao;
import com.flight.flight_ticket_booking.dto.Admin;

public class AdminService {

	AdminDao adminDao = new AdminDao();
	
	public List<Admin> getAllAdmins(){
		return adminDao.getAllAdmins();
	}
	
	/*
	 * getDataByEmail
	 */
	public Admin getAdminByEmail(String adminEmail) {
		return adminDao.getAdminByEmail(adminEmail);
	}
}
