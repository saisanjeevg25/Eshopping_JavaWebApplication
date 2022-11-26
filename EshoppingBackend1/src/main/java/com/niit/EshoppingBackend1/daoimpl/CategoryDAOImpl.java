package com.niit.EshoppingBackend1.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.CategoryDAO;
import com.niit.EshoppingBackend1.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public List<Category> list() {
		
		String selectActiveCategory = "FROM Category WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		
		query.setParameter("active", true);
		return query.getResultList();
	}

    // for getting a single category
	public Category get(int id) {
		// TODO Auto-generated method stub

		return sessionFactory.getCurrentSession().get(Category.class,Integer.valueOf(id));
	}
	public boolean add(Category category) {
	
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().save(category);
		    return true;	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}
      //updating a single category
	public boolean update(Category category) {
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().update(category);
			 return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			 return false;
			
		}
	}



	/*public boolean delete(Category category) {
		 
		category.setActive(false);
		
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().delete(category);
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}*/

	public void delete(int id) {
     
		Category category = (Category) sessionFactory.getCurrentSession().load(Category.class, new Integer(id));
		if (category != null) {
			sessionFactory.getCurrentSession().delete(category);
		}
	}

}
