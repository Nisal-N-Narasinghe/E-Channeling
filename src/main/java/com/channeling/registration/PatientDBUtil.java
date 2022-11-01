package com.channeling.registration;

import java.sql.Connection;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PatientDBUtil {
	private static Connection con = null;
	//private static PreparedStatement pst = null;
	private static ResultSet rs = null;
	private static Statement stmt = null;
	
	//instance variable
	private static boolean isSuccess;
	
	
	/*
	//Validate Customer
	public static List<Patient> patientDetails(int id,String fName,String address,String age,String gender,String phone,String email,String uName,String password,String imageName){
		
		
		ArrayList<Patient> pat = new ArrayList<>();
		
		Patient p = new Patient(id, fName, address, age, gender, phone, email, uName, password, imageName);
		pat.add(p);
		
		return pat;
	}
	*/
	
	//update patient profile
	
	public static boolean updateCustomer(String id,String name,String address,String age,String gender,String phone, String email) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Update usertable set fullName='"+name+"',uAddress='"+address+"',uAge='"+age+"',uGender='"+gender+"',uPhone='"+phone+"',uEmail='"+email+"'"  +  "where uID='"+id+"'";
			
			
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
	
	/*
	//reload profile with updated patient details
	public static List<Patient> getPatientDetails(String Id) {
		
		//convert String id to integer
		int convertID = Integer.parseInt(Id);
		
		ArrayList<Patient> pat = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from usertable where uID ='"+convertID+"'";
			
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
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
				
				Patient p = new Patient (id,fName,address,age,gender,phone,email,uName,password,imageName);
				
				//add values to array list
				pat.add(p);
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pat;
		
	}
	
	*/
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
}
