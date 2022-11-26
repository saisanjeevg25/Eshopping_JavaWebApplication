package com.niit.EshoppingBackend1.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EshoppingBackend1.dao.AddressDAO;
import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Address;

public class AddressTestCase {
	
	private static AnnotationConfigApplicationContext context;

	private static AddressDAO addressDAO;
	
	private static UserDAO userDAO;

	private Address address;

	@BeforeClass
	public static void init() {
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.EshoppingBackend1");
		context.refresh();
		addressDAO = (AddressDAO) context.getBean("addressDAO");
		userDAO = (UserDAO) context.getBean("userDAO");
	}
	@Test
	public void testAddress() {
		address = new Address();

		address.setAddressLine1("No:8, Rajiv Gandhi nagar");
		address.setAddressLine2("Villivakkam");
		address.setCity("chennai");
		address.setState("Tamilnadu");
		address.setCountry("India");
		
		address.setUser(userDAO.get(1));
		

		assertEquals("Successfully added a category inside a table", true, addressDAO.add(address));

	}


}
