package com.niit.EshoppingBackend1.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.OrderDAO;
import com.niit.EshoppingBackend1.dto.Orders;

@Repository("orderDAO")
@Transactional
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Orders get(int id) {
		return sessionFactory.getCurrentSession().get(Orders.class, Integer.valueOf(id));
	}

	public List<Orders> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM Order", Orders.class).getResultList();

	}

	public boolean add(Orders order) {
		try {
			
			sessionFactory.getCurrentSession().save(order);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public boolean update(Orders order) {
		try {

			sessionFactory.getCurrentSession().update(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public void delete(int id) {
		Orders order = (Orders) sessionFactory.getCurrentSession().load(Orders.class, new Integer(id));
		if (order != null) {
			sessionFactory.getCurrentSession().delete(order);
		}

		
	}

	
	
}
