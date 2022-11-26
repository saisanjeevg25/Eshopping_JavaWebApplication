<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>E-Shopping Zone- ${title}</title>

<script>
	window.menu = '${title}';
</script>

<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<%-- <script src="${js}/dataTables.bootstrap.js"></script>
 --%>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap darkly theme -->
<link href="${css}/bootstrap-darkly-theme.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">
<link rel="stylesheet" href="${css}/dataTables.bootstrap.css" />
<link rel="stylesheet" href="${css}/jquery.dataTables.min.css" />

<!-- including JS  -->


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>
                               
		<!-- Page Content -->
                  
		<div class="content">
			<!-- Loading the home content -->
			<c:if test="${userClickHome == true}">

				<%@include file="home.jsp"%>
			</c:if>

			<!-- Loading only when user clicks about -->
			<c:if test="${userClickAbout == true}">

				<%@include file="about.jsp"%>
			</c:if>

			<!-- Loading only when user clicks contact -->
			<c:if test="${userClickContact == true}">

				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Loading only when user clicks view products -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts==true}">

				<%@include file="listProducts.jsp"%>
			</c:if>
			<!-- Loading only when user clicks Admin -->
			<c:if test="${userClickAdmin == true }">

				<%@include file="adminProduct.jsp"%>

			</c:if>
			
			<c:if test="${userClickProduct==true}">
				<%@include file="addProduct.jsp"%>
			</c:if>
			
			<c:if test="${userClickViewCart==true}">
				<%@include file="cart.jsp"%>

			</c:if>


			<!-- Loading only when user clicks Login -->
			<c:if test="${userClickLogin == true}">

				<%@include file="login.jsp"%>
			</c:if>
			<!-- Loading only when user clicks Register -->
			<c:if test="${userClickRegister == true}">

				<%@include file="register.jsp"%>
			</c:if>

		</div>
		
		<!-- .container -->

	<%-- 	<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

 --%>		<!-- Self coded JavaScript -->
		<script src="${js}/myapp.js"></script>

	</div>

		<script src="${js}/showdata.js">
		
		<script src="${js}/showprd.js">
	</script>
	<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>
	
</body>

</html>
