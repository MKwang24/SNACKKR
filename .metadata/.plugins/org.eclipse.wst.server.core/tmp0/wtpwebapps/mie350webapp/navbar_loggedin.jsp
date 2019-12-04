<nav class="navbar navbar-inverse" style="background-color: #DDF7ED; text-color: black;">
	<div class="container-fluid-center">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"><b>SNACKKR</b></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="index_logged.jsp"><b>Home</b></a></li>
				<li><a href="about_logged.jsp"><b>About</b></a></li>
				<li><a href="CalculateFood.jsp"><b>Search Food & Calculate</b></a></li>
				<li><a href="recipeRecommend.jsp"><b>Recipes Recommendation</b></a></li>
				<li><a href="RecordFoodIntake.jsp"><b>Record Food Intake</b></a>
				<li><a href="contact_logged.jsp"><b>Contact</b></a></li>
			</ul>
			<!-- The following code can be added to include a Login button to the right-hand side of the navbar-->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a data-toggle="dropdown"
					href="memberLogged.jsp"><b>Welcome, <%=firstname%> <%=lastname%>!</b><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="memberLogged.jsp">My profile</a></li>
						<li><a href="LogoutServlet"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>


