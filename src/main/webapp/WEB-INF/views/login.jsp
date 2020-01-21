
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value="/resources/images/apple-icon.png"/>">
<link rel="icon" type="image/png"
	href="<c:url value="/resources/images/favicon.ico"/>">
<title>Login</title>
<!--Font and Icon-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	type="text/css" />

<link
	href="<c:url value="/resources/css/light-bootstrap-dashboard.css?v=2.0.1" />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link href="<c:url value="/resources/css/MyCustomCss.css"  />"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/Login.css"/>">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style>
@media ( min-height : 600px) {
	#filter {
		position: sticky;
		top: 0;
	}
}

.modal .modal-dialog {
	top: unset;
}
body {
	font-family: 'Roboto Medium';
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="sidebar desktop"
			data-image="<c:url value="/resources/images/sidebar-5.jpg"/>"
			data-color="orange">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a class="simple-text" href="dashboard">Labor Export</a>
				</div>
				<ul class="nav">
					<li class="nav-item "><a class="nav-link"
						href="dashboard"> <i class="nc-icon nc-tv-2"></i> Dashboard
					</a></li>
					<li class="nav-item"><a class="nav-link" href="JobManagement">
							<i class="nc-icon nc-bullet-list-67"></i> Job Management
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="WorkerManagement"> <i class="nc-icon nc-single-02"></i>
							Worker Management
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="CompanyManagement"> <i class="nc-icon nc-bag"></i>
							Chain Management
					</a></li>
					<li class="nav-item"><a class="nav-link" href="Statistics">
							<i class="nc-icon nc-chart-bar-32"></i> Statistics
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<nav class="navbar navbar-expand-lg ">
				<button class="navbar-toggler  main-actor" type="button"
					style="display: block">
					<span class="navbar-toggler-bar burger-lines"></span> <span
						class="navbar-toggler-bar burger-lines"></span> <span
						class="navbar-toggler-bar burger-lines"></span>
				</button>
				<div class=" container-fluid ">
					<a class="navbar-brand" href="dashboard">Login</a>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link"></a>
							<li class="nav-item"><a class="nav-link" data-toggle="modal"
								href="#loginDialog" data-target="#loginDialog"> <span
									class="no-icon">Log in</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									class="no-icon"></span>
							</a></li>
							<li class="nav-item">
								<form href="<c:url value="/j_spring_security_logout"/>"
									method="post">
									<input type="hidden" name="${_csrf.parameterName }"
										value="${_csrf.token }" />
								</form> <a class="nav-link" href="logout"> <span class="no-icon"></span>
							</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="content-fluid">
					<div class="row">
						<div class="login-form">
						<form name='loginForm'
							action="<c:url value='j_spring_security_login'/>" method='POST'>
							<div class="text-center">
								<img src="<c:url value="/resources/images/ownlogo.png"/>"
									alt="fpt-software-logo" height="125px" width="125px">
							</div>
							<label for="EmailAdress">User Name</label>
							<div class="form-group">
								<input type="text" id="EmailAddress" class="form-control"
									placeholder="Email" name="username" required="required" />
							</div>
							<label for="Password">Password</label>
							<div class="form-group ">
								<input type="password" class="form-control"
									placeholder="Password" name="password" required="required" />
							</div>
							<div class="form-group small clearfix">
								<label class="checkbox-inline"><input type="checkbox">
									Remember Me</label> <a href="#" class="forgot-link">Forgotten
									Password?</a>
							</div>
							<input type="submit" class="btn btn-primary btn-block btn-lg "
								style="font-size: medium" value="SIGN IN ">
							<hr>
							<input id="btn-facebook" type="submit"
								class="btn btn-primary btn-block btn-lg "
								style="font-size: medium" value="SIGN IN WITH FACEBOOK">
							<input id="btn-twitter" type="submit"
								class="btn btn-primary btn-block btn-lg "
								style="font-size: medium" value="SIGN IN WITH TWITTER">
							<hr>
							<div class="text-center small ">
								Don't have an account? <a href="# ">Sign Up Here</a>
							</div>
							<input type="hidden" name="${_csrf.parameterName }"
								value="${_csrf.token }" />
						</form>
					</div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container">
					<nav>
						<ul class="footer-menu">
							<li><a href="#"> Contact Us </a></li>
							<li><a href="#"> Privacy policy </a></li>
							<li><a href="#"> Term of use </a></li>
							<li><a href="#"> Term &#38 condition </a></li>
						</ul>
						<p class="copyright text-center">

							<script>
								document.write(new Date().getFullYear())
							</script>
							<a href="#">Skyforce</a>, made with love for a better web
						</p>
					</nav>
				</div>
			</footer>
		</div>
	</div>
	<!--            Core JS Files-->
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.3.2.1.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap-notify.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/light-bootstrap-dashboard.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/demo.js"/>"></script>
</body>
</html>