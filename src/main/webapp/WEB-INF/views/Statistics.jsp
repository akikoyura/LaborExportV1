<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="${_csrf.parameterName}" content="${_csrf.token}" />
<title>Statistic</title>
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value="/resources/images/apple-icon.png"/>">
<link rel="icon" type="image/png"
	href="<c:url value="/resources/images/favicon.ico"/>">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	type="text/css" />

<link
	href="<c:url value="/resources/css/light-bootstrap-dashboard.css?v=2.0.1"/>"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
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
<link href="<c:url value="/resources/css/MyCustomCss.css"/>"
	type="text/css" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/statistic.js"/>"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<style>
@media ( min-height : 600px) {
	#filter {
		position: sticky;
		top: 0;
	}
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
						href="dashboard"> <i class="nc-icon nc-tv-2"></i>
							Dashboard
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
					<li class="nav-item active"><a class="nav-link"
						href="Statistics"> <i class="nc-icon nc-chart-bar-32"></i>
							Statistics
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
					<a class="navbar-brand" href="dashboard">Statistics</a>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link"></a>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									class="no-icon"></span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="logout">
									<span class="no-icon">Log out</span>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="content-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Filter By</h4>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<!-- Search form -->
												<input class="form-control" type="text"
													data-toggle="collapse" role="button"
													placeholder="Search..." aria-label="Search">

											</div>
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<button id="btn-filter-by-date" type="submit"
													class="btn btn-info ">Show</button>
												<button id="btn-clear" type="submit"
													class="btn btn-outline-info ">Clear</button>
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div id="site" class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h1 class="card-title text-center">Job Statistics</h1>
								</div>
								<div class="card-body">
									<div id="site-chart-session">
										<canvas id="first-chart"></canvas>
									</div>
								</div>
								<div class="card-footer">
									<div class="dropdown">
										<button class="btn btn-outline-info dropdown-toggle"
											type="button" id="dropdownMenuButton" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">Choose
											Chart</button>
										<div class="dropdown-menu"
											aria-labelledby="#dropdownMenuButton">
											<a id="pie-chart" href="#" class="dropdown-item">Pie
												Chart</a> <a href="#" class="dropdown-item">Radar Chart</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h1 class="card-title text-center">Employee Statistics</h1>
								</div>
								<div class="card-body">
									<div id="site-chart-session">
										<canvas id="second-chart"></canvas>
									</div>
								</div>
								<div class="card-footer">
									<div class="dropdown">
										<button class="btn btn-outline-info dropdown-toggle"
											type="button" id="dropdownMenuButton1" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">Choose
											Chart</button>
										<div class="dropdown-menu"
											aria-labelledby="#dropdownMenuButton1">
											<a href="#" id="doughnut-chart" class="dropdown-item">Doughnut
												chart</a> <a href="#" id="polar-area-chart"
												class="dropdown-item">Polar area Chart</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer ">
				<div class="container ">
					<nav>
						<ul class="footer-menu ">
							<li><a href="# "> Contact Us </a></li>
							<li><a href="# "> Privacy policy </a></li>
							<li><a href="# "> Term of use </a></li>
							<li><a href="# "> Term &#38 condition </a></li>

						</ul>
						<p class="copyright text-center ">
							<script>
								document.write(new Date().getFullYear())
							</script>
							<a href="# ">Skyforce</a>, made with love for a better web
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
	<script type="text/javascript">
		new Chart(document.getElementById("first-chart"), {
			type : 'bar',
			data : {
				labels : [ "iOs Developer", "Android Developer", "Web Developer", "IT Helpdesk",
						"Devops" ],
				datasets : [ {
					label : "Number of Employee",
					backgroundColor : [ "#3e95cd", "#8e5ea2", "#3cba9f",
							"#e8c3b9", "#c45850" ],
					data : [ 2478, 5267, 734, 784, 433 ]
				} ]
			},
			options : {
				legend : {
					display : false
				},
				title : {
					display : true,
				}
			}
		});
		new Chart(document.getElementById("second-chart"),
				{
					type : 'line',
					data : {
						labels : [ 2000, 2005, 2010, 2011, 2012, 2013, 2014,
								2015, 2017, 2019 ],
						datasets : [
								{
									data : [ 86, 114, 106, 106, 107, 111, 133,
											221, 783, 2478 ],
									label : "iOS developer",
									borderColor : "#3e95cd",
									fill : false
								},
								{
									data : [ 282, 350, 411, 502, 635, 809, 947,
											1402, 3700, 5267 ],
									label : "IT Helpdesk",
									borderColor : "#8e5ea2",
									fill : false
								},
								{
									data : [ 168, 170, 178, 190, 203, 276, 408,
											547, 675, 734 ],
									label : "Web Developer",
									borderColor : "#3cba9f",
									fill : false
								},
								{
									data : [ 40, 20, 10, 16, 24, 38, 74, 167,
											508, 784 ],
									label : "Android Developer",
									borderColor : "#e8c3b9",
									fill : false
								},
								{
									data : [ 6, 3, 2, 2, 7, 26, 82, 172, 312,
											433 ],
									label : "Devops Developer",
									borderColor : "#c45850",
									fill : false
								} ]
					},
					options : {
						title : {
							display : true,
						}
					}
				});
	</script>
</body>
</html>