package com.mie.controller;
/** This is the work done by Mingkun Wang
 * 
 * @author mingkunkev.wang@mail.utoronto.ca
 *
 */
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mie.dao.FoodDao;
import com.mie.model.Food;


public class AddController extends HttpServlet {
	/**
	 * This class only handles the SEARCH feature of the web app.
	 * 
	 * These are variables that lead to the appropriate JSP pages.
	 * 
	 * SEARCH_USER leads to the search results page.
	 * 
	 */
	private static final long serialVersionUID = 2L;
	private static String SEARCH_USER = "/CalculateResult.jsp";
	private FoodDao dao;
	private List <Food> foodlist = new ArrayList<Food>(); 

	/**
	 * Constructor for this class.
	 */
	public AddController() {
		super();
		dao = new FoodDao();
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/**
		 * This method handles the retrieval of the search keyword entered by
		 * the user.
		 */
	       String button = request.getParameter("Reset");
	       String sid = request.getParameter("ID");
	       int id = Integer.parseInt(sid);
	       if (button !=null){
	    	   foodlist.clear();
	       }
        
		RequestDispatcher view = request.getRequestDispatcher(SEARCH_USER);
		foodlist.add(dao.getFoodById(id));
		request.setAttribute("ID", id);
		request.setAttribute("Addedfoods", foodlist);
		request.setAttribute("SUM", dao.getSumFoodList(foodlist));
		//Check 

		//The value is successfully retrieved. 
		/**
		 * Redirect to the search results page after the list of students
		 * matching the keywords has been retrieved.
		 */

		view.forward(request, response);
	}


}