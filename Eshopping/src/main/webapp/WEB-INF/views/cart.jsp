<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<spring:url value="/resources/images/" var="images" />

<div class="container">
	<div class="row">

		<!--  Display the actual products -->
		<div class="col-md-12">
			<div class="row">
				<div class="col-lg-12">

					<c:if test="${userClickedViewCart == true}">
						<!--  Adding breadcrumb component -->
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">View Cart</li>
						</ol>
					</c:if>
					<!--  End of C:if  -->
				</div>
				<!--  End of col-lg-12 -->
			</div>
			<!--  End of row -->
		</div>
		<!--  end of col-md-12 -->
	</div>

	<c:choose>
		<c:when test="${not empty cartitemlist}">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Product ID</th>
						<th> Product Name</th>
						<th>Quantity</th>
						<th>Grand Total</th>
						<th>Remove</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cartitemlist}" var="cartitems">
						<tr>
							<td>${cartitems.product.id}</td>
							<td>${cartitems.product.name}</td>
							<td>${cartitems.quantity}</td>
							<td>${cartitems.totalPrice}</td>
							<td><a href="${contextRoot}/cart/user/delete/${cartitems.id}" class="btn btn-primary" role=button>REMOVE FROM CART</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<div><a href="${contextRoot}/checkout" class="btn btn-primary " role=button>CHECKOUT</a></div>
		</c:when>
		<c:when test="${empty cartitemlist}">
			<center>
				<h2>Cart is empty</h2>
			</center>
		</c:when>
	</c:choose>
</div> 