package com.mie.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.model.*;
import com.mie.dao.*;


/**
 * Servlet implementation for LoginController.
 * 
 * This class handles the login servlet and assigns session attributes for users
 * who succesfully log into the system.
 */
public class EditAnAccountcontroller extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		System.out.println("\n edit an account");
		/**
		 * Retrieve the entered username and password from the login.jsp form.
		 */
		User member = new User();
		member.setNickname(request.getParameter("un"));
		member.setPassword(request.getParameter("pw"));
		member.setEmail(request.getParameter("e"));
		member.setFirstName(request.getParameter("fn"));
		member.setLastName(request.getParameter("ln"));
		member.setYearofBirth(Integer.valueOf(request.getParameter("age")));
		member.setsex(request.getParameter("sex"));
		member.setheight(Integer.valueOf(request.getParameter("h")));
		member.setweight(Integer.valueOf(request.getParameter("w")));
		member.setobjectives(request.getParameter("o"));
		member.sethealthcondition(request.getParameter("Hc"));
		System.out.print(member);
		try {
			/**
			 * Try to see if the member can log in.
			 */
			boolean result = UserDao.updateUser(member);
			System.out.print("\n"+result);  

			/**
			 * If the isValid value is true, assign session attributes to the
			 * current member.
			 */
			if (result) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionmember", member);
				session.setAttribute("email", member.getEmail());
				session.setAttribute("firstname", member.getFirstName());
				session.setAttribute("lastname", member.getLastName());
				/**
				 * Redirect to the members-only home page.
				 */
				System.out.println("to: homepage.jsp ;");
				response.sendRedirect("memberLogged.jsp");
				System.out.println("\n after: homepage.jsp ;");

			}

			else {
				/**
				 * Otherwise, redirect the user to the invalid login page and
				 * ask them to log in again with the proper credentials.
				 */
				response.sendRedirect("invalidLogin.jsp");
			}
		}

		catch (Throwable theException) {
			/**
			 * Print out any errors.
			 */
			System.out.println(theException);
		}
	}
}
