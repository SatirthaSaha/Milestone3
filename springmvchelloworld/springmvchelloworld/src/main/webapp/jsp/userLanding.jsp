<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.example.stockspring.model.User"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./styles/style.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache");
	  response.setHeader("Cache-Control","no-store");
	  response.setHeader("Pragma","no-cache");
	  response.setDateHeader ("Expires", 0); %>
	<c:if test="${sessionScope.user.id==null}">
		<%response.sendRedirect("/Home"); %>
	</c:if> 
	<%
		User user = (User) request.getAttribute("user");
		System.out.println(user);
	%>
	<div class="header">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid" style="background: black">
				<div class="navbar-header">
					<img alt="logo" src="./images/logo.png">
				</div>
				<div class="navbar-header">
					<a class="navbar-brand" href="#" style="color: white"><b>&nbsp;Stock
							Exchange Chart</b></a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="importData.html">IPO Details</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Compare Company<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="insertCompany.html" style="color: white;">Add
									Company</a></li>
							<li><a href="#" style="color: white;">Update Company</a></li>
							<li><a href="listCompanyPage.html" style="color: white;">List
									of all Companies</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">Compare Sectors<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="importStockPage.html" style="color: white;">Register
									New Stock Exchange</a></li>
							<li><a href="stockDetails.html" style="color: white;">List
									Stock Exchange</a></li>
						</ul></li>
					<li><a href="updateIPODetails.html">Others</a></li>

				</ul>
				<div class="nav navbar-nav navbar-right" id="logout">
					<form:form action="/logout" method="GET">
						<button class="btn navbar-btn">Logout</button>
					</form:form>
				</div>
			</div>
		</nav>
	</div>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<img class="aligncenter" alt="userphoto"
			src="./images/Profilepicture.jfif" width="200px" height="200px"
			style="padding-left: 40px;"><br>
		<hr>
		<p class="aligncenter" style="color: white;">Steve Rogers</p>
		<hr>
		<p class="aligncenter" style="color: white;">Address: Washington
			DC</p>
		<hr>
		<p class="aligncenter" style="color: white;">Contact: 123456789</p>
		<hr>
	</div>
	<span style="font-size: 30px; color: white; cursor: pointer"
		onclick="openNav()">&#9776;</span>
	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>
	<div class="container">
		<!-- Code starts from here -->

		<!-- Code ends here -->
	</div>
	<div class="footer">
		<h4>Copyright � 2019 Stock Exchange Chart-All Rights Reserved</h4>
	</div>

</body>
</html>