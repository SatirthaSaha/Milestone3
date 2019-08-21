<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.example.stockspring.model.User"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
					<spring:url value="/importData" var="url1" htmlEscape="true"/>
					<li><a href="${url1}">Import Data</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Manage Company<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<spring:url value="/insertCompany" var="url2" htmlEscape="true"/>
							<li><a href="${url2 }" style="color: white;">Add Company</a></li>
							<spring:url value="/companyList" var="url3" htmlEscape="true"/>
							<li><a href="${url3 }" style="color: white;">Update Company</a></li>
							<spring:url value="/companyList" var="url3" htmlEscape="true"/>
							<li><a href="${url3 }" style="color: white;">List
									of all Companies</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">Manage Exchange<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<spring:url value="/registerStock" var="url4" htmlEscape="true"/>
							<li><a href="${url4 }" style="color: white;">Register
									New Stock Exchange</a></li>
							<spring:url value="/listStock" var="url5" htmlEscape="true"/>		
							<li><a href="${url5 }" style="color: white;">List
									Stock Exchange</a></li>
						</ul></li>
					<spring:url value="/updateIPODetails" var="url6" htmlEscape="true"/>
					<li><a href="${url6 }">Update IPO details</a></li>

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
		<img class="aligncenter" alt="userphoto" src="./images/Profilepicture.jfif" width="200px" height="200px" style="padding-left: 40px;"><br><hr>
		<p class="aligncenter" style="color: white;">Steve Rogers</p><hr>
		<p class="aligncenter" style="color: white;">Address: Washington DC</p><hr>
		<p class="aligncenter" style="color: white;" >Contact: 123456789</p><hr>
	</div>
	<span style="font-size: 30px; color:white; cursor: pointer" onclick="openNav()">&#9776;</span>
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
		<div class="row">
			<div class="col-sm-3"></div>
			<div>
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h3 class="card-title text-center" align="center">Create New Company</h3>
							<hr>
							<form:form class="form" role="form" autocomplete="off" action="/insertCompany" modelAttribute="e1">
								<div class="form-group row">
									<form:select class="form-control" path="company_code" id="company_code">
        									<option value="" disabled selected style="display: none;">-:Select Company:-</option>
        									<c:forEach items="${listCompany}" var="lc">
        										<form:option value="${lc.company_code}">${lc.company_code}--${lc.company_Name} </form:option>
        									</c:forEach>
        									</form:select>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-control-label">CEO:</label>
									<div class="col-lg-8">
										<form:input class="form-control" type="text" path="ceo"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-control-label">Turnover:</label>
									<div class="col-lg-8">
										<form:input class="form-control" type="text" path="turnover"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-control-label">Board of Directors:</label>
									<div class="col-lg-8">
										<form:input class="form-control" type="text" path="boardOfDirectors"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-control-label">Sector Id:</label>
									<div class="col-lg-8">
										<%-- <form:select path="sector_id" id="sector_id">
                        					<form:option value="">Select Sector ID</form:option>      
        									<form:option value="${sectorList.id}">${sectorList.id}</form:option>
    									</form:select> --%>
    									
    									<form:select class="form-control" path="sector_id" id="sector_id">
        									<option value="" disabled selected style="display: none;">-:Select Sector ID:-</option>
        									<c:forEach items="${sectorList}" var="sk">
        										<form:option value="${sk.id}">${sk.id}</form:option>
        									</c:forEach>
        									</form:select>
    									
    									
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-control-label">Brief:</label>
									<div class="col-lg-8">
										<form:input class="form-control" type="text" path="breifwriteup"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-control-label">Stock Code:</label>
									<div class="col-lg-8">
										<form:input class="form-control" type="text" path="stock_Code"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-lg-4 col-form-label form-control-label"></label>
									<div class="col-lg-8">
										<div class="col-lg-2">
							
										</div>
										<div class="col-lg-3">
											<input type="submit" class="btn btn-primary"
												value="Add Company"/>
										</div>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
		<!-- Code ends here -->
	</div>
	<div class="footer">
		<h4>Copyright � 2019 Stock Exchange Chart-All Rights Reserved</h4>
	</div>
</body>
</html>