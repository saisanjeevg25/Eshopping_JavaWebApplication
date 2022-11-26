package com.niit.EshoppingBackend1.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EshoppingBackend1.dao.AddressDAO;
import com.niit.EshoppingBackend1.dao.CartDAO;
import com.niit.EshoppingBackend1.dao.CartItemDAO;
import com.niit.EshoppingBackend1.dao.OrderDAO;
import com.niit.EshoppingBackend1.dao.OrderItemDAO;
import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.Orders;
import com.niit.EshoppingBackend1.dto.OrderItem;
import com.niit.EshoppingBackend1.dto.Product;
import com.niit.EshoppingBackend1.dto.User;

public class OrderItemTestCase {
	
	@Autowired
	private static AnnotationConfigApplicationContext context;
	private static OrderItemDAO orderItemDAO;
	private static UserDAO userDAO;
	private static OrderDAO orderDAO;
	
	private static CartDAO cartDAO;
	private static CartItemDAO cartItemDAO;
	private static AddressDAO addressDAO;
	private OrderItem orderItem;
	private User user;
	@Autowired
	private Product product;
	private Orders order;
	
	@BeforeClass
	public static void init() {
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.EshoppingBackend1");
		context.refresh();
		orderItemDAO = (OrderItemDAO) context.getBean("orderItemDAO");
		userDAO = (UserDAO) context.getBean("userDAO");
		
		orderDAO=	(OrderDAO) context.getBean("orderDAO");
		cartDAO=	(CartDAO) context.getBean("cartDAO");
		cartItemDAO=(CartItemDAO) context.getBean("cartItemDAO");
		addressDAO=(AddressDAO) context.getBean("addressDAO");
	}
		@Test
	public void testAddOrderItem() {

	
		User user = userDAO.get(1); 
		Orders order = new Orders();
	    Cart cart = user.getCart();
	    System.out.println("cart has been set"+cart);

		OrderItem orderItem = new OrderItem();
	   // orderItem.setId(23);
		orderItem.setOrder(order);
		orderItem.setProduct(product);
		orderItem.setQuantity(2);
		System.out.println("order has been set" +orderItem.getProduct());
		System.out.println("product price" + product.getPrice());
		orderItem.setTotalPrice(product.getPrice()*orderItem.getQuantity());
		System.out.println("total price ");
		order.setGrandTotal(order.getGrandTotal() + orderItem.getTotalPrice());
		order.setTotalItems(order.getTotalItems() + 1);
		assertEquals("Successfully added the cart item!", true, orderItemDAO.add(orderItem));

	}



}
