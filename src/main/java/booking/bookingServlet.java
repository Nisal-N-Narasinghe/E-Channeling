package booking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.channeling.registration.DBConnect;


/**
 * Servlet implementation class bookingServlet
 */
@WebServlet("/booking")
public class bookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static Connection con = null;
	private static PreparedStatement pst = null;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String doctor = request.getParameter("doctor");
		String hospital = request.getParameter("hospital");
		
		
		//boolean isTrue;
		
		//isTrue = bookingDB.insertBooking(name,age,address,gender,phone,email,doctor,hospital);
		
		/*if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("success.jsp");
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}*/
		
		//dispatcher servlet object
		RequestDispatcher dispatcher = null;
		
		//server side validation for registration form
				if(name == null || name.equals("")){
					request.setAttribute("status", "invalidName");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					
				} if(age == null || age.equals("")){
					request.setAttribute("status", "invalidAge");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					
				} if(address  == null || address.equals("")){
					request.setAttribute("status", "invalidAddress");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					
				} if(gender == null || gender.equals("")){
					request.setAttribute("status", "invalidGender");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					
				} if( phone.length() > 10 ||  phone.length() < 10){
					request.setAttribute("status", "invalidContact");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					
				}if(email == null ||email.equals("")){
					request.setAttribute("status", "invalidEmail");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					return;
				}
				
				if(doctor  == null || doctor .equals("")){
					request.setAttribute("status", "invalidDoctor");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					
				} if(hospital == null || hospital.equals("")){
					request.setAttribute("status", "invalidHospital");
					dispatcher = request.getRequestDispatcher("booking.jsp");
					dispatcher.forward(request, response);
					
				
				}
				
				
				
				try {
					
					//Class.forName("com.mysql.jdbc.Driver");
					//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/echanneling","root","nisal1234");
					
					
					//PreparedStatement pst = con.prepareStatement("insert into usertable(fullName,uAddress,uAge,uGender,uPhone,uEmail,userName,password,imageFileName) values(?,?,?,?,?,?,?,?,?)");
					
					con = DBConnect.getConnection();
					pst = con.prepareStatement("INSERT INTO booking" + "(name,age,address,gender,phone,email,doctor,hospital) VALUES "
							+ " (?, ?, ?, ?, ?, ?, ?, ?);");
					
					
					pst.setString(1, name);
					pst.setString(2, age);
					pst.setString(3, address);
					pst.setString(4, gender);
					pst.setString(5, phone);
					pst.setString(6, email);
					pst.setString(7, doctor);
					pst.setString(8, hospital);
					
					
					
					int rowCount = pst.executeUpdate();
					
					
					if(rowCount > 0) {
						
						request.setAttribute("status", "success");
						dispatcher = request.getRequestDispatcher("booking.jsp");
						
					}else {
						request.setAttribute("status", "failed");
						dispatcher = request.getRequestDispatcher("booking.jsp");
					}
					dispatcher.forward(request, response);
					
					
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} 

	}//catch the customer details

}
