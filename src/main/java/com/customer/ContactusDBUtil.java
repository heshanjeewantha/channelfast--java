package com.customer;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

	public class ContactusDBUtil {
		
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		
		//insert data to database
		public static boolean insertContactus(String name, String email, String phone, String subject, String message)
		{
			 isSuccess = false;
			
			//insert
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into contactus values (0,'"+name+"','"+email+"','"+phone+"','"+subject+"','"+message+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs >0)
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
		//update data in database
		public static boolean updateContactus(String id, String name, String email, String phone, String subject, String message)
		{
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "Update contactus set name='"+name+"',email='"+email+"',phone='"+phone+"',subject='"+subject+"',message='"+message+"'" + "where id = '"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0)
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
	 // retrive data from database
		public static List<Contactus> getContactusDetails(String phone)
		{
			
			
			ArrayList<Contactus> cus = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "Select * From contactus where phone= '"+phone+"'";
				
				rs = stmt.executeQuery(sql);
				
				if(rs.next())
				{
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String Phone = rs.getString(4);
					String subject = rs.getString(5);
					String message = rs.getString(6);
					
					Contactus c = new Contactus(id,name,email,Phone,subject,message);
					
					cus.add(c);
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return cus;
		}
		//delete data in database
		public static boolean deleteContactus(String Id)
		{
			int convertID = Integer.parseInt(Id);
			
			try
			{
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from contactus where id='"+convertID+"'";
				
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
				
			}
			
			return isSuccess;
		}
		
}
