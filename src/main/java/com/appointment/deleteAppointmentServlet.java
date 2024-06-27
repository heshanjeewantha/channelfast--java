package com.appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteAppointmentServlet")
public class deleteAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("aNo");
		
		boolean isTrue;
		
		isTrue = AppointmentDBUtil.deleteAppointment(id);
		
		if(isTrue == true) {
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("appointmentinsert.jsp");
			dispatcher.forward(request, response);
			
	}
		else {
			
			List<Appointment> appDetails= AppointmentDBUtil.getAppointmentDetails(id);
			request.setAttribute("appDetails", appDetails);
			RequestDispatcher dis2 =request.getRequestDispatcher("Appointmentview.jsp");
			dis2.forward(request, response);
			
		}

}
}