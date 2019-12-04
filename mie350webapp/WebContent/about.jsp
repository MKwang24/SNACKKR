<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App - About</title>
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
			<h1>About Us</h1>
			<div class="col-sm-12 text-left">
				<h4 style = "margin-left:80px; margin-right:80px;">
				SNACKKR is a web application built by seven Industrial Engineering students from the <a href="http://www.utoronto.ca">University of Toronto</a>, 
				who called themselves Strawberry (Stella), Nachos (Nancy), Avocado (Amanda), Coffee (Coco), Krab (Kevin), Kiwi (Kelly), and Rice (Ronnie). 
				</h4>
				<h4 style = "margin-left:80px; margin-right:80px;">
				This web application is built for MIE350 project, and the team does not make any warranties about the completeness, reliability and accuracy of the information provided. 
				Any action you take upon the information on this website is strictly at the user¡¯s own risk, 
				and the team will not be liable for any losses and damages in connection with the use of the website. <hr />
				The software and tools used in the project include: 
				<br /><br>
				<li>Java and JDBC as the backend programming language</li><br>
				<li>HTML, CSS AND JSP as the frontend programming language</li><br>
				<li>Tomcat Server v7.0 as the backend web server</li><br>
				<li>Datasets used in the project is employed from the Kaggle. </li><br> 
				
				</h4>
				
				<center>
					<img src = "img/IMG_0186.jpg" alt = "Team Member" width = 100%>
				</center>
			
				<br />
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>
