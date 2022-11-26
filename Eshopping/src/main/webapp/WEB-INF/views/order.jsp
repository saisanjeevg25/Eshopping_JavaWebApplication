<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
	<head>
		<title>Order Details</title>
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
		<h2 class="page-header">Order Details</h2>
		<div>
			<form:form modelAttribute="cartModel" class="form-horizontal" method="post">
					<h3>Customer Details</h3>
					<div class="form-group">
						<label class="control-label col-sm-2"> Name:</label>
						<div class="col-sm-10 displayinfo">${cartModel.user.name}</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">Email:</label>
						<div class="col-sm-10 displayinfo">${cartModel.user.email}</div>
						
					</div>
			<hr>		
					<h3>Address details</h3>
					<div class="form-group">
						<label class="control-label col-sm-2">AddressLine1</label>
						<div class="col-sm-10 displayinfo">${cartModel.address.addressLine1}</div>
					</div>	
					<div class="form-group">
						<label class="control-label col-sm-2">Address :</label>
						<div class="col-sm-10 displayinfo">${cartModel.address.addressLine2}</div>
					</div>		
					
					<div class="form-group">
						<label class="control-label col-sm-2">State:</label>
						<div class="col-sm-10 displayinfo">${cartModel.address.state}</div>
					</div>		
					<div class="form-group">
						<label class="control-label col-sm-2">City:</label>
						<div class="col-sm-10 displayinfo">${cartModel.address.city}</div>
					</div>				
						
					<div class="form-group">
						<label class="control-label col-sm-2">Country:</label>
						<div class="col-sm-10 displayinfo">${cartModel.address.country}</div>
					</div>					
					<hr>
					<h3>ITEM DETAILS</h3>
					<div class="form-group">
						
							<c:forEach items="${cartModel.cartItemList }" var="item">
								<!-- <li> -->
									<ul class="list-inline">
									<b><li class="col-sm-10 displayinfo">Product Name:  ${item.product.name}</li>
										<li class="col-sm-10 displayinfo">Quantity: ${item.quantity}</li>
										<li class="col-sm-10 displayinfo">Unit Price: ${item.product.price}</li>
										</b>
									</ul>
								<!--</li> -->
							</c:forEach>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">Grand Total:</label>
						<div class="col-sm-10 displayinfo">${cartModel.cart.grandTotal}</div>
					</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input name="_eventId_submit" type="submit" value="Proceed Payment" class="btn btn-primary btn-sm" /> 
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>