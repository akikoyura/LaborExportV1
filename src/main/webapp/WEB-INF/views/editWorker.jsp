<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 1/8/2020
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="${_csrf.parameterName}" content="${_csrf.token}"/>
    <title>Job Management</title>
    <link rel="apple-touch-icon" sizes="76x76"
          href="<c:url value="/resources/images/apple-icon.png"/>">
    <link rel="icon" type="image/png"
          href="<c:url value="/resources/images/favicon.ico"/>">
    <title>Job Management</title>

    <!--Font and Icon-->
    <link
            href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
            rel="stylesheet" type="text/css"/>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
          type="text/css"/>

    <link
            href="<c:url value="/resources/css/light-bootstrap-dashboard.css?v=2.0.1"/>"
            rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>
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
            src="<c:url value="/resources/js/job.js"/>"></script>
    <style>
        @media ( min-height: 600px) {
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
                <a class="simple-text" href="dashboard.jsp">Labor Export</a>
            </div>
            <ul class="nav">
                <li class="nav-item "><a class="nav-link" href="dashboard">
                    <i class="nc-icon nc-tv-2"></i> Dashboard
                </a></li>
                <li class="nav-item"><a class="nav-link"
                                               href="JobManagement"> <i class="nc-icon nc-bullet-list-67"></i>
                    Job Management
                </a></li>
                <li class="nav-item active "><a class="nav-link"
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
                <a class="navbar-brand" href="dashboard">Job Management</a>
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
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="content-fluid">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <!-- Search form -->
                                    <input class="form-control" type="text" placeholder="Search"
                                           aria-label="Search">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button id="btn-filter-by-date" type="submit"
                                            class="btn btn-outline-secondary ">Search
                                    </button>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="table-responsive-sm">
                            <div class="container " style="width: 1000px">
                                <div class="card">
                                    <div class="card-header bg-light"
                                         style="border-bottom: 1px solid #ced4da!important;">
                                        <h4 class="text-uppercase text-center bg-light">Edit Worker</h4>
                                    </div>
                                    <div class="card-body">
                                        <form:form action="saveEmployee" cssClass="" method="post"
                                                   modelAttribute="employee">
                                            <form:hidden path="employeeId"/>
                                            <div class="form-group row">
                                                <form:label path="fullName"
                                                            cssClass="col-sm-2 col-form-label ">Full
                                                    Name:</form:label>
                                                <div class="col-sm-10">
                                                    <form:input cssClass="form-control" path="fullName"
                                                                required="required"/>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <form:label path="dateOfBirth"
                                                            cssClass="col-sm-2 col-form-label ">Date of
                                                    Birth:</form:label>
                                                <div class="col-sm-10">
                                                    <form:input cssClass="form-control" path="dateOfBirth"
                                                                required="required" type="date"
                                                    />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <form:label path="gender"
                                                            cssClass="col-sm-2 col-form-label">Gender:</form:label>
                                                <div class="col-sm-10">
                                                    <form:select path="gender" cssClass="custom-select">
                                                        <form:option value="0" label="Male"/>
                                                        <form:option value="1" label="Female"/>
                                                    </form:select>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <form:label path="address"
                                                            cssClass="col-sm-2 col-form-label">Address:</form:label>
                                                <div class="col-sm-10">
                                                    <form:input path="address" cssClass="form-control"/>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <form:label path="phoneNumber"
                                                            cssClass="col-sm-2 col-form-label">Phone Number:
                                                </form:label>
                                                <div class="col-sm-10">
                                                    <form:input path="phoneNumber" cssClass="form-control" type="tel"
                                                                pattern="[0-9]{4}[0-9]{3}[0-9]{3}"/>
                                                    <small id="emailHelp" class="form-text text-muted">Please enter
                                                        phone number following this format eg: 0352324123
                                                        .</small>
                                                </div>

                                            </div>
                                            <div class="form-group row">
                                                <form:label path="weight"
                                                            cssClass="col-sm-2 col-form-label">Weight:</form:label>
                                                <div class="col-sm-10">
                                                    <form:input path="weight" cssClass="form-control" type="number"
                                                                min="40"/>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <form:label path="height" cssClass="col-sm-2 col-form-label">Height:
                                                </form:label>
                                                <div class="col-sm-10">
                                                    <form:input path="height" cssClass="form-control" type="number"/>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <form:label path="healthyCert"
                                                            cssClass="col-sm-2 col-form-label">Healthy Cert:
                                                </form:label>
                                                <div class="col-sm-10">
                                                    <form:select path="healthyCert" cssClass="custom-select">
                                                        <form:option value="0" label="No"/>
                                                        <form:option value="1" label="Yes"/>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <form:label path="degreeCert"
                                                            cssClass="col-form-label col-sm-2">Degree Cert:</form:label>
                                                <div class="col-sm-10">
                                                    <form:select path="degreeCert"
                                                                 cssClass="custom-select">
                                                        <form:option value="0" label="No"/>
                                                        <form:option value="1" label="Yes"/>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <form:label path="jobId" cssClass="col-sm-2 col-form-label">Job Name:
                                                </form:label>
                                                <div class="col-sm-10">
                                                    <form:select path="jobId" cssClass="custom-select">
                                                        <form:options items="${jobList}"/>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <div class="form-group row d-flex justify-content-center">
                                                <form:button class="btn btn-primary">Submit
                                                </form:button>
                                            </div>
                                        </form:form>
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
                        <li><a href="_blank"> Contact Us </a></li>
                        <li><a href="_blank"> Privacy policy </a></li>
                        <li><a href="_blank"> Term of use </a></li>
                        <li><a href="_blank"> Term &#38 condition </a></li>

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
<div class="modal fade" id="editmodal" tabindex="-1" role="dialog"
     aria-hidden="true" aria-labelledby="editModalLabel">
    <div class="modal-dialog" style="width: 450px;" role="document">
        <div class="modal-content">
            <div class="modal-header" style="display:inline-block">
                <h3 class="modal-title text-center" id="editModalLabel">Update Job</h3>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group p-2">
                        <label for="jobId">Job ID:</label> <input type="text"
                                                                  class="form-control" id="jobId" disabled>
                    </div>
                    <div class="form-group p-2">
                        <label for="jobName">Job Name:</label> <input type="text"
                                                                      class="form-control" aria-describedby="Job Name"
                                                                      id="jobName"
                                                                      placeholder="enter your job name..." required>
                    </div>
                    <div class="form-group p-2">
                        <label for="jobName">Company:</label> <input type="text"
                                                                     class="form-control" id="company"
                                                                     placeholder="enter your company..." required>
                    </div>
                    <div class="text-right p-3">
                        <button type="button" id="btnClose" class="btn btn-danger"
                                data-dismiss="modal">Close
                        </button>
                        <button type="button" id="btnSave" class="btn btn-success" data-backdrop="false"
                                data-dismiss="modal">Save
                            changes
                        </button>
                    </div>
                </form>
            </div>
            <div class="modal-footer p-4"></div>
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
<%--	<script type="text/javascript" src="<c:url value="/resources/js/sweetalert2.all.min.js"/>" ></script>--%>
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/sweetalert2@9.5.4/dist/sweetalert2.all.min.js"></script>
</body>
</html>

