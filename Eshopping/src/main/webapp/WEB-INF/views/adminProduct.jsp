 
 <div class="form-container">
     
    <h1>Product details </h1>
     
    <form:form action="${contextRoot}/admin/add/category" method="POST" modelAttribute="category" class="form-horizontal">
 
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="id">ID</label>
                <div class="col-md-7">
                    <form:input type="text" path="id" id="id" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="id" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Category Name</label>
                <div class="col-md-7">
                    <form:input type="text" path="name" id="name" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="name" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
 
       <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="description">Description</label>
                <div class="col-md-7">
                    <form:input type="text" path="description" id="description" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="description" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="img">Image URL</label>
                <div class="col-md-7">
                    <form:input type="text" path="imageURL" id="imageURL" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="imageURL" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-actions floatRight">
                <input type="submit" value="AddCategory" class="btn btn-primary btn-sm">
            </div>
        </div>
    </form:form>
    </div>
    
    
    <h2>Product Details</h2>
	<div class="row">
	<div class="container col-md-col-md-8 col-md-offset-2">

		<table id="prdat" class="table">
			<thead>
				<tr class="active">
					
					<th>Product Name</th>
					<th>Description</th>
					<th>Image</th>
					<th></th>
				</tr>
			</thead>
			</table>
    </div>
    </div>