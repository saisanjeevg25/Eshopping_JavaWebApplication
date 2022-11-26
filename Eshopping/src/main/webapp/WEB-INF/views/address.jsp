<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
	<head>
		<title>Address</title>
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
		<h2 class="page-header">Shipping Address</h2>
		<div>
			<form:form modelAttribute="address" class="form-horizontal" method="post">
				<div class="form-group">
					<label class="control-label col-sm-2" for="shippingAddress">AddressLine1 :</label>
					<div class="col-sm-10">
						<form:input type="text" path="addressLine1" class="form-control" id="saddress"/>
						<div class="has-error">
							<form:errors path="addressLine1" class="help-inline" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="shippingAddress">AddressLine2 :</label>
					<div class="col-sm-10">
						<form:input type="text" path="addressLine2" class="form-control" id="ssaddress"/>
						<div class="has-error">
							<form:errors path="addressLine2" class="help-inline" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="state">State</label>
					<div class="col-sm-10">
						<form:input type="text" path="state" class="form-control" id="state"/>
						<div class="has-error">
							<form:errors path="state" class="help-inline" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="city">City</label>
					<div class="col-sm-10">
						<form:input type="text" path="city" class="form-control" id="city"/>
						<div class="has-error">
							<form:errors path="city" class="help-inline" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="country">Country</label>
					<div class="col-sm-10">
						<form:input type="text" path="country" class="form-control" id="country"/>
						<div class="has-error">
							<form:errors path="country" class="help-inline" />
						</div>
					</div>
				</div>
	
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input name="_eventId_back" type="submit" value="Back" /> 
						<input name="_eventId_add" type="submit" value="submit" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	</body>
</html>