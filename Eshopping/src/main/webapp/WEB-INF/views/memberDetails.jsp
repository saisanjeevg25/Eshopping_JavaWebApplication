<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Member Details</title>
<script>
	window.menu = '${title}';
</script>
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<title>Spring Mvc WebFlow Demo</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">
<link rel="stylesheet" href="${css}/dataTables.bootstrap.css" />
<link rel="stylesheet" href="${css}/jquery.dataTables.min.css" />
<link href="${css}/bootstrap-darkly-theme.css" rel="stylesheet">
</head>

<body>
<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>
	<div class="content">
		<fieldset>
			<legend>Registration Form</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a>
			<sf:form modelAttribute="user">
				<br/>
				<sf:label path="username">UserName:</sf:label>
				<sf:input path="username" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<sf:label path="password">Password</sf:label>
				<sf:input path="password" />
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<sf:label path="email">Email Id: </sf:label>
				<sf:input path="email" />
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<sf:label path="phone">Phone Number</sf:label>
				<sf:input path="phone" />
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('phone')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<sf:label path="role">Role: </sf:label>
				<sf:input path="role" />
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('role')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_submit" type="submit" value="Submit" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html>