<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
     <spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/jquery.dataTables.js"></script>


		
	</head>

	<body>
		<div class="content">
		
			<fieldset>
				<legend>Confirm Details</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<!--  <a href="${flowExecutionUrl}&_eventId_home">Home</a><br /><br />-->
				<a href="/Eshopping">Home</a><br /><br />
				
				<sf:form modelAttribute="user">
					<sf:label path="username">UserName:</sf:label>${user.username}
					<br /><br />
					<sf:label path="password">Password:</sf:label>${user.password}
					<br /><br />
					<sf:label path="name">Name:</sf:label>${user.name}
					<br /><br />
					<sf:label path="email">Email Id:</sf:label>${user.email}
					<br /><br />
					<sf:label path="phone">Contact No:</sf:label>${user.phone}
					<br /><br />
					<sf:label path="role">Role:</sf:label>${user.role}
					<br /><br />
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_edit" type="submit" value="Edit" /> 
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br />
				</sf:form>
			</fieldset>
		</div>
	</body>
</html>