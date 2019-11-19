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
			<h1>Recipe Recommendation</h1>
			<h2>Recipe Name: Breakfast Bagel</h2>
			<div class = "col-sm-6 text-left">
			<h1>Ingredients</h1>
				<h3>
					<ul>
						<li>1/2 whole wheat bagel, toasted</li> <br>
						<li>1 large egg, preferably organic</li> <br>
						<li>1 tsp apple cider vinegar, or any light vinegar</li> <br>
						<li>2 slices tomato</li> <br>
						<li>2 slices avocado</li> <br>
						<li>2 oz low-fat cheese</li> <br>
						<br><br>
					</ul>
				</h3>
			</div>
			<div class="col-sm-6 text-left">
			<h1>Directions</h1>
				<h3>
					1. Bring water and 1 tsp vinegar to a light boil in a shallow pan. Make sure there is enough water to cover egg.<br><br>
					2. While water is coming to a boil, slice bagel in half and toast.<br><br>
					3. Place tomato, avocado, and cheese on top of toasted bagel.<br><br>
					4. Poach eggs, crack into water and cook about 5 minutes, just until the white is set and the yolk has filmed over. 
					Remove with slotted spoon. 
					Place on top of bagel. Season with salt and pepper to taste. Serve open faced.
					<br><br>
				</h3>
			</div>
			<h4><a href = "recipeRecommend.jsp">Back</a></h4>
		</div>
	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>