package com.niit.EshoppingBackend1.dao;

import java.util.List;

import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.CartItem;

public interface CartItemDAO {

	public boolean add(CartItem cartItem);

	public boolean update(CartItem cartItem);

	//public boolean delete(CartItem cartItem);

	public List<CartItem> list();

	public CartItem get(int id);
	
	void delete(int id);

}
