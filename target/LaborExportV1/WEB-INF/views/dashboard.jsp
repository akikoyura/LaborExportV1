<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="apple-touch-icon" sizes="76x76"
          href="<c:url value="/resources/images/apple-icon.png"/>">
    <link rel="icon" type="image/png"
          href="<c:url value="/resources/images/favicon.ico"/>">
    <title>Dashboard</title>
    <!--Font and Icon-->
    <link
            href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
            rel="stylesheet" type="text/css"/>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
          type="text/css"/>

    <link
            href="<c:url value="/resources/css/light-bootstrap-dashboard.css?v=2.0.1" />"
            rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>
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
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.4.0/dist/chartjs-plugin-datalabels.min.js"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/myChart.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/dashboard.js"/>"></script>
    <style>
        @media ( min-height: 600px) {
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
                <li class="nav-item active"><a class="nav-link"
                                               href="dashboard"> <i class="nc-icon nc-tv-2"></i>
                    Dashboard
                </a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="JobManagement"> <i
                        class="nc-icon nc-bullet-list-67"></i> Job Management
                </a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="WorkerManagement"> <i class="nc-icon nc-single-02"></i>
                    Worker Management
                </a></li>
                <li class="nav-item"><a class="nav-link"
                                        href="CompanyManagement"> <i class="nc-icon nc-bag"></i>Chain Management
                </a></li>
                <li class="nav-item"><a class="nav-link"
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
                <a class="navbar-brand" href="dashboard">Dashboard</a>
                <div class="collapse navbar-collapse justify-content-end"
                     id="navigation">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link"></a>
                        <li class="nav-item"><a class="nav-link" data-toggle="modal"
                                                href="#loginDialog" data-target="#loginDialog"> <span
                                class="no-icon"></span>
                        </a></li>
                        <li class="nav-item"><a class="nav-link" href="#"> <span
                                class="no-icon"></span>
                        </a></li>
                        <li class="nav-item">
                            <form href="<c:url value="/j_spring_security_logout"/>"
                                  method="post">
                                <input type="hidden" name="${_csrf.parameterName }"
                                       value="${_csrf.token }"/>
                            </form>
                            <a class="nav-link" href="logout"> <span class="no-icon">Log
										out</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="content-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-body ">
                                <div class="row">
                                    <div class="col-5 col-md-4">
                                        <div class="icon-big text-center icon-warning">
                                            <i class="nc-icon nc-badge text-warning"></i>
                                        </div>
                                    </div>
                                    <div class="col-7 col-md-8">
                                        <div class="numbers">
                                            <p class="card-category" style="font-size: 15px;">Employee</p>
                                            <p class="card-title" id="totalEmployee"
                                               style="font-size: 25px; margin-right: 20px">
                                            <p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-body ">
                                <div class="row">
                                    <div class="col-5 col-md-4">
                                        <div class="icon-big text-center icon-warning">
                                            <i class="nc-icon nc-notes text-success"></i>
                                        </div>
                                    </div>
                                    <div class="col-7 col-md-8">
                                        <div class="numbers">
                                            <p class="card-category" style="font-size: 15px;">Job</p>
                                            <p class="card-title" id="totalJob"
                                               style="font-size: 25px; margin-right:20px">
                                            <p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-body ">
                                <div class="row">
                                    <div class="col-5 col-md-4">
                                        <div class="icon-big text-center icon-warning">
                                            <i class="nc-icon nc-single-copy-04 text-danger"></i>
                                        </div>
                                    </div>
                                    <div class="col-7 col-md-8">
                                        <div class="numbers">
                                            <p class="card-category" style="font-size: 15px;">Company</p>
                                            <p class="card-title" id="totalCompany"
                                               style="font-size: 25px; margin-right:20px;">
                                            <p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card card-stats">
                            <div class="card-body ">
                                <div class="row">
                                    <div class="col-5 col-md-4">
                                        <div class="icon-big text-center icon-warning">
                                            <i class="nc-icon nc-layers-3 text-primary"></i>
                                        </div>
                                    </div>
                                    <div class="col-7 col-md-8">
                                        <div class="numbers">
                                            <p class="card-category" style="font-size: 15px;">Site</p>
                                            <p class="card-title" id="totalSite"
                                               style="font-size: 25px; margin-right:20px;">
                                            <p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Filter </h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <!-- Search form -->
                                    <input class="form-control" type="text" placeholder="Search....."
                                           aria-label="Search">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button id="btn-filter-by-date" type="submit"
                                            class="btn btn-info ">Show
                                    </button>
                                    <button id="btn-clear" type="submit"
                                            class="btn btn-outline-info ">Clear
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer"></div>
                </div>
            </div>

            <div class="row">
                <div id="site" class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="card-title text-center">Job Statistics</h1>
                            <p class="card-category text-center">Job Campaign
                        </div>
                        <div class="card-body">
                            <div id="job-chart-session">
                                <div>
                                    <canvas id="jobChart" style="width: 100%; height: 400px;"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer"></div>
                    </div>
                </div>
                <div id="skill" class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="card-title text-center">Employee Statistics</h1>
                            <p class="card-category text-center">Employee Campaign
                        </div>
                        <div class="card-body">
                            <section id="Employee-chart-session">
                                <div>
                                    <canvas id="employeeChart" style="width:100%; height: 400px;"></canvas>
                                </div>
                            </section>
                        </div>
                        <div class="card-footer"></div>
                    </div>
                </div>
                <div id="status" class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="card-title text-center">Site Statistics</h1>
                            <p class="card-category text-center">Site Campaign
                        </div>
                        <div class="card-body">
                            <section id="Site-chart-session">
                                <div>
                                    <canvas id="siteChart" style="width: 100%; height: 400px;"></canvas>
                                </div>
                            </section>
                        </div>
                        <div class="card-footer"></div>
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
<div class="modal fade" id="loginDialog" tabindex="-1" role="dialog"
     aria-labelledby="loginDialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
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
                                   placeholder="Email" required="required"/>
                        </div>
                        <label for="Password">Password</label>
                        <div class="form-group ">
                            <input type="password" class="form-control"
                                   placeholder="Password" required="required"/>
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
                               value="${_csrf.token }"/>
                    </form>
                </div>
            </div>
        </div>
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