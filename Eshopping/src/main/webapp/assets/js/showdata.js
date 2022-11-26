 $(function(){
	$('#prdat')
	           .DataTable(
					    {
						ajax : {
							url : '/Eshopping/admin/all/category',
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
									data : null,
									mRender : function(data, type, row) {
										return '<img src="Eshopping/resources/images'
												+ data
												+ '.jpg" height="170px" width="190px">';
									}
								},
								{
									data : null,
									mRender : function(data, type, row) {
										return "<a class='btn btn-primary' href='/Eshopping/admin/show/category/"
												+ data.id
												+ "'>View Item</a> &nbsp;<a class='btn btn-primary' href='/Eshopping/admin/show/category/"
												+ data.id
												+ "'>Update</a> &nbsp;<a class='btn btn-primary' href='/Eshopping/admin/show/category/"
												+ data.id + "'>delete</a>";
									}
								} ]
					});
   });