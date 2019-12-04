package com.mie.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.mie.model.*;
import com.mie.controller.*;
import com.mie.util.*;

public class RecipeDao {

	/**
	 * This class handles the Member objects and the login component of the web
	 * app.
	 */
	static Connection currentCon = null;
	static ResultSet rs = null;
	
	public static List<Recipe> Recommend(List singleGroup) {

		/**
		 * This method attempts to find the member that is trying to log in by
		 * first retrieving the username and password entered by the user.
		 */
	Statement stmt = null;
	List<Recipe> recipe_list = new ArrayList<Recipe>();

	try {
		// connect to DB
		// first get all the recipe without steps and ingredient 
		currentCon = DbUtil.getConnection();
		PreparedStatement preparedStatement = currentCon.prepareStatement("SELECT * FROM RecipeFact WHERE GroupsFitted LIKE ? OR GroupsFitted LIKE ? OR GroupsFitted LIKE ? OR GroupsFitted LIKE ? OR GroupsFitted LIKE ?");
		
		preparedStatement.setString(1,"%" + (String) singleGroup.get(0)+ "%");
		preparedStatement.setString(2, "%" +(String) singleGroup.get(1)+ "%");
		preparedStatement.setString(3, "%" +(String) singleGroup.get(2)+ "%");
		preparedStatement.setString(4, "%" +(String) singleGroup.get(3)+ "%");
		preparedStatement.setString(5, "%" +(String) singleGroup.get(4)+ "%");
		System.out.println(preparedStatement.toString());
		ResultSet rs = preparedStatement.executeQuery();
		
		while (rs.next()) {
			System.out.print("selected recipe!");
			Recipe recipe = new Recipe();
			recipe.setRecipeid(rs.getInt("RecipeID"));
			recipe.setRecipeName(rs.getString("RecipeName"));
			recipe.setGroupsFitted(rs.getString("GroupsFitted"));
			recipe.setMeal(rs.getString("Meal"));
			recipe.setPrepTime(rs.getInt("PrepTime"));
			recipe.setCookTime(rs.getInt("CookTime"));
			recipe.setTotalTime(rs.getInt("TotalTime"));
			recipe.setServing(rs.getInt("Servings"));
			recipe.setSteps(addStepsById(String.valueOf(recipe.getRecipeid())));
			recipe.setIngreadiants(addIngreadiantById(String.valueOf(recipe.getRecipeid())));
			System.out.print(recipe.toString());
			recipe_list.add(recipe);
			System.out.print(recipe_list);
		}  }catch(SQLException se){
//            displayErrors(se);
            System.out.println(se.getCause() + " " + se.getLocalizedMessage() + " " + se.getLocalizedMessage() + " " + se.getStackTrace());
	    }
	/**
	 * Return the recipe_list.
	 */
	return recipe_list;
	}
	
	public static HashMap<Integer, String> addStepsById(String Recipeid){
		HashMap<Integer, String> steps = new HashMap<Integer, String>();
		try {
			System.out.print("at addStepsById" + Recipeid);
			// connect to DB
			// first get all the recipe without steps and ingredient 
			currentCon = DbUtil.getConnection();
			PreparedStatement preparedStatement = currentCon.prepareStatement("SELECT * FROM RecipeSteps WHERE RecipeID = ?");
			preparedStatement.setString(1, Recipeid );
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				System.out.print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^StepsById");
				steps.put(rs.getInt("StepNumber"), rs.getString("Instruction"));
			} }catch (Exception ex) {
			System.out.println("Fail to select recipe from groups"+ ex);
			}
		System.out.println("Step done!!!!!!!!" + steps );
		return steps;
	}
	
	public static HashMap<String, Double> addIngreadiantById(String Recipeid){
		HashMap<String, Double> ingreadient = new HashMap<String, Double>();
		try {
			System.out.print("at addIngreadiantById");
			// connect to DB
			// first get all the recipe without steps and ingredient 
			currentCon = DbUtil.getConnection();
			PreparedStatement preparedStatement = currentCon.prepareStatement("SELECT * FROM RecipeIngreadiants WHERE RecipeID = ?");
			preparedStatement.setString(1, Recipeid);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				ingreadient.put(rs.getString("Food"), rs.getDouble("Quantity"));
			} }catch (Exception ex) {
			System.out.println("Fail to select recipe from groups"+ ex);
			}
		System.out.println(" ingreadient done!!!!!!!!" + ingreadient );
		return ingreadient;
	}
	
	}
