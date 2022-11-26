package com.niit.EshoppingBackend1.dao;

import java.util.List;

import com.niit.EshoppingBackend1.dto.OrderItem;

public interface OrderItemDAO {
	
	OrderItem get(int id);
	List<OrderItem> list();
	boolean add(OrderItem orderItem);
	boolean update(OrderItem orderItem);
	void delete(int id);
	
}
