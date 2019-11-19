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
				<div class="col-sm-12 text-left">
				<h1>Create your own profile</h1>
				<p>
				<!-- should add action here, to a member controller I think -->
				<form action = "CreateAnAccountController">
					<!-- first name, last name, age, email, sex, height, weight, health condition, objectives) -->
					Email: <br /><input type = "text" name = "e" required /><br>
					<br />
					Password: <br /><input type = "password" name = "pw" id="pw1" required /><br>
					<br />
					Nickname: <br /><input type = "text" name = "un" required/><br>
					<br />
					First Name: <br /><input type = "text" name = "fn" required /><br>
					<br />
					Last Name: <br /><input type = "text" name = "ln" required /><br>
					<br />
					Year of Birth: <br /><input type = "text" name = "age" required /><br>
					<br />
					Sex (M or F which means Male or Female): <br /><input type = "text" name = "sex" required /><br>
					<br />
					Height (in cm): <br /><input type = "text" name = "h" required/><br>
					<br />
					Weight (in kg): <br /><input type = "text" name = "w" required/><br>
					<br />
					Health Condition:<br /><input type = "text" size = 100 maxlength = 90 name = "Hc" required /><br>
					<br />
					Objectives: <br /><input type = "text" size = 100 maxlength = 90 name = "o" required/><br>
					<span style = "color: red;"><b>You must fill in all parts here!</b></span>
					<br /><input type="submit"class="btn btn-info" value="Submit">
				</form>
				<script>
				function pw() {
					var pw1 = document.getElementById("pw1").value;
					var pw2 = document.getElementById("pw2").value;
					if(pw1 == pw2) {
						document.getElementById("tishi").innerHTML="<font color = 'green'>same password</font>";
						document.getElementById("submit").disabled = false;
					}
					
					else {
						document.getElementById("tishi").innerHTML="<font color = 'red'>different password</font>";
						document.getElementById("submit").disabled = true;
					}
					
				}
				</script>
				<br>
				
				</p>
				</div>
			</div>
		</div>

	<%@ include file="footer.jsp"%>

</body>
</html>