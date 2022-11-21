package booking;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class adminBookingDB {
	
	private static String url = "jdbc:mysql://localhost:3306/echanneling";
	private static String username = "root";
	private static String pass = "nisal1234";
	private static Statement stmt = null;

	private static final String INSERT_BOOKINGS_SQL = "INSERT INTO booking" + "  (name,age, address,gender, phone, email,doctor,hospital) VALUES "
			+ " (?, ?, ?, ?, ?, ?, ?, ?);";

	private static final String SELECT_BOOKING_BY_ID = "select id,name,age, address,gender, phone, email,doctor,hospital from booking where id =?";
	private static final String SELECT_ALL_BOOKINGS = "select * from booking";
	private static final String DELETE_BOOKINGS_SQL = "delete from booking where id = ?;";
	private static final String UPDATE_BOOKINGS_SQL = "update booking set name = ?,age = ?,address = ?,gender = ?,phone = ?,email= ?, doctor =?,hospital = ? where id = ?;";
	
	public adminBookingDB() {
	}

	protected static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, username,  pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public static boolean insertBooking(String name, String age, String address, String gender, String phone, String email,
			String doctor, String hospital) {
			
			boolean isSuccess = false;
			
			try {
			    Connection connection = getConnection();
			    stmt = connection.createStatement();
			
				String sql = "insert into users values(0,'"+name+"','"+age+"','"+address+"','"+gender+"','"+phone+"','"+email+"', '"+doctor+"','"+hospital+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			}
			catch (Exception e){
				
				e.printStackTrace();
			}
			return isSuccess;
		}
	
	public static void insertBooking(booking Booking) throws SQLException {
		System.out.println(INSERT_BOOKINGS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOKINGS_SQL)) {
			preparedStatement.setString(1, Booking.getName());
			preparedStatement.setString(2, Booking.getAge());
			preparedStatement.setString(3, Booking.getAddress());
			preparedStatement.setString(4, Booking.getGender());
			preparedStatement.setString(5, Booking.getPhone());
			preparedStatement.setString(6, Booking.getEmail());
			preparedStatement.setString(7, Booking.getDoctor());
			preparedStatement.setString(8, Booking.getHospital());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public static booking selectBooking(int id) {
		booking Booking = null;
		// Establishing a Connection
		try (Connection connection = getConnection();
				//Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOKING_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			//Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			//Process the ResultSet object.
			while (rs.next()) {
				String name = rs.getString("name");
				String age =rs.getString("age");
				String address = rs.getString("address");
				String gender = rs.getString("gender");
				String phone  = rs.getString("phone");
				String email = rs.getString("email");
				String doctor = rs.getString("doctor");
				String hospital = rs.getString("hospital");
				
				Booking = new booking(id, name, age, address, gender, phone, email, doctor, hospital);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return Booking;
	}

	public static List<booking> selectAllBookings() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<booking> Bookings = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

			//Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOKINGS);) {
			System.out.println(preparedStatement);
		    //Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			//Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String age =rs.getString("age");
				String address = rs.getString("address");
				String gender = rs.getString("gender");
				String phone  = rs.getString("phone");
				String email = rs.getString("email");
				String doctor = rs.getString("doctor");
				String hospital = rs.getString("hospital");
				Bookings.add(new booking(id, name, age, address, gender, phone, email, doctor, hospital));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return Bookings;
	}

	public static boolean deleteBooking(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_BOOKINGS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	
	public static boolean updateBooking(booking Booking) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_BOOKINGS_SQL);) {
			System.out.println("updated booking:"+statement);
			
			statement.setString(1, Booking.getName());
			statement.setString(2, Booking.getAge());
			statement.setString(3, Booking.getAddress());
			statement.setString(4, Booking.getGender());
			statement.setString(5, Booking.getPhone());
			statement.setString(6, Booking.getEmail());
			statement.setString(7, Booking.getDoctor());
			statement.setString(8, Booking.getHospital());
			statement.setInt(9, Booking.getId());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private static void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
}
