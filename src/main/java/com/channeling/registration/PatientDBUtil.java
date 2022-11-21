package com.channeling.registration;

import java.sql.Connection;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

public class PatientDBUtil {
	
	
	//instance variables
	private static Connection con = null;
	//private static PreparedStatement pst = null;
	private static ResultSet rs = null;
	private static Statement stmt = null;
	private static boolean isSuccess;
	

	
	
	//update patient profile
	
	public static boolean updateCustomer(String id,String name,String address,String age,String gender,String phone, String uname) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Update usertable set fullName='"+name+"',uAddress='"+address+"',uAge='"+age+"',uGender='"+gender+"',uPhone='"+phone+"',userName='"+uname+"'"  +  "where uID='"+id+"'";
			
			
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs > 0) {
				
				isSuccess = true;
			} else {
				
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	//delete profile
	public static boolean DeletePatient(String id) {
		
		
		int convertID = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from usertable where uID ='"+convertID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//Method for getting profile details using array list
	public static List<Patient> getPatientDetails(String id) {
		//return all patient details
		ArrayList<Patient> pat = new ArrayList<>();
		
		int convertID = Integer.parseInt(id);
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from usertable where uID ='"+convertID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int uid = rs.getInt(1);
				String fuName = rs.getString(2);
				String address = rs.getString(3);
				String age = rs.getString(4);
				String gender = rs.getString(5);
				String phone = rs.getString(6);
				String uname = rs.getString(8);
				
				
				Patient p = new Patient(uid,fuName,address,age,gender,phone,uname);
				
				//add patient object to array list
				pat.add(p);	
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pat;
		
		
	}
	
	

}
