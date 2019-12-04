<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<!-- Check to see if the user is logged in. Otherwise, redirect back to the login page.-->
<%
	session = request.getSession();
	System.out.println(session);
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	}
%>

<head>
<title>MIE350 Sample Web App - Members-Only Home Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Date Picker Javascript -->
<!-- https://jqueryui.com/datepicker/ -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>


	<%
		Member member = (Member) session.getAttribute("currentSessionUser");
		System.out.print("sdf");
		String nickname = (String) session.getAttribute("nickname");
		String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");
		String password = (String) session.getAttribute("psw");
		String email = (String) session.getAttribute("email");
		String yearofbirth = (String) session.getAttribute("yob");
		String sex = (String) session.getAttribute("sex");
		String height = (String) session.getAttribute("height");
		String weight = (String) session.getAttribute("weight");
		String health = (String) session.getAttribute("Hc");
		String objective = (String) session.getAttribute("o");
		
		
	%>
	<%@ include file="navbar_loggedin.jsp"%>
	<style>
	body{
		background-image: url('img/91.jpg');
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
		
	}
	</style>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-12 text-center">

				<h1>Edit Your Profile</h1>
				<p>
				<!-- should add action here, to a member controller I think -->
				<form action = "EditAnAccountcontroller">
					<!-- first name, last name, age, email, sex, height, weight, health condition, objectives) -->
					Email (cannot change): <br /><input type = "text" name = "e" value = <%=email %> readonly /><br>
					<br />
					Password: <br /><input type = "password" name = "pw" value = <%=password %> required /><br>
					<br />
					Nickname: <br /><input type = "text" name = "un" value = <%=nickname%> required /><br>
					<br />
					First Name: <br /><input type = "text" name = "fn" value = <%=firstname %> required /><br>
					<br />
					Last Name: <br /><input type = "text" name = "ln" value = <%=lastname %> required /><br>
					<br />
					Year of Birth: <br /><input type = "text" name = "yob" value = <%=yearofbirth %> required /><br>
					<br />
					Sex (M or F which means Male or Female): <br /><input type = "text" name = "sex" value = <%=sex %> required /><br>
					<br />
					Height (in cm): <br /><input type = "text" name = "h" value = <%=height %> required /><br>
					<br />
					Weight (in kg): <br /><input type = "text" name = "w" value = <%=weight %> required/><br>
					<br />
					Health Condition:<br />
					<input type = "radio" name = "Hc" value = "Normal" > Normal<br>
					<input type = "radio" name = "Hc" value = "Underweight" > Underweight<br>
					<input type = "radio" name = "Hc" value = "Slightly_Overweight" > Slightly Overweight<br>
					<input type = "radio" name = "Hc" value = "Overweight" > Overweight<br>
					<br />
					Objectives: <br />
					<input type = "checkbox" name = "Lose_Weight" value = "Lose_Weight" > Lose Weight<br>
					<input type = "checkbox" name = "Gain_Muscle" value = "Gain_Muscle" > Gain Muscle<br>
					<input type = "checkbox" name = "Keep_Health" value = "Keep_Health" > Keep Health<br>
					<br />
					<span style = "color: red;"><b>You must fill in all parts except Health Condition and Objectives!</b></span>
					<br /><input type="submit"class="btn btn-info" value="Submit">
				</form>
				
				</p>


			</div>
			
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>