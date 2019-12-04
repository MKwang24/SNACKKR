<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 SNACCKR App - Search Results</title>
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
	<style>
	body{
		background-image: url('img/71.png');
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
		
	}
	</style>



	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-12 text-center">
				<h1>Search Your Food</h1>
				Type in any keyword to search for food information (Food Name) that matches the keyword. <Br />
				<Br />
				<center>
					<form method="POST" action='SearchController' name="frmAddUser">
						Keyword: <input type="text" name="keyword"
							value="<c:out value="${food.searchword}" />"><input
							type="submit" class="btn btn-info" value="Submit" />
					</form>
				</center>

				The following food items match your search keyword "<b><font
					color=red><%=request.getAttribute("keyword")%></font></b>":<br> <br>
				<center>
					<table border=1 class="sortable">
						<thead>
							<tr>
								<th> Food Id </th>
								<th> Food Name </th>
								<th> Calories </th>
								<th> Total Fat </th>
								<th> Sodium </th>
								<th> Carbohydrate </th>
								<th> Sugars </th>
								<th> Protein </th>
								<th> VitaminC </th>
								<th> VitaminD </th>
								<th> Water </th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${foods}" var="food">	
								<tr>
									<td align="center"><c:out
											value="${food.getFoodid()}" /></td>
									<td align="center"><c:out
											value="${food.getFoodName()}" /></td>
									<td align="center"><c:out 
											value="${food.getCalories()}" /></td>
									<td align="center"><c:out 
											value="${food.getTotFat()}" /></td>
									<td align="center"><c:out 
											value="${food.getSodium()}" /></td>
									<td align="center"><c:out 
											value="${food.getCarb()}" /></td>
									<td align="center"><c:out 
											value="${food.getSugars()}" /></td>
									<td align="center"><c:out 
											value="${food.getProteins()}" /></td>		
									<td align="center"><c:out 
											value="${food.getVC()}" /></td>
									<td align="center"><c:out 
											value="${food.getVD()}" /></td>		
									<td align="center"><c:out 
											value="${food.getWater()}" /></td>																				
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</center>
				
			</div>
		</div>
	</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="footer.jsp"%>


</body>
</html>



