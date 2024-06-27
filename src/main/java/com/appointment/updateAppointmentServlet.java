package com.appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateAppointmentServlet")
public class updateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aNo  = request.getParameter("aNo");
		String doctor  = request.getParameter("doctor");
		String pNmae  = request.getParameter("pNmae");
		String gender  = request.getParameter("gender");
		String age  = request.getParameter("age");
		String address  = request.getParameter("address");
		String contact  = request.getParameter("contact");
		String email  = request.getParameter("email");
		String date  = request.getParameter("date");
		String center  = request.getParameter("center");
		
		boolean isTrue;
		
		isTrue= AppointmentDBUtil.updateAppointment(aNo, doctor, pNmae, gender, age, address, contact, email, date, center);
		if(isTrue == true) {
			
			List<Appointment> appDetails= AppointmentDBUtil.getAppointmentDetails(contact);
			request.setAttribute("appDetails", appDetails);
			RequestDispatcher dis = request.getRequestDispatcher("Appointmentview.jsp");
			dis.forward(request, response);
			
	}
		else {
			
			List<Appointment> appDetails= AppointmentDBUtil.getAppointmentDetails(contact);
			request.setAttribute("appDetails", appDetails);
			RequestDispatcher dis2 =request.getRequestDispatcher("appointmentinsert.jsp");
			dis2.forward(request, response);
			
		}
	}

	}
