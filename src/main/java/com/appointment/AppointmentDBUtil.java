package com.appointment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
//insert data to database
public class AppointmentDBUtil {

public static boolean appointmentinsert(String doctor,String PNmae,String gender,String age,String address,String connum,String email,String date,String center  ) {
		
		boolean isSuccess = false;
		
		String url="jdbc:mysql://localhost:3306/echan";
		String user="root";
		String pass="amma2amma";
		
		try {
			
				Class.forName("com.mysql.jdbc.Driver");
			
				Connection con = DriverManager.getConnection(url,user,pass);
				Statement stmt=con.createStatement();
				String sql = "insert into apoointment values(0,'"+doctor+"','"+PNmae+"','"+gender+"','"+age+"','"+address+"','"+connum+"','"+email+"','"+date+"','"+center+"') ";
				int rs= stmt.executeUpdate(sql);
				
				if(rs>0) {
					
					isSuccess = true;
					
				}
				else {
					
					isSuccess=false;
					
				}
		}
		catch(Exception e){
			
			e.printStackTrace();

		}
		
		
		return isSuccess;
		
	}
//retrive data from database
public static List<Appointment> getAppointmentDetails(String contact) {
	
	
	ArrayList<Appointment> app =new ArrayList<>();
	
	//create database connection
	String url="jdbc:mysql://localhost:3306/echan";
	String user="root";
	String pass="amma2amma";
	
	//validate
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt=con.createStatement();
		String sql="select * from apoointment where contactNo='"+contact+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			int id=rs.getInt(1);
			String doctor= rs.getString(2);
			String pNmae= rs.getString(3);
			String gender= rs.getString(4);
			String Age= rs.getString(5);
			String address= rs.getString(6);
			String connum= rs.getString(7);
			String email= rs.getString(8);
			String date= rs.getString(9);
			String center= rs.getString(10);
			
			Appointment a = new Appointment(id,doctor,pNmae,gender,Age,address,connum,email,date,center);
			app.add(a); 
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return app;
	
}
//update data from database
public static boolean updateAppointment(String id,String doctor,String PNmae,String gender,String age,String address,String contact,String email,String date,String center  ) {
	
	boolean isSuccess = false;
	
	String url="jdbc:mysql://localhost:3306/echan";
	String user="root";
	String pass="amma2amma";
	
	try {
		
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt=con.createStatement();
			String sql = "update apoointment set doctor='"+doctor+"',pName='"+PNmae+"',gender='"+gender+"',age='"+age+"',address='"+address+"',contactNo='"+contact+"',email='"+email+"',date='"+date+"',center='"+center+"'"+
			"where appointmentNo='"+id+"'";
			int rs= stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				isSuccess = true;
				
			}
			else {
				
				isSuccess=false;
				
			}
	}
	catch(Exception e){
		
		e.printStackTrace();

	}
	
	
	return isSuccess;
	
}
//delete data from database
public static boolean deleteAppointment(String id ) {
	int convid = Integer.parseInt(id);
	boolean isSuccess = false;
	
	String url="jdbc:mysql://localhost:3306/echan";
	String user="root";
	String pass="amma2amma";
	
	try {
		
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt=con.createStatement();
			String sql = "delete from apoointment where appointmentNo='"+convid+"'";
			int rs= stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				isSuccess = true;
				
			}
			else {
				
				isSuccess=false;
				
			}
	}
	catch(Exception e){
		
		e.printStackTrace();

	}
	
	
	return isSuccess;
	
}
	

}

	

