package com.flight.flight_ticket_booking.Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flight.flight_ticket_booking.dto.User;
import com.flight.flight_ticket_booking.Service.UserService;
@WebServlet("/userLogin")
public class UserLoginController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		
		String userEmail = req.getParameter("userEmail");
		String userPass = req.getParameter("userPassword");
		
		UserService  service = new UserService();
		
		User user = service.getUserByEmail(userEmail);
		
		if(user!=null) {
			if(user.getPassword().equals(userPass)) {
				httpSession.setAttribute("userEmail",user.getEmail());
				RequestDispatcher dispatcher = req.getRequestDispatcher("user-home.jsp");
				dispatcher.forward(req, resp);
			}else {
				req.setAttribute("userPassword","invalid-password");
				RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
				dispatcher.forward(req, resp);
			}
		}else {
			req.setAttribute("userEmail","invalid-email");
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
			dispatcher.forward(req, resp);
		}
		
		
	}
}
