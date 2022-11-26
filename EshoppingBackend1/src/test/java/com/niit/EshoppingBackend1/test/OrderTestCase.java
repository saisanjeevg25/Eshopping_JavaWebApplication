package com.niit.EshoppingBackend1.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EshoppingBackend1.dao.OrderDAO;
import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Orders;

public class OrderTestCase {

	@Autowired
	private static AnnotationConfigApplicationContext context;
	private static OrderDAO orderDAO;
	private Orders order;
	private static UserDAO userDAO;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.EshoppingBackend1");
		context.refresh();
		orderDAO = (OrderDAO)context.getBean("orderDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
	}

	@Test
	public void testAddOrder() {
		order = new Orders();
		//order.setId(1);
		order.setTotalItems(2);
		order.setUser(userDAO.get(1));
		order.setGrandTotal(1000);

		assertEquals("Successfully added a order inside a table", true, orderDAO.add(order));
	}

}
