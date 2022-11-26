package com.niit.Eshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.EshoppingBackend1.dao.ProductDAO;
import com.niit.EshoppingBackend1.dto.Product;


@Controller
@RequestMapping(value = "/products")
public class ProductController {

	/*@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/all/product")
	public @ResponseBody List<Product> getAllProducts() {
		return productDAO.listProduct();
	}
	*/
}
