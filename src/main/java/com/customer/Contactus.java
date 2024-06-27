package com.customer;

public class Contactus {  //create class contactus

	private int id;
	private String name;
	private String email;
	private String phone;
	private String subject;
	private String message;
	
	
	
	public Contactus(int id, String name, String email, String phone, String subject, String message) {
	
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.subject = subject;
		this.message = message;
	}


	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}


	public String getSubject() {
		return subject;
	}


	public String getMessage() {
		return message;
	}


	

}

