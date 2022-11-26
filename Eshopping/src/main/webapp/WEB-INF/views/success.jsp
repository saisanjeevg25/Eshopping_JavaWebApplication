<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
	<head>
		<title>Success Page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
</head>

<body>
		<div class="container">
		
		<div>
			<form:form class="form-horizontal" method="post">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
							<h1>Order has been placed successfully</h1>
							<h3>click home</h3>
							<a class="btn btn-success" href="/Eshopping/">Home</a>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	</body>
</html>