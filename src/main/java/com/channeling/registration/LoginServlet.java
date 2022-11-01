package com.channeling.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private static Connection con = null;
	private static PreparedStatement pst = null;
	private static ResultSet rs = null;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		
		
		
		//creating session for after login process
		HttpSession session = request.getSession();
		
		RequestDispatcher dispatcher = null;
		
		//server side validation for email and password
		if(uemail == null || uemail.equals("")){
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		else if(upwd == null || upwd.equals("")){
			request.setAttribute("status", "invalidUpwd");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		try {
			
			//DBconnect class
			con = DBConnect.getConnection();
			pst = con.prepareStatement("select * from usertable where uEmail = ? and password = ? " );
			
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			
			rs = pst.executeQuery();
			
			
			
			if(rs.next()) {
				
				session.setAttribute("name", rs.getString("userName"));
				session.setAttribute("usId", rs.getString("uID"));
				session.setAttribute("email", rs.getString("uEmail"));
				session.setAttribute("fName", rs.getString("fullName"));
				session.setAttribute("gender", rs.getString("uGender"));
				session.setAttribute("age", rs.getString("uAge"));
				session.setAttribute("phone", rs.getString("uPhone"));
				session.setAttribute("address", rs.getString("uAddress"));
				session.setAttribute("img", rs.getString("imageFileName"));
				
				/*
				int id = rs.getInt(1);
				String fName = rs.getString(2);
				String address = rs.getString(3);
				String age = rs.getString(4);
				String gender = rs.getString(5);
				String phone = rs.getString(6);
				String email = rs.getString(7);
				String uName = rs.getString(8);
				String password = rs.getString(9);
				String imageName = rs.getString(10);
				
				
				try {
					
					List<Patient>patDetails= PatientDBUtil.patientDetails(id, fName, address, age, gender, phone, email, uName, password, imageName);
					request.setAttribute("patDetails", patDetails);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				*/
				
				
				if(session.getAttribute("name").equals("admin")) {
					dispatcher = request.getRequestDispatcher("adminHome.jsp");
				}else {
					
					dispatcher = request.getRequestDispatcher("home.jsp");
				}
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
				
			}
			//dispatcher = request.getRequestDispatcher("login.jsp");
			
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();		
			}
	}

}
