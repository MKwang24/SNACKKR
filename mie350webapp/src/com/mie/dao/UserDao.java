package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.model.*;
import com.mie.controller.*;
import com.mie.util.*;

public class UserDao {

	/**
	 * This class handles the Member objects and the login component of the web
	 * app.
	 */
	static Connection currentCon = null;
	static ResultSet rs = null;
	
	public static boolean addUser(User user) {
		/**
		 * This method adds a new student to the database.
		 */
		System.out.print(user.toString() + "\n");
		boolean result = true;
		try {
			currentCon = DbUtil.getConnection();
			PreparedStatement preparedStatement = currentCon
					.prepareStatement("INSERT INTO UserProfile (FirstName, LastName, NickName, YearofBirth, Email, Password, Sex, HealthCondition, Height, Weight, Objectives) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			// Parameters start with 1
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getNickname());
			preparedStatement.setInt(4, user.getYearofBirth());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getPassword());
			preparedStatement.setString(7, user.getsex());
			preparedStatement.setString(8, user.gethealthcondition());
			preparedStatement.setInt(9, user.getheight());
			preparedStatement.setInt(10, user.getweight());
			preparedStatement.setString(11, user.getobjectives());
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			result = false;
		}
		return result;
	}
	
	public static User login(User user) {

		/**
		 * This method attempts to find the member that is trying to log in by
		 * first retrieving the username and password entered by the user.
		 */
		Statement stmt = null;

		String userEmail = user.getEmail();
		String password = user.getPassword();
		System.out.print("at userDao!" + userEmail +password+ "\n");
		/**
		 * Prepare a query that searches the members table in the database
		 * with the given username and password.
		 */
		String searchQuery = "SELECT * FROM UserProfile WHERE Email='" + userEmail + "' AND Password='"+ password +"'";
//				"select * from UserProfile where Email='"
//				+ userEmail + "' AND Password='" + password + "'";

		try {
			// connect to DB
			currentCon = DbUtil.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();
			System.out.println("\n" + more);

			/**
			 * If there are no results from the query, set the member to false.
			 * The person attempting to log in will be redirected to the home
			 * page when isValid is false.
			 */
			
			if (!more) {
				user.setValid(false);
			}

			/**
			 * If the query results in an database entry that matches the
			 * username and password, assign the appropriate information to
			 * the Member object.
			 */
			else if (more) {
				String firstName = rs.getString("FirstName");
				String lastName = rs.getString("LastName");
				String nickname = rs.getString("NickName");
				int yearOfBirth = Integer.valueOf(rs.getString("YearofBirth"));
				String email = rs.getString("Email");
				String user_password = rs.getString("Password");
				String sex = rs.getString("Sex");
				String healthCondision = rs.getString("HealthCondition");
				int height = Integer.valueOf(rs.getString("Height"));
				int weight = Integer.valueOf(rs.getString("Weight"));
				String objective = rs.getString("Objectives");
				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setNickname(nickname);
				user.setYearofBirth(yearOfBirth);
				user.setEmail(email);;
				user.setPassword(user_password);;
				user.setsex(sex);
				user.sethealthcondition(healthCondision);
				user.setheight(height);
				user.setweight(weight);
				user.setobjectives(objective);
				user.setValid(true);
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! "
					+ ex);
		}
		/**
		 * Return the Member object.
		 */
		return user;

	}
	public static boolean updateUser(User user) {
		/**
		 * This method updates a new student to the database.
		 */
		System.out.print(user.toString() + "\n");
		boolean result = true;
		try {
			currentCon = DbUtil.getConnection();
			PreparedStatement preparedStatement = currentCon
					.prepareStatement("UPDATE UserProfile Set FirstName = ?, LastName = ?, NickName = ?, YearofBirth = ?, Password = ?, Sex = ?, HealthCondition = ?, Height = ?, Weight = ?, Objectives = ? WHERE  Email = ?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getNickname());
			preparedStatement.setInt(4, user.getYearofBirth());
			preparedStatement.setString(5, user.getPassword());
			preparedStatement.setString(6, user.getsex());
			preparedStatement.setString(7, user.gethealthcondition());
			preparedStatement.setInt(8, user.getheight());
			preparedStatement.setInt(9, user.getweight());
			preparedStatement.setString(10, user.getobjectives());
			preparedStatement.setString(11, user.getEmail());
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			result = false;
		}
		return result;
	}

}
