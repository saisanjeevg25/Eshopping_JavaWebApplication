package com.niit.Eshopping.controller;

import java.io.Serializable;

import org.springframework.stereotype.Component;

import com.niit.EshoppingBackend1.dto.Address;
import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.User;

@Component
public class RegisterModel implements Serializable {
	
	
	private static final long serialVersionUID = -1L;
	
	private User user;
	
	private Address billingAddress;
	
	private Cart cart;
	
	
	public RegisterModel(){
		this.user=new User();
		this.billingAddress= new Address();
		
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
	public Address getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(Address billingAddress) {
		this.billingAddress = billingAddress;
	}
	
}
