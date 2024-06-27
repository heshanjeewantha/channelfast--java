package com.appointment;

public class Appointment { //create class appointment
	
	private int id;
	private String doctor;
	private String pNmae;
	private String gender;
	private String age;
	private String address;
	private String contact;
	private String email;
	private String date;
	private String center;
	
	public Appointment(int id, String doctor, String pNmae, String gender, String age, String address, String contact,
			String email, String date, String center) {
		super();
		this.id = id;
		this.doctor = doctor;
		this.pNmae = pNmae;
		this.gender = gender;
		this.age = age;
		this.address = address;
		this.contact = contact;
		this.email = email;
		this.date = date;
		this.center = center;
	}

	public int getId() {
		return id;
	}

	

	public String getDoctor() {
		return doctor;
	}

	

	public String getpNmae() {
		return pNmae;
	}

	

	public String getGender() {
		return gender;
	}

	

	public String getAge() {
		return age;
	}

	

	public String getAddress() {
		return address;
	}

	

	public String getContact() {
		return contact;
	}

	

	public String getEmail() {
		return email;
	}

	

	public String getDate() {
		return date;
	}

	

	public String getCenter() {
		return center;
	}

	

	

}
