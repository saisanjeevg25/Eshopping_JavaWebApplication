<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>


<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url value="resources/images/prdimg" var="pimg" />
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="${js}/jquery.dataTables.js"></script>
		
		
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="${css}/jquery.dataTables.min.css" />
		<link rel="stylesheet" href="${css}/bootstrap.css">
		<link rel="stylesheet" href="${css}/bootstrap.min.css">
		<link rel="stylesheet" href="${css}/dataTables.bootstrap.css" />
		
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/dataTables.bootstrap.js"></script>
	    <script src="${js}/jquery.dataTables.js"></script>
		
		
		<title>Product Page</title>
	</head>
	<body>
	<h2>Product Details</h2>
	
	<div class="container">

		<table id="prdat" class="table table-hover">
			<thead>
				<tr class="active">
					
					<th>Product Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Image</th>
					<th></th>
				</tr>
			</thead>


			<!--   <tbody>
      <tr>
        <td>01</td>
        <td>samsung</td>
        <td> The new samsung j7</td>
        <td>16000</td>
        <td width="220px"><img alt="samsung j7"
						src="new1.jpg" height="170px" width="210px"></td>
		<td><button class="btn btn-info">View</button></td>
      </tr>
      <tr>
         <td>02</td>
        <td>One plus two</td>
        <td> The new one plus two</td>
        <td>23000</td>
        <td width="220px"><img alt="one plus two"
						src="new2.jpg" height="170px" width="210px"></td>
		<td><button class="btn btn-info">View</button></td>
      </tr>
     
      
      <tr>
        <td>03</td>
        <td>Gionee</td>
        <td> loaded with new features</td>
        <td>16000</td>
        <td width="220px"><img alt="Gionee"
						src="simg1.jpg" height="170px" width="210px"></td>
		<td><button class="btn btn-info">View</button></td>
      </tr>
    </tbody>-->

		</table>
	</div>

</body>

<script type="text/javascript" >
  
</script>

</html>