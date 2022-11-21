package com.channeling.registration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeletePatientServlet
 */
@WebServlet("/DeletePatient")
public class DeletePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("usId");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.DeletePatient(id);
		
		
		if(isTrue == true) {
			
			request.setAttribute("status", "accountDelete");
			RequestDispatcher dis = request.getRequestDispatcher("registration.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("Profile.jsp");
			dis.forward(request, response);
		}
	}

}
