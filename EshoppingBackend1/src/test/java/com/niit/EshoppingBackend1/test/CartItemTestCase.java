package com.niit.EshoppingBackend1.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EshoppingBackend1.dao.CartDAO;
import com.niit.EshoppingBackend1.dao.CartItemDAO;
import com.niit.EshoppingBackend1.dao.ProductDAO;
import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.CartItem;
import com.niit.EshoppingBackend1.dto.Product;
import com.niit.EshoppingBackend1.dto.User;

public class CartItemTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CartItemDAO cartItemDAO;
	private static UserDAO userDAO;
	private static CartDAO cartDAO;
	private static ProductDAO productDAO;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EshoppingBackend1");
		context.refresh();
		cartItemDAO = (CartItemDAO)context.getBean("cartItemDAO");
		cartDAO = (CartDAO)context.getBean("cartDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
		productDAO = (ProductDAO)context.getBean("productDAO");

	}
	
	/*	@Test
	public void testListCartItem(){
		
		// get the user
		//User user = userDAO.getUserByUsername("sdf");
		User user=userDAO.get(1);
		// get the cart
		Cart cart = user.getCart();
		//Product product = productDAO.getProduct(1);


		
		assertEquals("List CartItem fetched Successfully!",0,cartItemDAO.list().size());
		
	}*/

	
	// Adding a new cartItem
	@Test
	public void testAddCartItem() {
		
		// get the user
		User user = userDAO.get(1);
		 int userid=  user.getUserid();
		 Product product = productDAO.getById(1);
		 System.out.println("product ID:" +product.getName());
		// get the cart
		Cart cart = user.getCart();
		System.out.println("Cart ID:" +cart);
		CartItem cartItem = new CartItem();
		cartItem.setCart(cart);
		cartItem.setProduct(product);
		cartItem.setQuantity(2);
		cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
	
		cart.setGrandTotal(cart.getGrandTotal() + cartItem.getTotalPrice());
		cart.setCartItemsCount(cart.getCartItemsCount() + 1);
		assertEquals("Successfully added the cart item!",true, cartItemDAO.add(cartItem));
		
		
	}


	// updating the existing cart item
	/*@Test
	public void testUpdateCartItem() {
				
		CartItem cartItem = cartItemDAO.get(7);
		
		Cart cart = cartItem.getCart();
		
		Product product = cartItem.getProduct();
		
		int oldQuantity = cartItem.getQuantity();

		cartItem.setQuantity(cartItem.getQuantity() + 1);
		
		cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
		
		cart.setGrandTotal(cart.getGrandTotal() + (cartItem.getQuantity() - oldQuantity) * product.getPrice());
		
		assertEquals("Successfully updated the cart item!",true, cartItemDAO.update(cartItem));

		//assertEquals("Successfully updated the cart item!",true, cartItemDAO.updateCart(cart));

		
	}*/

	
	
}
