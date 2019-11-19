<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 SNACKKR Web App</title>
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

	<%@ include file="navbar.jsp"%>
	<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-2 sidenav">
					<!-- You can put left sidebar links here if you want to. -->
				</div>
				<div class="col-sm-8 text-left">
				<h1>Create your own profile</h1>
				<p>
				<!-- should add action here, to a member controller I think -->
				<form>
					<!-- first name, last name, age, email, sex, height, weight, health condition, objectives) -->
					Username: <br /><input type = "text" name = "un" /><br>
					<br />
					Password: <br /><input type = "password" name = "pw" /><br>
					<br />
					Email: <br /><input type = "text" name = "e" /><br>
					<br />
					First Name: <br /><input type = "text" name = "fn" /><br>
					<br />
					Last Name: <br /><input type = "text" name = "ln" /><br>
					<br />
					Age: <br /><input type = "text" name = "age" /><br>
					<br />
					Sex: <br /><input type = "text" name = "sex" /><br>
					<br />
					Height (in cm): <br /><input type = "text" name = "h" /><br>
					<br />
					Weight (in kg): <br /><input type = "text" name = "w" /><br>
					<br />
					Health Condition: <br />
					<input type = "checkbox" name = "hc" value = "hbp"/> High Blood Pressure
					<br /><input type = "checkbox" name = "hc" value = "dia"/> Diabetes
					<br /><input type = "checkbox" name = "hc" value = "heal"/> Healthy
					<br /><br />
					Objectives: <br /><input type = "text" size = 100 maxlength = 90 name = "o" /><br>
					<br /><input type="submit"class="btn btn-info" value="Submit">
				</form>
				</p>
				</div>
			</div>
		</div>

	<%@ include file="footer.jsp"%>

</body>
</html>