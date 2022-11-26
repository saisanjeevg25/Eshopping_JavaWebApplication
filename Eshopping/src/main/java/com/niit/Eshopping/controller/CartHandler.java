package com.niit.Eshopping.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.EshoppingBackend1.dao.AddressDAO;
import com.niit.EshoppingBackend1.dao.CartDAO;
import com.niit.EshoppingBackend1.dao.CartItemDAO;
import com.niit.EshoppingBackend1.dao.OrderDAO;
import com.niit.EshoppingBackend1.dao.OrderItemDAO;
import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dto.Address;
import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.CartItem;
import com.niit.EshoppingBackend1.dto.OrderItem;
import com.niit.EshoppingBackend1.dto.Orders;
import com.niit.EshoppingBackend1.dto.User;

@Component
public class CartHandler {

	@Autowired
	UserDAO userDAO;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	AddressDAO addressDAO;
	
	@Autowired
	CartItemDAO cartItemDAO;
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	OrderItemDAO orderItemDAO;

	public CartModel initFlow() {
		
		CartModel cartModel = new CartModel();
		
		Principal prnc = request.getUserPrincipal();
		System.out.println("P User............... "+ prnc);
		User user = userDAO.getUserByUsername(prnc.getName());
		cartModel.setUser(user);
		cartModel.setCart(user.getCart());
		cartModel.setCartItemList((user.getCart()).getCartItem());
		Address address=addressDAO.getAddressByUser(user);
		System.out.println("Address\t:"+address);
		cartModel.setAddress(address);
		return cartModel;
	}

	public void saveNewShippingAddress(CartModel cartModel, Address address) {
		address.setUser(cartModel.getUser());
		addressDAO.add(address);
		cartModel.setAddress(address);

	}
	
	public void setShippingAddress(CartModel checkoutModel)
	{
		//System.out.println("shipping address id"+addressid);

		//Address address=addressDAO.get(checkoutModel.getAddressid());
		//checkoutModel.setAddress(address);
		User user=checkoutModel.getUser();
		Address address=addressDAO.getAddressByUser(user);
		checkoutModel.setAddress(address);
		
		System.out.println("Shipping Address");
		System.out.println(checkoutModel.getAddressid());
	}
	
	public String saveOrder(CartModel cartModel) {
		Orders order = new Orders();
		User user=cartModel.getUser();
		order.setUser(cartModel.getUser());
		order.setAddress(cartModel.getAddress());
		order.setTotalItems(cartModel.getCart().getCartItemsCount());
		order.setGrandTotal(cartModel.getCart().getGrandTotal());
		
		Set<Orders> orderslist=new HashSet<>();
		Set<CartItem> cartItemList = cartModel.getCartItemList();
		
		List<OrderItem> orderItemList=new ArrayList<>();	

		for (CartItem item : cartItemList) {
			OrderItem orderItem = new OrderItem();
			orderItem.setProduct(item.getProduct());
			orderItem.setQuantity(item.getQuantity());
			orderItem.setTotalPrice(item.getTotalPrice());
			orderItem.setOrder(order);
			orderItemList.add(orderItem);
		}
		order.setOrderItems(orderItemList);
		orderslist.add(order);
		user.setOrder(orderslist);
		orderDAO.add(order);
		
		Cart cart=cartModel.getCart();
		cart.setCartItemsCount(0);
		cart.setGrandTotal(0);
		cartDAO.update(cart);
		
		cartItemDAO.delete(cart.getId());
		
	return "success";
	}

}
