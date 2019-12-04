<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- Check to see if the user is logged in. Otherwise, redirect back to the login page.-->
<head>
<title>MIE350 Sample Web App - Contact</title>
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

	<%@ include file="navbar.jsp"%>


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-12 text-left">
				<h1>Contact</h1>
				<h4>If you run into any issues with exploring this web,
				please contact SNACKKR group members listed below.</h4><br />
				<h4>
				<b>Manager:</b><br /> <br />
				Mingkun Wang: mingkunkev.wang@mail.utoronto.ca <br /><br /><br />
				
				<b>Member:</b><br /> <br />
				Sijia Li: sijianancy.li@mail.utoronto.ca <br /> <br />
				Jiahua Chen: amandaaa.chen@mail.utoronto.ca<br /> <br />
				Jiaru Li: kellyjiaru.li@mail.utoronto.ca<br /> <br />
				Keying Chen: keying.chen@mail.utoronto.ca<br /> <br />
				Ruiyang Li: ruiyang.li@mail.utoronto.ca<br /> <br />
				Yichun Guan: yichun.guan@mail.utoronto.ca
				
				</h4>
				<center>
					<img src = "img/IMG_0186.jpg" alt = "Team Member" width = 100%>
				</center>
				<br />
				<br />
			</div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>


</body>
</html>



