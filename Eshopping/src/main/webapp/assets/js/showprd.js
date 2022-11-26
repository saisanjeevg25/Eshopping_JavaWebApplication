$(function() {
	$('#myprod')
			.DataTable(
					{
						ajax : {
							url : '/Eshopping/admin/admin/displayproducts',
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
										return '<img src="Eshopping/resources/images'
												+ row + '.jpg" height="50" width="50">';
									}
								},
								{
									data : null,
									mRender : function(data, type, row) {
										return '<a class="btn btn-primary" href="/Eshopping/admin/showproduct/'
												+ data.id+ '">Update Item</a> &nbsp;<a class="btn btn-primary" href="/Eshopping/admin/delete/'
												+ data.id+ '">Delete</a>';
									}
								} ]
					});

});
