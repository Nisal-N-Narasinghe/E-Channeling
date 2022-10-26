package com.channeling.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 
		 * //check is this servlet page connected)
			PrintWriter out  = response.getWriter();
			out.print("Working"); 
		*/
		
		String fullname = request.getParameter("name");
		String uaddress = request.getParameter("address");
		String uage = request.getParameter("age");
		String ugender = request.getParameter("gender");
		String ucontact = request.getParameter("contact");
		String uemail = request.getParameter("email");
		String uname = request.getParameter("username");
		String upwd = request.getParameter("pass");
		
		//dispatcher servlet object
		RequestDispatcher dispatcher = null;
		
		Connection con = null;
		
		
		/*
		//check all inputs from registration form captured by servletClass
		PrintWriter out  = response.getWriter();
		out.println(fullname); 
		out.println(uaddress);
		out.println(uage);
		out.println(ugender);
		out.println(ucontact);
		out.println(uemail);
		out.println(uname);
		out.println(upwd); 
		*/
		
		
		//insert details in to database
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/echanneling","root","nisal1234");
			PreparedStatement pst = con.prepareStatement("insert into usertable(fullName,uAddress,uAge,uGender,uPhone,uEmail,userName,password) values(?,?,?,?,?,?,?,?)");
			pst.setString(1, fullname);
			pst.setString(2, uaddress);
			pst.setString(3, uage);
			pst.setString(4, ugender);
			pst.setString(5, ucontact);
			pst.setString(6, uemail);
			pst.setString(7, uname);
			pst.setString(8, upwd);
			
			
			int rowCount = pst.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
		
	}
}