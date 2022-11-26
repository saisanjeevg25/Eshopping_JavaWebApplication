package com.niit.Eshopping.controller;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

import com.niit.EshoppingBackend1.dto.Address;
import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.CartItem;
import com.niit.EshoppingBackend1.dto.OrderItem;
import com.niit.EshoppingBackend1.dto.Orders;
import com.niit.EshoppingBackend1.dto.User;

@Component
public class CartModel implements Serializable
 {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int addressid;
	private Cart cart;
	
	private OrderItem orderItem;
	private Orders order;
	private User user;
	private Address address;
	
	private Set<CartItem> cartItemList;
	
	 public CartModel() {
		 
		cart=new Cart();
		user=new User();
		address=new Address();
		
		orderItem=new OrderItem();
		order=new Orders();
		cartItemList=new HashSet<CartItem>();
	}
	 
	public int getAddressid() {
		return addressid;
	}
	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public OrderItem getOrderItem() {
		return orderItem;
	}
	public void setOrderItem(OrderItem orderItem) {
		this.orderItem = orderItem;
	}
	public Orders getOrder() {
		return order;
	}
	public void setOrder(Orders order) {
		this.order = order;
	}
	public Set<CartItem> getCartItemList() {
		return cartItemList;
	}
	public void setCartItemList(Set<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}

}
