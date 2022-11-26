package com.niit.EshoppingBackend1.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Address;
import com.niit.EshoppingBackend1.dto.User;



@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {


	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean add(User user) {
		try{
			//add the category to the database table
			System.out.println(user.toString());
			sessionFactory.getCurrentSession().persist(user);
		    return true;	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}

	public boolean update(User user) {
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().update(user);
			 return true;
		}
	catch(Exception ex)
	{
		ex.printStackTrace();
		 return false;
		
	}
	}

	public boolean delete(User user) {
          // user.isActive();
		
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().delete(user);
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}

	public List<User> list() {
     String selectActiveUser = "FROM User WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveUser);
		
		query.setParameter("active", true);
		return query.getResultList();
	}

	public User getUserByUsername(String username) {
		
		/*String selectUser="FROM User WHERE username = :username";
		
		return sessionFactory.getCurrentSession().createQuery(selectUser, User.class).setParameter("username", username).getSingleResult();
		*/
		return	(User) sessionFactory.getCurrentSession().createQuery("FROM User WHERE username =:username").setParameter("username", username).getSingleResult();

		
	}
	public boolean addUserAddress(Address address)
	{   
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().persist(address);
		    return true;	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
		
	}

	public User get(int id) {
		return sessionFactory.getCurrentSession().get(User.class, Integer.valueOf(id));
	}

}
