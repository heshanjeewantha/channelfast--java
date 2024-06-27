package dashp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class CustomerDBUtil {

	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String username,String password)
	{
		try
		{
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
			 rs = stmt.executeQuery(sql);
			 
			 if(rs.next())
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
	//retrive from database
	public static List<Customer> getCustomer(String userName)
	{
		ArrayList<Customer> customer = new ArrayList<>();
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Customer cus = new Customer(id,name,email,phone,username,password);
				
				customer.add(cus);
				 
			}
		}
		catch(Exception e)
		{
			
		}
		
		return customer;
	}
	
	//insert to database
	public static boolean insertCustomer(String name, String email, String phone, String username, String password)
	{
		 isSuccess = false;
		
		//insert
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
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
	//upadate database
	public static boolean updateCustomer(String id, String name, String email, String phone, String username, String password)
	{
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'" + "where id = '"+id+"'";
			
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

	public static List<Customer> getCustomerDetails(String Id)
	{
		int convertid = Integer.parseInt(Id);
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * From customer where id = '"+convertid+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,username,password);
				
				cus.add(c);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return cus;
	}
	//delete data in databse
	public static boolean deleteCustomer(String Id)
	{
		int convertID = Integer.parseInt(Id);
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where id='"+convertID+"'";
			
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
