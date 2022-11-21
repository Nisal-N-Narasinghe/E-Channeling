package com.channeling.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PatientBookingServlet
 */
@WebServlet("/PatientBooking")
public class PatientBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static Connection con = null;
	private static PreparedStatement pst = null;
	private static ResultSet rs = null;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String pemail = (String) session.getAttribute("email");
		
		
		try {
			
			con = DBConnect.getConnection();
			pst = con.prepareStatement("Select* from booking where email ='"+pemail+"'");
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				
				session.setAttribute("ptname", rs.getString("name"));
				session.setAttribute("ptdoctor", rs.getString("doctor"));
				session.setAttribute("pthospital", rs.getString("hospital"));
				
				
				
				
				request.setAttribute("status", "bookingDetailsLoaded");
				RequestDispatcher dis = request.getRequestDispatcher("Profile.jsp");
				dis.forward(request, response);
				
				
				
				
			}else {
				request.setAttribute("status", "nobookingsAvailable");
				RequestDispatcher dis = request.getRequestDispatcher("Profile.jsp");
				dis.forward(request, response);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

}}
