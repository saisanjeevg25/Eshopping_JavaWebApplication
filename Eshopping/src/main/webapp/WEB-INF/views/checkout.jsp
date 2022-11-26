<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
	<head>
		<title></title>
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
		<h2 class="page-header">ADDRESS DETAILS</h2>
		<div>

			<form:form modelAttribute="cartModel" class="form-horizontal" method="post">
				<c:forEach items="${cartModel.user.address}" var="adr">
					<div class="form-group">
						<label class="control-label col-sm-2" for="billingAddress">Address</label>
						<div class="col-sm-10 displayinfo">${adr.addressid}</div>
					</div>
				  
					<div class="form-group">
						<label class="control-label col-sm-2" for="city">City</label>
						<div class="col-sm-10 displayinfo">${adr.city}</div>
					</div>		
					<div class="form-group">
						<label class="control-label col-sm-2" for="state">State:</label>
						<div class="col-sm-10 displayinfo">${adr.state}</div>
					</div>		
					<div class="form-group">
						<label class="control-label col-sm-2" for="country">Country</label>
						<div class="col-sm-10 displayinfo">${adr.country}</div>
					</div>
					<div class="form-group">
					<label class="control-label col-sm-2" for="phone">Select Any one for Shipping:</label>
					<div class="col-sm-10">
						<form:radiobutton path="addressid" value="${adr.addressId}"/>
						<c:out value="${adr.addressId}"/>
					</div>
				</div> 
			 	</c:forEach>
	
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<!--  <input name="_eventId_add" type="submit" value="Address" /> -->
						<input name="_eventId_next" type="submit" value="Next" /> 
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>