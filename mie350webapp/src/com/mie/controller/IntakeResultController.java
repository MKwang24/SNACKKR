package com.mie.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.IntakeDao;

public class IntakeResultController extends HttpServlet {
	
	private static final long serialVersionUID = 2L;
	private static String SEARCH_USER = "/intakeResult.jsp";
	private IntakeDao dao;
	
	public IntakeResultController() {
		super();
		dao = new IntakeDao();
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/**
		 * This method handles the retrieval of the search keyword entered by
		 * the user.
		 */
		String email = request.getParameter("email");
		RequestDispatcher view = request.getRequestDispatcher(SEARCH_USER);

		request.setAttribute("Email", email);

		request.setAttribute("intakes", dao.getIntakeByEmail(email));
		//Check 
//		System.out.println(request.getAttribute("Food"));
//		System.out.println(dao.getFoodByKeyword(keyword));
		//The value is successfully retrieved. 
		/**
		 * Redirect to the search results page after the list of students
		 * matching the keywords has been retrieved.
		 */

		view.forward(request, response);
	}
	

}
