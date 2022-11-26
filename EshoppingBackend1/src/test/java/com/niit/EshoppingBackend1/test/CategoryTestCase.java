package com.niit.EshoppingBackend1.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.EshoppingBackend1.dao.CategoryDAO;
import com.niit.EshoppingBackend1.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.EshoppingBackend1");
		context.refresh();
		
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
/*	@Test
	public void testAddCategory()
	{
		category= new Category();
		category.setName("Mobile1");
		category.setDescription(" Smart phones with high end features");
		category.setImageURL("m16.jpg");
		
        assertEquals("Sccussfully added a category inside the table",true,categoryDAO.add(category));
        
		
	}*/
	
	/*@Test
	public void testGetCategory()
	{
		category= categoryDAO.get(5);
		assertEquals("Sccussfully fetched a single category from the table","Tablet",category.getName());
	}*/
	
	/*@Test
	public void testUpdateCategory()
	{
		category= categoryDAO.get(3);
	    category.setName("Lap");
		assertEquals("Sccussfully updated single category into the table",true,categoryDAO.update(category));
	}*/
	
	/*@Test
	public void testDeleteCategory()
	{
		category= categoryDAO.get(2);
	   
		assertEquals("Sccussfully deleted single category from the table",true,categoryDAO.delete(category));
	}*/
	
	/*@Test
	public void testListCategory()
	{
		 	   
		assertEquals("Sccussfully fetched the list of category from the table",3,categoryDAO.list().size());
	}*/
	
	@Test
	public void testCRUDCategory()
	{
		//add operation
		category= new Category();
		category.setName("Mobile");
		category.setDescription(" Smart phones with high end features");
		category.setImageURL("Cim1.jpg");
		
        assertEquals("Sccussfully added a category inside the table",true,categoryDAO.add(category));
        
        category= new Category();
		category.setName("Television");
		category.setDescription(" Television with high end features");
		category.setImageURL("Cim2.jpg");
		
       assertEquals("Sccussfully added a category inside the table",true,categoryDAO.add(category));
       /* //fecting and updating the category
        category= categoryDAO.get(2);
	    category.setName("TV");
		assertEquals("Sccussfully updated single category into the table",true,categoryDAO.update(category));
		*/
		//delete the category
		
		//assertEquals("Sccussfully deleted single category from the table",true,categoryDAO.delete(97));
		
		// fetching the list of categories
		assertEquals("Sccussfully fetched the list of category from the table",2,categoryDAO.list().size());
        
	}
	
	
}
