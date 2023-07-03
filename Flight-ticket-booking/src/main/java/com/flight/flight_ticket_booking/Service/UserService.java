package com.flight.flight_ticket_booking.Service;

import java.util.List;

import com.flight.flight_ticket_booking.dao.UserDao;
import com.flight.flight_ticket_booking.dto.User;

public class UserService {

	UserDao dao = new UserDao();
	
	/*
	 * save User details
	 */
	public User saveUser(User user) {
		return dao.saveUser(user);
	}
	
	/*
	 * getAllUsersDetails
	 */
	public List<User> getAllUsers(){
		return dao.getAllUsers();
	}
	
	/*
	 * get user by email for login
	 */
	public User getUserByEmail(String userEmail) {
		return dao.getUserByEmail(userEmail);
	}
}
