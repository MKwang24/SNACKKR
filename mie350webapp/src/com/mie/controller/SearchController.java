package com.mie.controller;
/** This is the work done by Mingkun Wang
 * 
 * @author mingkunkev.wang@mail.utoronto.ca
 *
 */
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.FoodDao;

import com.mie.model.Food;


public class SearchController extends HttpServlet {
	/**
	 * This class only handles the SEARCH feature of the web app.
	 * 
	 * These are variables that lead to the appropriate JSP pages.
	 * 
	 * SEARCH_USER leads to the search results page.
	 * 
	 */
	private static final long serialVersionUID = 2L;
	private static String SEARCH_USER = "/searchFoodResult.jsp";
	private FoodDao dao;

	/**
	 * Constructor for this class.
	 */
	public SearchController() {
		super();
		dao = new FoodDao();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/**
		 * This method handles the retrieval of the search keyword entered by
		 * the user.
		 */
		String keyword = request.getParameter("keyword");
		RequestDispatcher view = request.getRequestDispatcher(SEARCH_USER);

		request.setAttribute("keyword", keyword);
		
		request.setAttribute("foods", dao.getFoodByKeyword(keyword));
		
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