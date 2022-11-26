package com.niit.EshoppingBackend1.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.CartDAO;
import com.niit.EshoppingBackend1.dto.Cart;

@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean add(Cart cart) {
		try{
			//add the cart to the database table
			sessionFactory.getCurrentSession().save(cart);
		    return true;	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}

	public boolean update(Cart cart) {
		try{
			//add the cart to the database table
			sessionFactory.getCurrentSession().update(cart);
			 return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			 return false;
			
		}
	}

	/*public boolean delete(Cart cart) {
	
		try{
			//add the cart to the database table
			sessionFactory.getCurrentSession().delete(cart);
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}*/

	/*public List<Cart> list(int id) {
     String selectCartId = "FROM Category WHERE id:id";
     
		Query query = sessionFactory.getCurrentSession().createQuery(selectCartId);
		
		query.setParameter("id", id);
		return query.getResultList();
	}*/

	public Cart get(int id) {
		return sessionFactory.getCurrentSession().get(Cart.class,Integer.valueOf(id));

}

	public void delete(int id) {
		Cart cart = (Cart) sessionFactory.getCurrentSession().load(Cart.class, new Integer(id));
		if (cart != null) {
			sessionFactory.getCurrentSession().delete(cart);
		}
	}



	public List<Cart> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM Cart", Cart.class).getResultList();

	}
}