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
<title>MIE350 SNACKKR Web App - Members-Only Home Page<</title>
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
		String email = (String) session.getAttribute("email");
		String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");
	%>
	<%@ include file="navbar_loggedin.jsp"%>
	
	<style>
	body{
		background-image: url('img/35.jpg');
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
	}
	</style>
	<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-12 text-center">
				<h1>Record your food intake!</h1>
				<p>
				<!-- should add action here, to a member controller I think -->
				<form action = "RecordFoodIntakeController">
					Your Email (cannot change): <br /><input type = "text" name = "e" value = <%=email %> readonly /><br>
					<br />
					FoodName: <br /><input type = "text" name = "f" required /><br>
					<br />
					Meal: <br /><input type = "text" name = "m" required /><br>
					<br />
					Date: (MM/DD/YYYY)<br /><input type = "date" name = "d" required/><br>
					<span style = "color: red;"><b>You must fill in all parts here!</b></span>
					<br /><input type="submit"class="btn btn-info" value="Add Intake">
				</form>
				
				</p>
				
				
				</div>
			</div>
		</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<%@ include file="footer.jsp"%>

</body>
</html>