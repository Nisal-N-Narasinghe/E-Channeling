package booking;

import java.sql.Connection;
import java.sql.Statement;

public class bookingDB {
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static boolean insertBooking(String name, String age, String address, String gender, String phone, String email,
			String doctor, String hospital) {
			
			boolean isSuccess = false;
			
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				//insert data into booking table
				String sql = "insert into booking values(0,'"+name+"','"+age+"', '"+address+"','"+gender+"','"+phone+"','"+email+"','"+doctor+"','"+hospital+"')";
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
	}
