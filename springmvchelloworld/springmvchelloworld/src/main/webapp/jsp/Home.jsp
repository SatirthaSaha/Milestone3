<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<link rel="stylesheet" type="text/css" href="./styles/Home.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>


	<!-- Code starts from here -->
	<section id=page1>
		<div class="container">
			<h1 style="color: white; font-size: 100px">Welcome!</h1>
			<p class="aligncenter">
				<img alt="logo" src="./images/logo1.png" width="200px" />
			</p>
			<h3 class="aligncenter" style="color: white;">Stock Exchange
				Chart</h3>
			<br> <br> <br>
			<p class="aligncenter">
				<a href="#page2"><img alt="logo" src="./images/downarrow.gif"
					width="50px" /></a>
			</p>
		</div>
	</section>
	<section id=page2>
		<div class="container">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="col-sm-6">
						<div class="card">
							<div class="card-body">
								<h3 class="card-title text-center" align="center">Register
									as Admin</h3>
								<hr>
								<form:form class="form" role="form" autocomplete="off" action="/registerAdmin" modelAttribute="u">
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Username:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="username"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Password:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="password"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Mobile
											Number:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="mobilenumber"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Email:</label>
										<div class="col-lg-6">
											<form:input class="form-control" type="email" path="email"/>

										</div>
										<button class="btn btn-success">Verify</button>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">OTP:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="confirmed"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label"></label>
										<div class="col-lg-8">
											<div class="col-lg-3">
												<input type="reset" class="btn btn-secondary" value="Reset">
											</div>
											<div class="col-lg-3">
												<input type="submit" class="btn btn-primary"
													value="Save Changes">
											</div>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="card">
							<div class="card-body">
								<h3 class="card-title text-center" align="center">Register
									as User</h3>
								<hr>
								<form:form class="form" role="form" autocomplete="off" action="/registerUser" modelAttribute="u">
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Username:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="username"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Password:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="password"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Mobile
											Number:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="mobilenumber"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Email:</label>
										<div class="col-lg-6">
											<form:input class="form-control" type="email" path="email"/>

										</div>
										<button class="btn btn-success">Verify</button>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">OTP:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="confirmed"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label"></label>
										<div class="col-lg-8">
											<div class="col-lg-3">
												<input type="reset" class="btn btn-secondary" value="Reset">
											</div>
											<div class="col-lg-3">
												<input type="submit" class="btn btn-primary"
													value="Save Changes">
											</div>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>
			<br /> <br /> <br />
			<div>
				<p class="aligncenter">
					<a href="#page3"><b id="ahc">Already have an account?Click
							here</b><br> <br> <img alt="logo" src="./images/downarrow.gif"
						width="25px" /></a>
				</p>
			</div>
		</div>

	</section>
	<section id=page3>
		<div class="container">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
						<div class="card">
							<div class="card-body">
								<h3 class="card-title text-center" align="center">Login</h3>
								<hr>
								<form:form class="form" role="form" autocomplete="off" action="/login" modelAttribute="l">
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Username:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="username"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label">Password:</label>
										<div class="col-lg-8">
											<form:input class="form-control" type="text" path="password"/>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label form-control-label"></label>
										<div class="col-lg-8">
											<div class="col-lg-2"></div>
											<div class="col-lg-3">
												<input type="submit" class="btn btn-primary" value="Login">
											</div>
											<div class="col-lg-2"></div>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- Code ends here -->

	<div class="footer">
		<h4>Copyright © 2019 Stock Exchange Chart-All Rights Reserved</h4>
	</div>

</body>
</html>