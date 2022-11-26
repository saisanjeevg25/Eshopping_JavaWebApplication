package com.niit.EshoppingBackend1.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.ProductDAO;
import com.niit.EshoppingBackend1.dto.Product;


@Repository("productDAO")
@Transactional

public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	

	public List<Product> listProduct() {
    /** String selectActiveProduct = "FROM Product WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProduct);
		
		query.setParameter("active", true);
		return query.getResultList();*/
		return sessionFactory.getCurrentSession().createQuery("FROM Product", Product.class).getResultList();
	}

	public Product getById(int id) {
		return sessionFactory.getCurrentSession().get(Product.class,Integer.valueOf(id));
	}
	public boolean add(Product product){
		
		try{
			//add the product to the database table
			sessionFactory.getCurrentSession().save(product);
		    return true;	
		}
		catch(Exception ex)
		{
			System.out.println("exception :"+ex);
			ex.printStackTrace();
			return false;
			
		}
	
	}
	
	public boolean update(Product product) {
		try{
			//add the product to the database table
			sessionFactory.getCurrentSession().update(product);
			 return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			 return false;
			
		}
	}

	/*public boolean delete(Product product) {
		product.setActive(false);
		
		try{
			//add the product to the database table
			sessionFactory.getCurrentSession().delete(product);
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}*/

	public void delete(int id) {
		Product product = (Product) sessionFactory.getCurrentSession().load(Product.class, new Integer(id));
		if (product != null) {
			sessionFactory.getCurrentSession().delete(product);
		}
		
	}

	public Product getProduct(int id) {
		return sessionFactory.getCurrentSession().get(Product.class, id);
		}
	}
	
