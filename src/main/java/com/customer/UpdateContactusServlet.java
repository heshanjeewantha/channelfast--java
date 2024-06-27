package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateContactusServlet")
public class UpdateContactusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get from updateContactus
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String subject = request.getParameter("uname");
		String message = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = ContactusDBUtil.updateContactus(id, name, email, phone, subject, message);
		
		if(isTrue == true)
		{
			List<Contactus> cusDetails = ContactusDBUtil.getContactusDetails(phone);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactuseraccount.jsp");
			dis.forward(request, response);
		}
		else
		{
			List<Contactus> cusDetails = ContactusDBUtil.getContactusDetails(phone);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactuseraccount.jsp");
			dis.forward(request, response);
		}
	}

}