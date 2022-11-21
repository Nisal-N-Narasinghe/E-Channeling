package com.channeling.registration;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatePatientServlet
 */
@WebServlet("/UpdatePatient")
public class UpdatePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String uname = request.getParameter("uname");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.updateCustomer(id, name,address,age,gender,phone,uname);
		
		
		if(isTrue == true) {
			
			/*
			List<Patient> patDetails = PatientDBUtil.getPatientDetails(id);
			request.setAttribute("patDetails", patDetails);
			*/
			
			request.setAttribute("status", "success");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("UpdateProfile.jsp");
			dis.forward(request, response);
		}
		
	}

}
