package com.niit.Eshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.EshoppingBackend1.dao.CategoryDAO;
import com.niit.EshoppingBackend1.dto.Category;
import com.niit.EshoppingBackend1.dao.ProductDAO;
import com.niit.EshoppingBackend1.dto.Product;



@Controller
public class PageController {

	@Autowired 
	private CategoryDAO categoryDAO;
	@Autowired 
	private ProductDAO productDAO;
	
	@RequestMapping(value={"/","/home", "/index"})
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "Home");
		
		//passing the list of categories
		mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickHome", true);
		return mv;
		
	}
	@RequestMapping(value={"/about"})
	public ModelAndView about()
	{
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
		
	}
	@RequestMapping(value={"/contact"})
	public ModelAndView contact()
	{
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
		
	}
	/*@RequestMapping(value={"/login"})
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "Login");
		mv.addObject("userClickLogin", true);
		return mv;
		
	}*/
	
	@GetMapping("/login")
	public String login(@RequestParam(value = "error", required = false)String error, ModelMap model) {
	if(error!=null) {
	model.addAttribute("error","Authentication Failed - Invalid credentials!");
	}
	model.addAttribute("title", "Login");
	return "login";
	}
	
	@RequestMapping(value={"/register"})
	public ModelAndView register()
	{
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "Register");
		mv.addObject("userClickRegister", true);
		return mv;
		
	}
	/*@RequestMapping(value={"/home"})
	public String home(){
		return "page";
	}*/
	
	//methods to load all the product based on the category
	
	@RequestMapping(value={"/show/all/products"})
	public ModelAndView showAllProducts()
	{
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "All Products");
		mv.addObject("userClickAllProducts", true);
		
		//passing the list of products
		/*mv.addObject("product",productDAO.listProduct());
		System.out.println("object created");
		mv.addObject("userClickAllProducts", true);*/
		return mv;
		
	}
	@GetMapping(value = { "/all/products" })
	@ResponseBody
	public List<Product> showAll() {
		return productDAO.listProduct();
	}
	
	
	@RequestMapping(value={"/show/category/{id}/products"})
	public ModelAndView showCategoryProducts(@PathVariable("id") int id)
	{
		ModelAndView mv=new ModelAndView("page");
		
		//categoryDAO to fetch a single category
		Category category=null;
		
		category=categoryDAO.get(id);
		
		
		mv.addObject("title", category.getName());
		
		mv.addObject("categories", categoryDAO.list());
		
		//passing the list of categories
		mv.addObject("category",category);
		
		mv.addObject("userClickCategoryProducts", true);
		return mv;
		
	}
	@RequestMapping(value="showproduct/{id}")
	public ModelAndView showProducts(@PathVariable("id") int id)
	{
		ModelAndView mv=new ModelAndView("showproduct");
		mv.addObject("prd",productDAO.getProduct(id));
		return mv;
	}

}

