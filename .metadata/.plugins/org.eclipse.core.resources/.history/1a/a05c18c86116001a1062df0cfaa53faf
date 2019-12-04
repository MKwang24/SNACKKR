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
	<img src = "img/home_page.jpg" alt = "Title food image" width = 100%>
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
			<div class="col-sm-12 text-center">
				<h3><b>SNACKKR</b></h3>
				<p>Authors: Stella Strawberry, Nancy Nachos, Amanda Avocado, Coco Coffee, Kelly Kiwi, Kevin Krab, Ronnie Rice</p>			
				<br />
					<a href = "about.jsp">
						<img src = "img/about.jpg" alt = "about" width = 20%>
					</a>
					<a href = "searchFood.jsp">
						<img src = "img/searchfood.jpg" alt = "search food" width = 20%>
					</a>
					<a href = "foodRecommend.jsp">
						<img src = "img/recomfood.jpg" alt = "food recommendation" width = 20%>
					</a>
					<br />
					<a href = "contact.jsp">
						<img src = "img/contact.jpg" alt = "contact" width = 20%>
					</a>
					<a href = "searchArecipe.jsp">
						<img src = "img/searchrecipes.jpg" alt = "search a recipe" width = 20%>
					</a>
					<a href = "recipeRecommend.jsp">
						<img src = "img/recomrecipe.jpg" alt = "recipe recommendation" width = 20%>
					</a>
				<h3><b>We are ready to help you with healthy diet!</b></h3>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>
