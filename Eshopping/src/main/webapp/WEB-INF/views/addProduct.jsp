<div class="container">

	<div class="container col-md-offset-2 col-md-col-md-8">
		<form:form action="${contextRoot}/admin/add/product" method="POST"	modelAttribute="product" class="form-horizontal">
			
			<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-label" for="name">Product Name</label>
				<div class="col-sm-6">
					<form:input type="text" path="name" id="name" class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="name" class="help-inline" />
					</div>
				</div>
			</div>
			</div>
			
			<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-label" for="description">Description</label>
				<div class="col-sm-6">
					<form:input type="text" path="description" id="description"	class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="description" class="help-inline" />
					</div>
				</div>
			</div>
			</div>
			
			<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-label" for="price">Price</label>
				<div class="col-sm-6">
					<form:input type="text" path="price" id="price"	class="form-control input-sm" />
					<div class="has-error">
						<form:errors path="price" class="help-inline" />
					</div>
				</div>
			</div>
			</div>
			
			<div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-label" for="img">Image URL</label>
                <div class="col-md-6">
                    <form:input type="text" path="imageUrl" id="imageUrl" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="imageUrl" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
		

           <div class="row">
            <div class="form-actions floatRight">
                <input type="submit" value="AddProduct" class="btn btn-primary btn-sm">
            </div>
          </div></form:form>
  
  </div>
  </div>

<h2> Prd Details</h2>
<div class="row">
	<div class="container col-md-col-md-8 col-md-offset-2">
		<table id="myprod" class="table">
			<thead>
				<tr class="active">
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Image</th>
					<th></th>
				</tr>
			</thead>
		</table>
	</div>
</div>