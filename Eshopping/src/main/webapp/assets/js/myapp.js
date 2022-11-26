$(function() {

	// Solving the active menu problem
	switch (menu) {
	
	case 'Home':
		$('#home').addClass('active');
		break;

	case 'About Us':
		$('#about').addClass('active');
		break;

	case 'Contact Us':
		$('#contact').addClass('active');
		break;
		
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	
	}

});