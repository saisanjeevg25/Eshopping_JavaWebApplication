package com.niit.EshoppingBackend1.test;

import static org.junit.Assert.assertEquals;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Category;
import com.niit.EshoppingBackend1.dto.User;


public class UserTestCase {
private static AnnotationConfigApplicationContext context;
	
	private static UserDAO userDAO;
	
	private User user;
	
	@BeforeClass
	public static void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.EshoppingBackend1");
		context.refresh();
		
		userDAO = (UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void testAddUser()
	{
		user= new User();
		user.setUsername("p");
		user.setPassword("p");
		user.setName("pri");
		user.setEmail("priya@kk.com");
		user.setPhone("9674594805");
		user.setRole("customer");
        assertEquals("Sccussfully added a user inside the table",true,userDAO.add(user));

	}
	/*
	@Test
	public void testGetUser()
	{
		user= userDAO.get("xxx1");
		assertEquals("Sccussfully fetched a single user from the table","xyz",user.getName());
	}*/
	
	/*@Test
	public void testUpdateUser()
	{
		user= userDAO.get("yyy1");
	    user.setEmail("jannathavan@kk.com");
		assertEquals("Sccussfully updated single user into the table",true,userDAO.update(user));
	}*/
	
	/*@Test
	public void testDeleteUser()
	{
		user= userDAO.get("xxx1");
	   
		assertEquals("Sccussfully deleted single user from the table",true,userDAO.delete(user));
	}*/
	/*@Test
	public void testListUser()
	{
		 	   
		assertEquals("Sccussfully fetched the list of user from the table",6,userDAO.list().size());
	}*/
	
/*	@Test
	public void testCRUDUser()
	{
		//add operation
		user= new User();
		user.setUsername("kk30");
		user.setPassword("kkk123");
		user.setName("kala");
		user.setEmail("kala@kk.com");
		user.setPhone("9673594805");
		//user.setRole("customer");
        assertEquals("Sccussfully added a user inside the table",true,userDAO.add(user));
		
        user= new User();
		user.setUsername("priya30");
		user.setPassword("priya123");
		user.setName("priya");
		user.setEmail("priya@kk.com");
		user.setPhone("9677594805");
		//user.setRole("supplier");
        assertEquals("Sccussfully added a user inside the table",true,userDAO.add(user));
        
        user= new User();
		user.setUsername("sp30");
		user.setPassword("sp123");
		user.setName("gem");
		user.setEmail("spgem@kk.com");
		user.setPhone("9677694805");
		//user.setRole("customer");
        assertEquals("Sccussfully added a user inside the table",true,userDAO.add(user));
		
        user= new User();
		user.setUsername("xxx30");
		user.setPassword("xxx123");
		user.setName("xyz");
		user.setEmail("xxx@kk.com");
		user.setPhone("9687694805");
		//user.setRole("customer");
        assertEquals("Sccussfully added a user inside the table",true,userDAO.add(user));
		
        
        //fecting and updating the category
        user= userDAO.get(1);
		assertEquals("Sccussfully fetched a single user from the table","shobana",user.getName());
		
		//delete the category
		user= userDAO.get(7);
		   
		assertEquals("Sccussfully deleted single user from the table",true,userDAO.delete(user));
		
		// fetching the list of categories
		assertEquals("Sccussfully fetched the list of user from the table",3,userDAO.list().size());
        
	}*/
	
}
