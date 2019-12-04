<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
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

	<%
		Member member = (Member) session.getAttribute("currentSessionUser");
		System.out.print("sdf");
		String nickname = (String) session.getAttribute("nickname");
		String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");
	%>

	<%@ include file="navbar_loggedin.jsp"%>
	
	<div class="container-fluid text-center">
		<div class="row content">
			<h1>Food Recommendation</h1>
			<div class = "col-sm-12 text-left">
			<h3>
			<ul>
				<li>UT Sushi</li><br>
				<li>Tomato</li><br>
				<li>Apple</li><br>
				<li>Tofu</li><br>
				<li>Potato</li><br>
				<li>Cucumber</li><br>
			</ul>
			</h3>
			</div>
			<h4><a href = "foodRecommend.jsp">Back</a></h4>
		</div>
	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>