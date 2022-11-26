<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
		<div class="content">
			<fieldset>
				<legend>Member Home Page</legend>
				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "home" is mapped in spring mvc controller-->
				<a href="/Eshopping">Home</a>
				<br /><br />
				<h2><!-- display the userId just entered -->
				Welcome ${user.username } You have been successfully registered Click on Home to Login</h2>
				
				<br/>
			</fieldset>
		</div>
	</body>
</html>