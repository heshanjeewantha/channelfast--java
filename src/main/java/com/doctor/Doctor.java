package com.doctor;

public class Doctor {
   
	private int doc_id;
	private String d_uname;
	private String d_name;
	private String d_hos;
	private String d_spec;
	private String d_mob;
	private String d_mail;
	private String d_pw;
	
	
	public Doctor(int doc_id, String d_uname, String d_name, String d_hos, String d_spec, String d_mob, String d_mail,
			String d_pw) {
		
		this.doc_id = doc_id;
		this.d_uname = d_uname;
		this.d_name = d_name;
		this.d_hos = d_hos;
		this.d_spec = d_spec;
		this.d_mob = d_mob;
		this.d_mail = d_mail;
		this.d_pw = d_pw;
	}


	public int getDoc_id() {
		return doc_id;
	}


	public String getD_uname() {
		return d_uname;
	}


	public String getD_name() {
		return d_name;
	}


	public String getD_hos() {
		return d_hos;
	}


	public String getD_spec() {
		return d_spec;
	}


	public String getD_mob() {
		return d_mob;
	}


	public String getD_mail() {
		return d_mail;
	}


	public String getD_pw() {
		return d_pw;
	}
	
	
	
	
}
