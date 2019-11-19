package back_end;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.model.Student;
import com.mie.util.DbUtil;

public class FoodDao {
	/**
	 * This class handles all of the Student-related methods
	 * (add/update/delete/get).
	 */
	static Connection currentCon;
	private Connection connection;
	static ResultSet rss = null;

	public FoodDao() {
		/**
		 * Get the database connection.
		 */
		connection = DbUtil.getConnection();
	}

//	public void addStudent(Student student) {
//		/**
//		 * This method adds a new student to the database.
//		 */
//		try {
//			PreparedStatement preparedStatement = connection
//					.prepareStatement("insert into students(firstname,lastname,dob,email) values (?, ?, ?, ? )");
//			// Parameters start with 1
//			preparedStatement.setString(1, student.getFirstName());
//			preparedStatement.setString(2, student.getLastName());
//			preparedStatement.setDate(3, new java.sql.Date(student.getDob()
//					.getTime()));
//			preparedStatement.setString(4, student.getEmail());
//			preparedStatement.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}

//	public void deleteStudent(int studentid) {
//		/**
//		 * This method deletes a student from the database.
//		 */
//		try {
//			PreparedStatement preparedStatement = connection
//					.prepareStatement("delete from students where studentid=?");
//			// Parameters start with 1
//			preparedStatement.setInt(1, studentid);
//			preparedStatement.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
//
//	public void updateStudent(Student student) {
//		/**
//		 * This method updates a student's information into the database.
//		 */
//		try {
//			PreparedStatement preparedStatement = connection
//					.prepareStatement("update students set firstname=?, lastname=?, dob=?, email=?"
//							+ " where studentid=?");
//			// Parameters start with 1
//			preparedStatement.setString(1, student.getFirstName());
//			preparedStatement.setString(2, student.getLastName());
//			preparedStatement.setDate(3, new java.sql.Date(student.getDob()
//					.getTime()));
//			preparedStatement.setString(4, student.getEmail());
//			preparedStatement.setInt(5, student.getStudentid());
//			preparedStatement.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
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

	public List<Food> getFoodByKeyword(String keyword) {
		/**
		 * This method retrieves a list of students that matches the keyword
		 * entered by the user.
		 */
		
//		public String toString() {
//			return "Food [Foodid=" + foodid + ", FoodName=" + FoodName
//					+ ", Carlories=" + Calories + ", TotalFat=" + TotFat + ", Sodium="
//					+ sodium +", Carbohydrate=" + Carbohydrate +", Sugars=" + sugars +", "
//							+ "Protein=" + Protein + "VitaminC=" + VC 
//							+"VitaminD=" + VD +"Water=" + water +"]";
//		}
		List<Food> foods = new ArrayList<Food>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT * FROM Food WHERE FoodName LIKE ?");
			System.out.println("First Check");
			preparedStatement.setString(1, "'*" + keyword + "*'");
			System.out.println("Second Check");
			ResultSet rs = preparedStatement.executeQuery();
			if (!rs.wasNull()){
				System.out.println("Second Check");
			}
			
//			String searchQuery = "SELECT * FROM Food WHERE FoodName LIKE '*Nut*'";
//			currentCon = DbUtil.getConnection();
			
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
				System.out.println(food.toString());
				foods.add(food);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return foods;
	}
}
