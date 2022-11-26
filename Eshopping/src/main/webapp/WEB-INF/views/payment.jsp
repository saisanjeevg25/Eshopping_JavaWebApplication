<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Payment</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap darkly theme -->
<link href="${css}/bootstrap-darkly-theme.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">
<link rel="stylesheet" href="${css}/dataTables.bootstrap.css" />
<link rel="stylesheet" href="${css}/jquery.dataTables.min.css" />
		
		<style>
body {
	margin: 50px auto;
	width: 600px;
}


.credit-card-box .panel-title {
	display: inline;
	font-weight: bold;
}

.credit-card-box .form-control.error {
	border-color: red;
	outline: 0;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px
		rgba(255, 0, 0, 0.6);
}

.credit-card-box label.error {
	font-weight: bold;
	color: red;
	padding: 2px 8px;
	margin-top: 2px;
}

.credit-card-box .payment-errors {
	font-weight: bold;
	color: red;
	padding: 2px 8px;
	margin-top: 2px;
}

.credit-card-box label {
	display: block;
}

.credit-card-box .display-table {
	display: table;
}

.credit-card-box .display-tr {
	display: table-row;
}

.credit-card-box .display-td {
	display: table-cell;
	vertical-align: middle;
	width: 50%;
}

.credit-card-box .panel-heading img {
	min-width: 180px;
}
</style>
		
	</head>
	<body>
	
	<div class="container">
		<div class="row">
			
			<div class="col-xs-12 col-md-4">
			<!-- CREDIT CARD FORM STARTS HERE -->
				<div class="panel panel-default credit-card-box">
					<div class="panel-heading display-table">
						<div class="row display-tr">
							<h3 class="panel-title display-td">Payment Details</h3>
							<div class="display-td">
								<img class="img-responsive pull-right"	src="http://i76.imgup.net/accepted_c22e0.png">
							</div>
						</div>
					</div>
					<div class="panel-body">
						<form:form role="form" id="payment-form">
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<label for="cardNo">CARD NUMBER</label>
										<div class="input-group">
											<input type="tel" class="form-control" name="cardNo" placeholder="Valid Card Number" autocomplete="cc-number" required autofocus />
											 <span class="input-group-addon"><i	class="fa fa-credit-card"></i></span>
										</div>
									</div>
								</div>
							</div>
							 <div class="row">
								<div class="col-xs-7 col-md-7">
									<div class="form-group">
										<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span>
										<span class="visible-xs-inline">EXP</span> DATE</label> 
										<input type="tel" class="form-control" name="cardExpiry" placeholder="MM / YY"	autocomplete="cc-exp" required />
									</div>
								</div> 
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label for="cvv">CV CODE</label>
										 <input type="tel" class="form-control" name="cvv" placeholder="cvv" autocomplete="cc-csc" required />
									</div>
								</div>
							</div>
						 <div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<label for="couponCode">COUPON CODE</label>
										 <input type="text"	class="form-control" name="couponCode" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<input class="btn btn-success btn-lg btn-block" name="_eventId_submit" type="submit" value="MAKE PAYMENT"/>
								</div>
							</div>
							<div class="row" style="display: none;">
								<div class="col-xs-12">
									<p class="payment-errors"></p>
								</div>
							</div>
						</form:form>
					</div>
				</div>
				<!-- CREDIT CARD FORM ENDS HERE -->
			</div>
		</div>
	</div>

	
	<script type="text/javascript" src="https://js.stripe.com/v2/"></script>

</body>
<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js'></script>
<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js'></script>

<script src="js/myapp.js"></script>

</body>
</html>
	