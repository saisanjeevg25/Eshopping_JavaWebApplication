package com.niit.EshoppingBackend1.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.CartItemDAO;
import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.CartItem;
@Repository("cartItemDAO")
@Transactional
public class CartItemDAOImpl implements CartItemDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean add(CartItem cartItem) {
		try{
			//add the cart to the database table
			sessionFactory.getCurrentSession().save(cartItem);
		    return true;	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}

	public boolean update(CartItem cartItem) {
		try{
			//add the cart to the database table
			sessionFactory.getCurrentSession().update(cartItem);
			 return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			 return false;
			
		}
	}

	/*public boolean delete(CartItem cartItem) {
		try{
			//add the cart to the database table
			sessionFactory.getCurrentSession().delete(cartItem);
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}*/

	/*public List<CartItem> list(int id) {
		String selectCartItemId = "FROM CartItem WHERE id:id";
	     
		Query query = sessionFactory.getCurrentSession().createQuery(selectCartItemId);
		
		query.setParameter("id", id);
		return query.getResultList();
	}*/

	public CartItem get(int id) {
		return sessionFactory.getCurrentSession().get(CartItem.class,Integer.valueOf(id));
	}

	public List<CartItem> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM CartItem", CartItem.class).getResultList();

	}

	public void delete(int id) {
		/*CartItem cartItem=	(CartItem) sessionFactory.getCurrentSession().load(CartItem.class, new Integer(id));
		if (cartItem!=null)
		{
			sessionFactory.getCurrentSession().delete(cartItem);
		}*/
		Query q=sessionFactory.getCurrentSession().createQuery("Delete from CartItem where id=:id");
		q.setParameter("id", id);
		q.executeUpdate();
		


	}

}
