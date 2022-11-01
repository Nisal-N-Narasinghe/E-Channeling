package com.channeling.registration;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 * Servlet implementation class RegistrationServlet
 */

@MultipartConfig
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private static Connection con = null;
	private static PreparedStatement pst = null;
	//private static ResultSet rs = null;
	
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 //check is this servlet page connected)
			PrintWriter out  = response.getWriter();
			out.print("Working"); */
		
		
		String fullname = request.getParameter("name");
		String uaddress = request.getParameter("address");
		String uage = request.getParameter("age");
		String ugender = request.getParameter("gender");
		String ucontact = request.getParameter("contact");
		String uemail = request.getParameter("email");
		String uname = request.getParameter("username");
		String upwd = request.getParameter("pass");
		String reupwd = request.getParameter("re_pass");
		
		Part file = request.getPart("pimage");
		
		String imageFileName = file.getSubmittedFileName();
		
		String uploadPath  = "C:/Projects/channeling/WebContent/pimages/"+imageFileName;
		
		/*
		 //check file name captured
		PrintWriter out  = response.getWriter();
		out.println(imageFileName); 
		out.println(uploadPath); 
		*/
		
		//file copy to system folder
		try {
			
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is = file.getInputStream();
		
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		} catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		//dispatcher servlet object
				RequestDispatcher dispatcher = null;
				
				//Connection con = null;
				
				
				
		
		//server side validation for registration form
				if(fullname == null || fullname.equals("")){
					request.setAttribute("status", "invalidName");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				} if(uaddress == null || uaddress.equals("")){
					request.setAttribute("status", "invalidAddress");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				} if(uage  == null || uage.equals("")){
					request.setAttribute("status", "invalidAge");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				} if(ugender == null || ugender.equals("")){
					request.setAttribute("status", "invalidGender");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				} if(ucontact == null || ucontact.equals("")){
					request.setAttribute("status", "invalidContact");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				}else if(ucontact.length() > 10){
					request.setAttribute("status", "invalidContactnum");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
				}
				
				if(uemail == null || uemail.equals("")){
					request.setAttribute("status", "invalidEmail");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				} if(uname == null || uname.equals("")){
					request.setAttribute("status", "invalidUserName");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				}if(upwd == null || upwd.equals("")){
					request.setAttribute("status", "invalidPassword");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
					
				} else if(!upwd.equals(reupwd)) {
					request.setAttribute("status", "passwordMissMatch");
					dispatcher = request.getRequestDispatcher("registration.jsp");
					dispatcher.forward(request, response);
				}
				
		
		
		
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
			
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/echanneling","root","nisal1234");
			
			
			//PreparedStatement pst = con.prepareStatement("insert into usertable(fullName,uAddress,uAge,uGender,uPhone,uEmail,userName,password,imageFileName) values(?,?,?,?,?,?,?,?,?)");
			
			con = DBConnect.getConnection();
			pst = con.prepareStatement("insert into usertable(fullName,uAddress,uAge,uGender,uPhone,uEmail,userName,password,imageFileName) values(?,?,?,?,?,?,?,?,?)");
			
			
			pst.setString(1, fullname);
			pst.setString(2, uaddress);
			pst.setString(3, uage);
			pst.setString(4, ugender);
			pst.setString(5, ucontact);
			pst.setString(6, uemail);
			pst.setString(7, uname);
			pst.setString(8, upwd);
			pst.setString(9, imageFileName);
			
			
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
