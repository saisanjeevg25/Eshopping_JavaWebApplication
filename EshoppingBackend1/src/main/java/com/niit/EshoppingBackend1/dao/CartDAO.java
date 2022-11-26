package com.niit.EshoppingBackend1.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.EshoppingBackend1.dto.Cart;

public interface CartDAO {

	 boolean add(Cart cart);

	 boolean update(Cart cart);

	//public boolean delete(Cart cart);
	void delete(int id);


	 List<Cart> list();

	 Cart get(int id);
	
	
}
