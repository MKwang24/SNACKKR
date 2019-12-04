package com.mie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.RecipeDao;
import com.mie.dao.UserDao;
import com.mie.model.Recipe;
import com.mie.model.User;

public class RecommendRecipeController  extends HttpServlet {
	private static String SEARCH_USER = "/RecipeResult.jsp";
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		System.out.println("\n ");
		/**
		 * Retrieve the entered username and password from the login.jsp form.
		 **/
		//list to record groups the user selected 
		List groups = new ArrayList<String>();
		//list to store recipes from db 
		List recipes = new ArrayList<Recipe>();
		//Patients=1, Teenagers=2, Adults=3, Senior=4, Athletes=5
		if (request.getParameter("Patients") != null){
			groups.add("1");
		}else{
			groups.add(" ");
		}
		if (request.getParameter("Teenagers") != null){
			groups.add("2");
		}else{
			groups.add(" ");
		}
		if (request.getParameter("Adults") != null){
			groups.add("3");
		}else{
			groups.add(" ");
		}
		if (request.getParameter("Senior") != null){
			groups.add("4");
		}else{
			groups.add(" ");
		}
		if (request.getParameter("Athletes") != null){
			groups.add("5");
		}else{
			groups.add(" ");
		}
		
		System.out.print(groups.toString());
		try {
			/**
			 * Try to see if the member can log in.
			 */
			recipes.addAll(RecipeDao.Recommend(groups));
			System.out.print("\n"+recipes);  
			
			/**
			 * If the isValid value is true, assign session attributes to the
			 * current member.
			 */
			if (recipes.size()>0) {

				HttpSession session = request.getSession(true);
				RequestDispatcher view = request.getRequestDispatcher(SEARCH_USER);
				session.setAttribute("Addedrecipe", recipes);
				
				/**
				 * Redirect to the members-only home page.
				 */
//				System.out.println("to: homepage.jsp ;");
//				response.sendRedirect("index.jsp");
//				System.out.println("\n after: homepage.jsp ;");

				view.forward(request, response);
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
