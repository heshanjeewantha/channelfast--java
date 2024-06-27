package schedulemanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import schedulemanagement.model.Schedule;

public class ScheduleDAO {
	
	//create database connection
		private String url = "jdbc:mysql://localhost:3306/echan";
		private String user = "root";
		private String pass = "amma2amma";
		
		private static final String INSERT_SCHE_SQL = "INSERT INTO schedule" + " (sdate, stime, etime, venue, appno, did) VALUES " + " (?, ?, ?, ?, ?,?);";
		private static final String SELECT_SCHE_BY_ID = "select sid,sdate,stime,etime,venue,appno,did from schedule where sid =?";
		private static final String SELECT_ALL_SCHE = "select * from schedule";
		private static final String DELETE_SCHE_SQL = "delete from schedule where sid =?;";
		private static final String UPDATE_SCHE_SQL = "update schedule set sdate = ?,stime = ?, etime =?, venue =?, appno =?, did =? where sid = ?;";
		
		protected Connection getConnection() {
			Connection connection = null;
			 try {
				 Class.forName("com.mysql.jdbc.Driver");
				 connection = DriverManager.getConnection(url, user, pass);
			 }catch(SQLException e) {
				 
				 e.printStackTrace();
		     }catch(ClassNotFoundException e) {
		    	 
		    	 e.printStackTrace();
		     }
			 return connection;
			
		}
		
		//Insert schedule
		public void insertSchedule(Schedule schedule) throws SQLException  {
			
			try (Connection connection = getConnection();
			        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SCHE_SQL);){
				preparedStatement.setString(1, schedule.getSdate());
				preparedStatement.setString(2, schedule.getStime());
				preparedStatement.setString(3, schedule.getEtime());
				preparedStatement.setString(4, schedule.getVenue());
				preparedStatement.setString(5, schedule.getAppno());
				preparedStatement.setString(6, schedule.getDid());
				preparedStatement.executeUpdate();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
				
	    }
			
        //Update schedule
		public boolean updateSchedule(Schedule schedule) throws SQLException{
			
			boolean rowUpdated;
			try (Connection connection = getConnection();
					PreparedStatement statement = connection.prepareStatement(UPDATE_SCHE_SQL);){
				statement.setString(1, schedule.getSdate());
				statement.setString(2, schedule.getStime());
				statement.setString(3, schedule.getEtime());
				statement.setString(4, schedule.getVenue());
				statement.setString(5, schedule.getAppno());
				statement.setString(6, schedule.getDid());
				statement.setInt(7, schedule.getSid());
				
				
				rowUpdated = statement.executeUpdate() > 0;
			}
			return rowUpdated;
		}
		
		//Select schedule by id
		public Schedule selectSchedule(int sid) {
			
			Schedule schedule = null;
			//Establishing the connection
			try (Connection connection = getConnection();
					
					//create a statement using connection object
					PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SCHE_BY_ID);) {
				preparedStatement.setInt(1, sid);
				System.out.println(preparedStatement);
				
				//Execute the query
				ResultSet rs =preparedStatement.executeQuery();
				
				//process the ResultSet object
				while(rs.next()) {
					String sdate = rs.getString("sdate");
					String stime = rs.getString("stime");
					String etime = rs.getString("etime");
					String venue = rs.getString("venue");
					String appno = rs.getString("appno");
					String did = rs.getString("did");
					
					schedule = new Schedule(sid,sdate, stime, etime, venue, appno, did);
					
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return schedule;
		}
		
		//Select all schedule
		public List<Schedule> selectAllSchedules() {
			
			List<Schedule> schedules = new ArrayList<>();
			//Establishing the connection
			try (Connection connection = getConnection();
					
					//create a statement using connection object
					PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SCHE);) {
				
				System.out.println(preparedStatement);
				
				//Execute the query
				ResultSet rs =preparedStatement.executeQuery();
				
				//process the ResultSet object
				while(rs.next()) {
					int sid = rs.getInt("sid");
					String sdate = rs.getString("sdate");
					String stime = rs.getString("stime");
					String etime = rs.getString("etime");
					String venue = rs.getString("venue");
					String appno = rs.getString("appno");
					String did = rs.getString("did");
					
					schedules.add(new Schedule(sid, sdate, stime, etime, venue, appno, did));
					
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return schedules;
		}
		
		//Delete schedule
		public boolean deleteSchedule(int sid) throws SQLException{
			boolean rowDeleted;
			
			try (Connection connection = getConnection();
					PreparedStatement statement = connection.prepareStatement(DELETE_SCHE_SQL);) {
				statement.setInt(1, sid);
				rowDeleted = statement.executeUpdate() > 0;
			}
			return rowDeleted;
		}

}
