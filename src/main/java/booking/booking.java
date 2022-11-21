package booking;

public class  booking {
	protected int id;
	protected String name;
	protected String age;
	protected String address;
	protected String gender;
	protected String phone;
	protected String email;
	protected String doctor;
	protected String hospital;
	
	public booking() {}
	
	
	public booking(String name, String age, String address, String gender, String phone, String email,
			String doctor, String hospital) {
		super();
		this.name = name;
		this.age = age;
		this.address = address;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.doctor = doctor;
		this.hospital = hospital;
	}
	
	public booking(int id, String name, String age, String address, String gender, String phone, String email,
			String doctor, String hospital) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.address = address;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.doctor = doctor;
		this.hospital = hospital;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getAge() {
		return age;
	}

	public String getAddress() {
		return address;
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

	public String getDoctor() {
		return doctor;
	}

	public String getHospital() {
		return hospital;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}

	
}
