package com.niit.EshoppingBackend1.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EshoppingBackend1.dao.CartDAO;
import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Cart;

public class CartTestCase {

	private static AnnotationConfigApplicationContext context;
	private static CartDAO cartDAO;
	private static UserDAO userDAO;
	private Cart cart;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EshoppingBackend1");
		context.refresh();
		cartDAO = (CartDAO) context.getBean("cartDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
	}
	
		@Test
		public void testCart() {
			cart = new Cart();
			cart.setCartItemsCount(2);
			cart.setUser(userDAO.get(1));
			cart.setGrandTotal(1000);
		assertEquals("Successfully added in the table", true, cartDAO.add(cart));
		

	}

}
