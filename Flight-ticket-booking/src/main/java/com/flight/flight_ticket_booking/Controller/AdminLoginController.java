package com.flight.flight_ticket_booking.Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flight.flight_ticket_booking.dto.Admin;
import com.flight.flight_ticket_booking.Service.AdminService;

@SuppressWarnings("serial")
@WebServlet("/myLogin")
public class AdminLoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		AdminService adminService = new AdminService();
		
		Admin admin=adminService.getAdminByEmail(email);
		
		if(admin!=null) {
				if(admin.getPassword().equals(password)) {
					httpSession.setAttribute("adminEmail", admin.getEmail());
					RequestDispatcher dispatcher = req.getRequestDispatcher("admin-add-flights.jsp");
					dispatcher.forward(req, resp);
				}else {
					req.setAttribute("invalidPassword", "invalid password");
					RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
					dispatcher.forward(req, resp);
				}
		}else {
			req.setAttribute("invalidEmail", "invalid email");
			RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
			dispatcher.forward(req, resp);
		}
		
		
	}
}
