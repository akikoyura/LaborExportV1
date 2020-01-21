<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
	<h1>Admin Page</h1>
	<h2>Welcome: ${pageContext.request.userPrincipal.name }</h2>
	<form action="<c:url value="/j_spring_security_logout"/>" method="post">
		<input type="hidden" name="${_csrf.parameterName } value="${_csrf.token }"/>
		<input type="submit" value="Logout"/>
	</form>
</body>
</html>