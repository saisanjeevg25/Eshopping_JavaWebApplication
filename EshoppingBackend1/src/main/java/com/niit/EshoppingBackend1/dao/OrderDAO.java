package com.niit.EshoppingBackend1.dao;

import java.util.List;

import com.niit.EshoppingBackend1.dto.Orders;

public interface OrderDAO {
	
	Orders get(int id);
	List<Orders> list();
	boolean add(Orders order);
	boolean update(Orders order);
	void delete(int id);
	
	

}
