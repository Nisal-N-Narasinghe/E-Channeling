package com.channeling.registration;

public class Patient {
	private int id;
	private String fullName;
	private String address;
	private String age;
	private String gender;
	private String phone;
	private String email;
	private String userName;
	private String password;
	private String imageName;
	
	public Patient(int id, String fullName, String address, String age, String gender, String phone,String email,String userName,String password,String imageName) {
		
		this.id = id;
		this.fullName = fullName;
		this.address = address;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.imageName = imageName;
	}

	public Patient(int id, String fullName, String address, String age, String gender, String phone, String userName) {
		this.id = id;
		this.fullName = fullName;
		this.address = address;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.userName = userName;
		
	}

	public int getId() {
		return id;
	}

	public String getFullName() {
		return fullName;
	}

	public String getAddress() {
		return address;
	}

	public String getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getImageName() {
		return imageName;
	}

	
	
}

