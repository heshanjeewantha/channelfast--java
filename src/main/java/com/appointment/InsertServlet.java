package com.appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


		public InsertServlet () {
	        super();
	    }
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String doctor  = request.getParameter("doctor");
			String pName =request.getParameter("pNmae");
			String gender =request.getParameter("gender");
			String age =request.getParameter("age");
			String address =request.getParameter("address");
			String connum =request.getParameter("contact");
			String email=request.getParameter("email");
			String date=request.getParameter("date");
			String center=request.getParameter("center");
			
			boolean isTrue = AppointmentDBUtil.appointmentinsert(doctor, pName, gender, age, address,connum,email,date,center);
			
			if (isTrue== true) {
				
				List<Appointment> appDetails= AppointmentDBUtil.getAppointmentDetails(connum);
				request.setAttribute("appDetails", appDetails);
				RequestDispatcher dis = request.getRequestDispatcher("Appointmentview.jsp");
				dis.forward(request, response);
				
			}
			else {
				List<Appointment> appDetails= AppointmentDBUtil.getAppointmentDetails(connum);
				request.setAttribute("appDetails", appDetails);
				RequestDispatcher dis2 =request.getRequestDispatcher("UnSuccess.jsp");
				dis2.forward(request, response);
				
		
	}
	

}
}
