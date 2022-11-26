package com.niit.EshoppingBackend1.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.AddressDAO;
import com.niit.EshoppingBackend1.dto.Address;
import com.niit.EshoppingBackend1.dto.User;

@Repository("addressDAO")
@Transactional
@EnableTransactionManagement
public class AddressDAOImpl implements AddressDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean add(Address address) {
		try{
			//add the address to the database table
			sessionFactory.getCurrentSession().save(address);
		    return true;	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
			
		}
	}

	public boolean update(Address address) {
		try{
			//update the address to the database table
			sessionFactory.getCurrentSession().update(address);
			 return true;
		}
	catch(Exception ex)
	{
		ex.printStackTrace();
		 return false;
		
	}
	}

	/*public String delete(int id) {
		 
			
			try{
				//add the category to the database table
				sessionFactory.getCurrentSession().delete(id);
				return "updated";
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
				return "Error"+ ex;
				
			}
	}*/
	

	public List<Address> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM Address", Address.class).getResultList();
	}

	public Address get(int addressId) {
		return sessionFactory.getCurrentSession().get(Address.class, Integer.valueOf(addressId));

	}

	public boolean delete(Address address) {
		try {
			//deleting a address from database
			sessionFactory.getCurrentSession().delete(address);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public Address getAddressByUser(User user) {
		return (Address)sessionFactory.getCurrentSession().createQuery("from Address where user=:user").setParameter("user",user).getResultList().get(0);

	}

}
