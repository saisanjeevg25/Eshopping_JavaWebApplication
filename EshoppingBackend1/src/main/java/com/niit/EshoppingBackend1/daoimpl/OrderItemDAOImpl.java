package com.niit.EshoppingBackend1.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dao.OrderItemDAO;
import com.niit.EshoppingBackend1.dto.OrderItem;

@Repository("orderItemDAO")
@Transactional
public class OrderItemDAOImpl implements OrderItemDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public OrderItem get(int id) {
		return sessionFactory.getCurrentSession().get(OrderItem.class, Integer.valueOf(id));

	}

	public List<OrderItem> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM OrderItem", OrderItem.class).getResultList();

	}

	public boolean add(OrderItem orderItem) {
		try {
			
			sessionFactory.getCurrentSession().persist(orderItem);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public boolean update(OrderItem orderItem) {
		try {
			
			sessionFactory.getCurrentSession().update(orderItem);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public void delete(int id) {
		OrderItem orderItem = (OrderItem) sessionFactory.getCurrentSession().load(OrderItem.class, new Integer(id));
		if (orderItem != null) {
			sessionFactory.getCurrentSession().delete(orderItem);
		}

		
	}

}
