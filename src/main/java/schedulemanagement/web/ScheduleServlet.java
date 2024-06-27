package schedulemanagement.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import schedulemanagement.dao.ScheduleDAO;
import schedulemanagement.model.Schedule;


@WebServlet("/")
public class ScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ScheduleDAO scheduleDAO;
    
    public ScheduleServlet() {
       this.scheduleDAO = new ScheduleDAO();
       
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action){
			case "/new":
				showNewform(request, response);
				break;
			case "/insert":
				try {
					insertSchedule(request, response);
				} catch (SQLException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				break;
			case "/delete":
				try {
					deleteSchedule(request, response);
				} catch (SQLException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				break;
			case "/edit":
				try {
					showEditForm(request, response);
				} catch (SQLException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				} catch (ServletException e) {
					
					e.printStackTrace();
				}
					
				break;
			case "/update":
				try {
					updateSchedule(request, response);
				} catch (SQLException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				break;
			default:
				//handle list
				try {
					listSchedule(request, response);
				} catch (SQLException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				} catch (ServletException e) {
				
					e.printStackTrace();
				}
					
				break;
		}
			
	}
	
	private void listSchedule(HttpServletRequest request,HttpServletResponse response)
		throws SQLException,IOException,ServletException{
		List<Schedule> listSchedule = scheduleDAO.selectAllSchedules();
		request.setAttribute("listSchedule", listSchedule);
		RequestDispatcher dispatcher = request.getRequestDispatcher("schedule-list.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void updateSchedule(HttpServletRequest request,HttpServletResponse response)
		throws SQLException,IOException{
		
		int sid = Integer.parseInt(request.getParameter("sid"));
		String sdate = request.getParameter("sdate");
		String stime = request.getParameter("stime");
		String etime = request.getParameter("etime");
		String venue = request.getParameter("venue");
		String appno = request.getParameter("appno");
		String did = request.getParameter("did");
		
		Schedule schedule = new Schedule(sid, sdate, stime, etime, venue, appno, did);
		scheduleDAO.updateSchedule(schedule);
		response.sendRedirect("list");
		
	}
	
	private void deleteSchedule(HttpServletRequest request,HttpServletResponse response)
		throws SQLException,IOException{
		
		int sid = Integer.parseInt(request.getParameter("sid"));
		scheduleDAO.deleteSchedule(sid);
		response.sendRedirect("list");
	}
	
	private void showEditForm(HttpServletRequest request,HttpServletResponse response)
		throws SQLException,IOException, ServletException{
		
		int sid = Integer.parseInt(request.getParameter("sid"));
		Schedule existingSchedule = scheduleDAO.selectSchedule(sid);
		RequestDispatcher dispatcher = request.getRequestDispatcher("schedule-form.jsp");
		request.setAttribute("schedule", existingSchedule);
		dispatcher.forward(request, response);
	}
	
	private void showNewform(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException{
		RequestDispatcher dispatcher = request.getRequestDispatcher("schedule-form.jsp");
		dispatcher.forward(request, response);
	}

	private void insertSchedule(HttpServletRequest request,HttpServletResponse response)
	     throws SQLException,IOException {
		String sdate = request.getParameter("sdate");
		String stime = request.getParameter("stime");
		String etime = request.getParameter("etime");
		String venue = request.getParameter("venue");
		String appno = request.getParameter("appno");
		String did = request.getParameter("did");
		
		
		Schedule newSchedule = new Schedule(sdate, stime, etime, venue, appno, did);
		scheduleDAO.insertSchedule(newSchedule);
		response.sendRedirect("list");
		
	}
	
	
}


