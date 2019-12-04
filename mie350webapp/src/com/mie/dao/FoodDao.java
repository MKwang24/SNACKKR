package com.mie.dao;
/** This is the work done by Mingkun Wang
 * 
 * @author mingkunkev.wang@mail.utoronto.ca
 *
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.model.Food;
import com.mie.util.DbUtil;

public class FoodDao {
	/**
	 * This class handles all of the Student-related methods
	 * (add/update/delete/get).
	 */
	List<Food> addedfoods = new ArrayList<Food>();

	private Connection connection;

	public FoodDao() {
		/**
		 * Get the database connection.
		 */

		connection = DbUtil.getConnection();
	}

//
//	public List<Student> getAllStudents() {
//		/**
//		 * This method returns the list of all students in the form of a List
//		 * object.
//		 */
//		List<Student> students = new ArrayList<Student>();
//		try {
//			Statement statement = connection.createStatement();
//			// System.out.println("getting students from table");
//			ResultSet rs = statement.executeQuery("select * from students");
//			while (rs.next()) {
//				Student student = new Student();
//				student.setStudentid(rs.getInt("studentid"));
//				student.setFirstName(rs.getString("firstname"));
//				student.setLastName(rs.getString("lastname"));
//				student.setDob(rs.getDate("dob"));
//				student.setEmail(rs.getString("email"));
//				students.add(student);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		return students;
//	}
//
//	public Student getStudentById(int studentid) {
//		/**
//		 * This method retrieves a student by their StudentID number.
//		 * 
//		 * Currently not used in the sample web app, but code is left here for
//		 * your review.
//		 */
//		Student student = new Student();
//		try {
//			PreparedStatement preparedStatement = connection
//					.prepareStatement("select * from students where studentid=?");
//			preparedStatement.setInt(1, studentid);
//			ResultSet rs = preparedStatement.executeQuery();
//
//			if (rs.next()) {
//				student.setStudentid(rs.getInt("studentid"));
//				student.setFirstName(rs.getString("firstname"));
//				student.setLastName(rs.getString("lastname"));
//				student.setDob(rs.getDate("dob"));
//				student.setEmail(rs.getString("email"));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		return student;
//	}
	public Food getFoodById(int id) {
		/**
		 * This method retrieves a list of students that matches the keyword
		 * entered by the user.
		 */
		
		Food food = new Food();
		try {
		PreparedStatement preparedStatement = connection
				.prepareStatement("SELECT * FROM Food WHERE ID = ?");
		String sid = String.valueOf(id);
		System.out.println(sid);
		preparedStatement.setString(1, sid );
		ResultSet rs = preparedStatement.executeQuery();
		//System.out.println(rs.next());
		if (rs.next()) {

			food.setFoodid(rs.getInt("ID"));
			food.setFoodname(rs.getString("FoodName"));
			food.setCalories(rs.getInt("Calories"));
			food.setTotFat(rs.getInt("TotalFat(g)"));
			food.setSodium(rs.getInt("Sodium(mg)"));
			food.setCarb(rs.getInt("Carbohydrate(g)"));
			food.setSugars(rs.getInt("Sugars(g)"));
			food.setProtein(rs.getInt("Protein(g)"));
			food.setVC(rs.getInt("VC(mcg)"));
			food.setVD(rs.getInt("VD(mcg)"));
			food.setWater(rs.getInt("Water(g)"));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
		return food;
	}


	public List<Food> getFoodByKeyword(String keyword) {
		/**
		 * This method retrieves a list of students that matches the keyword
		 * entered by the user.
		 */
		List<Food> foods = new ArrayList<Food>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT * FROM Food WHERE FoodName LIKE ?");
			preparedStatement.setString(1, "%" + keyword + "%");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				System.out.println("success rs.next() in FoodDao");
				Food food = new Food();
				food.setFoodid(rs.getInt("ID"));
				
				food.setFoodname(rs.getString("FoodName"));
				food.setCalories(rs.getInt("Calories"));
				food.setTotFat(rs.getInt("TotalFat(g)"));
				food.setSodium(rs.getInt("Sodium(mg)"));
				food.setCarb(rs.getInt("Carbohydrate(g)"));
				food.setSugars(rs.getInt("Sugars(g)"));
				food.setProtein(rs.getInt("Protein(g)"));
				food.setVC(rs.getInt("VC(mcg)"));
				food.setVD(rs.getInt("VD(mcg)"));
				food.setWater(rs.getInt("Water(g)"));
				foods.add(food);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return foods;
	}

	public List<Food> getAddedFoodList(int id) {
		/**
		 * This method retrieves a list of students that matches the keyword
		 * entered by the user.
		 */

		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT * FROM Food WHERE FoodId = ?");
			String sid = String.valueOf(id);
			System.out.println(sid);
			preparedStatement.setString(1, "%" + sid + "%");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Food food = new Food();
				food.setFoodid(rs.getInt("ID"));
				food.setFoodname(rs.getString("FoodName"));
				food.setCalories(rs.getInt("Calories"));
				food.setTotFat(rs.getInt("TotalFat(g)"));
				food.setSodium(rs.getInt("Sodium(mg)"));
				food.setCarb(rs.getInt("Carbohydrate(g)"));
				food.setSugars(rs.getInt("Sugars(g)"));
				food.setProtein(rs.getInt("Protein(g)"));
				food.setVC(rs.getInt("VC(mcg)"));
				food.setVD(rs.getInt("VD(mcg)"));
				food.setWater(rs.getInt("Water(g)"));
				addedfoods.add(food);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return addedfoods;
	}
	public List<Food> getSumFoodList(List<Food> fl) {
		/**
		 * This method retrieves a list of students that matches the keyword
		 * entered by the user.
		 */
		List<Food> sumlist = new ArrayList<Food>();
		Food sum = new Food();
		sum.setFoodid(00000);
		sum.setFoodname("SUM");
		int sumcal=0;int sumfat = 0;int sumsodium =0;int sumcarb = 0;int sumsugar = 0;
		int sumprotein = 0;int sumVC = 0;int sumVD = 0;int sumwater = 0;

		for (Food food : fl){
			sumcal+= food.getCalories();
			sumfat+= food.getTotFat();
			sumsodium += food.getSodium();
			sumcarb += food.getCarb();
			sumsugar += food.getSugars();
			sumprotein += food.getProteins();
			sumVC += food.getVC();
			sumVD += food.getVD();
			sumwater += food.getWater();
		}
		sum.setCalories(sumcal);
		sum.setTotFat(sumfat);
		sum.setSodium(sumsodium);
		sum.setCarb(sumcarb);
		sum.setSugars(sumsugar);
		sum.setProtein(sumprotein);
		sum.setVC(sumVC);
		sum.setVD(sumVD);
		sum.setWater(sumwater);
		sumlist.add(sum);

		return sumlist;
	}
}
