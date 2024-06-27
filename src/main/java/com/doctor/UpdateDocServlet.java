package com.doctor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateDocServlet")
//Inheritance
public class UpdateDocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String did = request.getParameter("did");
		String duname = request.getParameter("duname");
		String dname = request.getParameter("dname");
		String dhos = request.getParameter("dhos");
		String dspec = request.getParameter("dspec");
		String dmob = request.getParameter("dmob");
		String dmail = request.getParameter("dmail");
		String dpass = request.getParameter("dpass");
		
		boolean isTrue;
		
		isTrue = DoctorDBUtil.updatedoctor(did, duname, dname, dhos, dspec, dmob, dmail, dpass);
		
		if(isTrue == true)
		{
			List<Doctor> docDetails = DoctorDBUtil.getDoctorDetails(did) ;
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("doctoraccount.jsp");
			dis.forward(request, response);
		}
		else
		{
			List<Doctor> docDetails = DoctorDBUtil.getDoctorDetails(did) ;
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("doctoraccount.jsp");
			dis.forward(request, response);
		}
	}


}


