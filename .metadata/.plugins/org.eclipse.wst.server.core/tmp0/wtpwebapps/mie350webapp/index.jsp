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
	<img src = "img/home_page.jpg" alt = "Title food image" width = 100%>
	<%@ include file="navbar.jsp"%>



	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-12 text-center">
				<h2><b>SNACKKR</b></h2>
				<p>Authors: Stella Strawberry, Nancy Nachos, Amanda Avocado, Coco Coffee, Kelly Kiwi, Kevin Krab, Ronnie Rice</p>			
				<br />
					<a href = "about.jsp">
						<img src = "img/about.jpg" alt = "about" width = 20%>
					</a>
					<a href = "searchFood.jsp">
						<img src = "img/searchfood.jpg" alt = "search food" width = 20%>
					</a>
					<a href = "contact.jsp">
						<img src = "img/contact.jpg" alt = "contact" width = 20%>
					</a>
				<h3><b>Login to enjoy more functions like: recipe recommendation, calculate food calories and record food intake!</b></h3>
				<p style = "margin-left:370px; margin-right:370px;">
					SNACKKR is a web application focusing on personal health, in particular, meal planning.
					It gives people a sense of control in their own health and keep in shape through better acknowledgment of their diet. 
					SNACKKR allows user to search food nutrition, calculate calories and nutritions, as well as gives recommendations to users on food and recipes.
				</p>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>


