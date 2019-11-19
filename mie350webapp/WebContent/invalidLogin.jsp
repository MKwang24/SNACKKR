<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 SNACKKR - Login</title>
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
			<div class="col-sm-12 text-left">
				<h1>User Login</h1>

				<form action="LoginController">

					Email: <br><input type="text" name="un" /><br><br> Password: <br><input
						type="password" name="pw" /> <br><br><input type="submit"
						class="btn btn-info" value="Login">

				</form>
				<br />
				<span><u style = "color: red;">Invalid Login. 
					Your password doesn't match existing user profiles or there is no matching account.</u></span>
				<br /> 
				<b>Do not have an account? Create one right now to enjoy our food and recipe recommendation! </b>
				<ul>
					<li><a href="createAccount.jsp">Click here to create an account</a></li>
				</ul>
			</div>
			
				<!-- You can put right sidebar links here if you want to. -->
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>