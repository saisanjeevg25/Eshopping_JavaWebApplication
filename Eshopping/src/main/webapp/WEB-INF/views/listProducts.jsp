<div class="container">
	<div class="row">

		<!-- To display the sidebar -->
		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

		<!-- To display the actual products -->
		<div class="col-md-9">
			<!-- Added breadcrumb component -->
			<div class="row">
				<div class="col-lg-12">

					<c:if test="${userClickAllProducts==true}">
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>

						</ol>
					</c:if>

					<c:if test="${userClickCategoryProducts==true}">
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>
						</ol>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
</br>
</br>
</br>
<h2>View ALL Product Details</h2>
<div class="row">
	<div class="container col-md-col-md-8 col-md-offset-2">

		<table id="allprd" class="table">
			<thead>
				<tr class="active">

					<th>Product Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Image</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
		</table>
	</div>
	<script type="text/javascript">
		$(function() {
		
			$('#allprd')
					.DataTable(
							{
								ajax : {
									url : '/Eshopping/all/products',
									dataSrc : ''
								},

								columns : [

										{
											data : 'name'
										},
										{
											data : 'description'
										},
										{
											data : 'price'
										},
										{
											data : null,
											mRender : function(data, type, row) {
												return '<img src="Eshopping/assets/images'
												+ data
												+ '.jpg" height="170px" width="190px">';
											}
										},
										{
											data : null,
											mRender : function(data, type, row) {
												return '<a class="btn btn-primary" href="${contextRoot}/showproduct/' 
										+ row.id+ '">View Item</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-primary" href="/Eshopping/cart/user/addtocart/'+ row.id + '">ADD TO CART</a>';
											}
										} ]
							});
		});
	</script>

</div>