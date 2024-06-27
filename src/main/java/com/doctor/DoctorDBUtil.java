package com.doctor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DoctorDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//create the static method validate
	public static boolean validate(String username, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from doctor where d_uname = '"+username+"' and d_pw = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			}catch (Exception e){
			
			e.printStackTrace();
		}
		
		return isSuccess;
	} 
	
	//Retrieve data
     public static List<Doctor> getDoctor(String username){
		

		ArrayList<Doctor> doctor = new ArrayList<>();
		 
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where d_uname = '"+username+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int did = rs.getInt(1);
				String duname = rs.getString(2);
				String dname = rs.getString(3);
				String dhos = rs.getString(4);
				String dspec = rs.getString(5);
				String dmob = rs.getString(6);
				String dmail = rs.getString(7);
				String dpw = rs.getString(8);
				
				Doctor d = new Doctor(did,duname,dname,dhos,dspec,dmob,dmail,dpw);
				doctor.add(d);
		
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return doctor;
	}
	
     //Update the doctor profile
	public static boolean updatedoctor(String did, String duname, String dname, String dhos, String dspec, String dmob, String dmail,String dpass)
	{
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Update doctor set d_uname='"+duname+"',d_name='"+dname+"',d_hos='"+dhos+"',d_spec='"+dspec+"',d_mob = '"+dmob+"', d_mail = '"+dmail+"',d_pw='"+dpass+"'" + "where doc_id = '"+did+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	//Retrieve the data
	public static List<Doctor> getDoctorDetails(String did)
	{
		int convertid = Integer.parseInt(did);
		
		ArrayList<Doctor> doc = new ArrayList<>();
		
		try {
			//Create database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * From doctor where doc_id = '"+convertid+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int did1 = rs.getInt(1);
				String duname = rs.getString(2);
				String dname = rs.getString(3);
				String dhos = rs.getString(4);
				String dspec = rs.getString(5);
				String dmob = rs.getString(6);
				String dmail = rs.getString(7);
				String dpw = rs.getString(8);
				
				Doctor d = new Doctor(did1,duname,dname,dhos,dspec,dmob,dmail,dpw);
				doc.add(d);
		
			}
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return doc;
	}
	
}
