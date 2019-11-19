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
<title>MIE350 Sample Web App - Members-Only Home Page</title>
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
		String email = (String) session.getAttribute("email");
		String yearofbirth = (String) session.getAttribute("yob");
		String sex = (String) session.getAttribute("sex");
		String height = (String) session.getAttribute("height");
		String weight = (String) session.getAttribute("weight");
		String health = (String) session.getAttribute("healthcon");
		String objective = (String) session.getAttribute("obj");
		
	%>
	<%@ include file="navbar_loggedin.jsp"%>

	<div class="container-fluid text-center">
		<div class="row content">
			<%@ include file="sidebar_loggedin.jsp"%>
			<div class="col-sm-10 text-left">

				<h1><i>
					Welcome,
					<%=firstname%>
					<%=lastname%>!
				</i></h1>


				Welcome to SNAKKER members-only page.

				<h2>Account Profile</h2> <a href = editprofile.jsp><b><u>Edit your profile here.</u></b></a> 
				<h4>Your information are listed below: </h4>
				
				<p>
				<!-- should add action here, to a member controller I think -->
				<form action = "EditAnAccountcontroller">
					<!-- first name, last name, age, email, sex, height, weight, health condition, objectives) -->
					Email (cannot change): <br /><input type = "text" name = "e" value = <%=email %> readonly /><br>
					<br />
					Nickname: <br /><input type = "text" name = "un" value = <%=nickname%> readonly /><br>
					<br />
					First Name: <br /><input type = "text" name = "fn" value = <%=firstname %> readonly /><br>
					<br />
					Last Name: <br /><input type = "text" name = "ln" value = <%=lastname %> readonly /><br>
					<br />
					Year of Birth: <br /><input type = "text" name = "age" value = <%=yearofbirth %> readonly /><br>
					<br />
					Sex (M or F which means Male or Female): <br /><input type = "text" name = "sex" value = <%=sex %> readonly /><br>
					<br />
					Height (in cm): <br /><input type = "text" name = "h" value = <%=height %> readonly /><br>
					<br />
					Weight (in kg): <br /><input type = "text" name = "w" value = <%=weight %> readonly /><br>
					<br />
					Health Condition: <br /><input type = "text" size = 100 maxlength = 90 name = "Hc" value = <%=health %> readonly /><br>
					<br />
					Objectives: <br /><input type = "text" size = 100 maxlength = 90 name = "o" value = <%=objective %> readonly /><br>

				</form>
				
				</p>


			</div>
			
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>