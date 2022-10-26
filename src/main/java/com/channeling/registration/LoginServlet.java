package com.channeling.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
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
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/echanneling","root","nisal1234");
			PreparedStatement pst = con.prepareStatement("select * from usertable where uEmail = ? and password = ? " );
			
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			
			ResultSet rs = pst.executeQuery();
			
			
			
			if(rs.next()) {
				
				session.setAttribute("name", rs.getString("userName"));
				
				
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
			e.printStackTrace();		}
	}

}
